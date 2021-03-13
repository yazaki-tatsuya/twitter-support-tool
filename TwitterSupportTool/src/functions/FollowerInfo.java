package functions;

import twitter.CommonUtil;
import twitter4j.IDs;
import twitter4j.PagableResponseList;
import twitter4j.Twitter;
import twitter4j.TwitterException;
import twitter4j.User;
import utils.RoutingTable;

public class FollowerInfo {
	
	//# [共通]キー認証・Twitterクラスのインスタンス生成
	CommonUtil cu = new CommonUtil();
	Twitter twitter = cu.getTwitterV2(RoutingTable.authkey_max);
	
	//# (A-1)指定したユーザIDの全フォロワー情報を一括取得
	//# 【※使用禁止】showUserのループのため、性能面に問題あり	
	public User[] getAllFollowersInfo(String UserId) {

		//# フォロワーIDの格納用配列
		long[] ids = null;
		User[] followers = null;
		try {
			//# ①ユーザ情報の取得
			//# フォロワーの一覧を出したい対象のユーザ情報
			User user = twitter.showUser(UserId);
			int counter = 0;
			//# ②ユーザ情報が取得できた場合
			if (user.getStatus() != null) {

				//# ③フォロワーの一覧を取得
				//# 検索対象のユーザのフォロワーのID一覧を取得
				IDs followerIDs = twitter.getFollowersIDs(user.getScreenName(), -1);
				ids = followerIDs.getIDs();
				followers = new User[ids.length];
		    	//# 各フォロワーを１人ずつループ
		    	for(long id : ids) {
					followers[counter] = twitter.showUser(id);
		    		counter++;
		    	}
			}
		} catch (TwitterException te) {
			te.printStackTrace();
			System.out.println("# [FollowerInfo.getAllFollowersInfo] フォロワー一覧取得エラー: " + te.getMessage());
		}
		return followers;		
	}

	//# (A-2)指定したユーザIDの全フォロワー情報を一括取得
	//# [20210304]
	//# 　getFollowersIDs→showUserの流れではなくgetFollowersListで一回で取得
	//# [20210312]
	//# 　APIコールの度にKeyの空きチェック＆空きKeyへの割り振りを実施
	//#   (Twitterインスタンスを初回生成のみ→APIコールの都度生成に変更)
	//# [20210314]
	//# 　ハイブリッド式の実現のためroutingkeyを受け取りV2、V3に適宜振り分け
	public User[] getAllFollowersInfoV2(String UserId,String routingkey) {
		
		//# [共通]キー認証・Twitterクラスのインスタンス生成
		CommonUtil cu = new CommonUtil();
		
		//# フォロワーIDの格納用配列
		User[] users = new User[getFollowerCount(UserId)];
		PagableResponseList<User> temp_users;
		try {
			//# ページループ変数
			int pagecount = 0;
			int loopnum = 0;
			int followercount = getFollowerCount(UserId);
			//# カーソル 
            long cursor = -1L;
			//# ①ユーザ情報の取得
			//# フォロワーの一覧を出したい対象のユーザ情報
			User user = twitter.showUser(UserId);
			//# ②ユーザ情報が取得できた場合
			if (user.getStatus() != null) {
				//# ③フォロワーの一覧を取得
				do {
					//# Twitterインスタンス生成は元々はstatic定義のを使っていた
					//# 　→初回に使用したKeyNumberをずっと使い続けてしまう
					//# 　　→キーの切り替えを可能にするためdoWhile内に移動
					//# 　　　→更にV3で空きKeyに割り振る処理に改善←【取り下げ】
					//# [20210313]
					//#  getRemainingLimitV2の問題点として、毎回1つ目から空きを探すため
					//#  後半のKeyを使う時ほど空振りの無駄な空き確認が増える。
					//#  それを防ぐため「空き位置」の値を保持して持ちまわる←【取り下げ】
					//# [20210313]
					//#  【重要】
					//#  V3はgetRateLimitStatusを浪費してしまうためV3→V2へ戻します
					//#　加えて、以下の理由からもV3よりもV2の方が適切と考えました。
					//#　①V3はgetRateLimitStatusを「キー数×ページ数」(Max10/Key)消費する
					//#　　→浪費により、入り口チェックやRateLimitMonitorが作動しない危険がある
					//#　②V3は空きチェックを先頭から行う仕組みを修正するのは非常に複雑
					//#　　→「空き位置」の値を保持して持ちまわるためには、末尾→先頭に戻ったり煩雑な処理が伴う
					//#　③RateLimitは15分で回復する
					//#　④入り口チェックだけでも十分にLimitExceedを防げる
					//#　　→安全率を掛けてるので、getTwitterV2でランダムに割り振っても、余程の事が無い限りはLimitExceedにはならない
					//#  ⑤万が一、割り振りが偏って残０のKEYに割り振ったとしても、ビジー画面に遷移させればOK					
					//# ※上記理由からV3→V2へ戻す
					//# [20210314]
					//# 【重要】
					//# V3→V2に戻すも、やはりランダムに割り振る事で偏りが生じて
					//# 入り口チェックをパスしてもLimitExceedになるケースがあった
					//# その回避のために、V2(ランダム)とV3(空きチェック)を両方使った
					//# 「ハイブリッド方式」に変更する事にします。
					//Twitter twitter2 = cu.getTwitterV3(RoutingTable.authkey_max,RoutingTable.ep_getFollowersList);
					Twitter twitter2 = null;
					if(routingkey.equals("V3")) {
						twitter2 = cu.getTwitterV3(RoutingTable.authkey_max,RoutingTable.ep_getFollowersList);						
					}else {
						twitter2 = cu.getTwitterV2(RoutingTable.authkey_max);
					}

					//# 次のN件のフォロワーを取得
					temp_users = twitter2.getFollowersList(UserId,cursor,RoutingTable.unitpage_follow200);
					//# N件を最終Array(users)に追加
					for(User temp_user : temp_users) {
						users[loopnum] = temp_user;
						loopnum++;
						if(loopnum > (followercount-1)) {
							break;
						}
					}
					//# 次ページにインクリメント
					System.out.println("# [FollowerInfo.getAllFollowersInfoV2] Get NEXT 200 = pagecount:"+pagecount);
					pagecount++;					
				} while((cursor = temp_users.getNextCursor())!=0 && pagecount<RoutingTable.pagelimit_follow200);
			}
			//System.out.println("@@@@"+users.length);
		} catch (TwitterException te) {
			te.printStackTrace();
			System.out.println("# [FollowerInfo.getAllFollowersInfoV2] フォロワー一覧取得エラー: " + te.getMessage());
		}
		return users;		
	}

	//# (B-1)全フォロワーのIDをlong[]に格納
	//# 【※注意】cursor未使用のため５０００件の取得制限あり
	public long[] getAllFollowersId(String UserId) {
		//# フォロワーIDの格納用配列
		long[] ids = null;
		try {
			//# ①ユーザ情報の取得
			//# フォロワーの一覧を出したい対象のユーザ情報
			User user = twitter.showUser(UserId);
			//# ②ユーザ情報が取得できた場合
			if (user.getStatus() != null) {

				//# ③フォロワーの一覧を取得
				//# 検索対象のユーザのフォロワーのID一覧を取得
				IDs followerIDs = twitter.getFollowersIDs(user.getScreenName(), -1);
				ids = followerIDs.getIDs();
				System.out.println("# [FollowerInfo.getAllFollowersId] Get follower COUNT="+ids.length);
			}
		} catch (TwitterException te) {
			te.printStackTrace();
			System.out.println("# [FollowerInfo.getAllFollowersId] フォロワー一覧取得エラー: " + te.getMessage());
		}
		return ids;		
	}
	
	//# (B-2)全フォロワーのIDをlong[]に格納 （cursorあり版）
	//# [20210313]
	//# 　APIコールの度にKeyの空きチェック＆空きKeyへの割り振りを実施
	//#   (Twitterインスタンスを初回生成のみ→APIコールの都度生成に変更)
	public long[] getAllFollowersId_Full(String UserId) {
        //# フォロワー情報格納用（中間）
        long[] ids = new long[getFollowerCount(UserId)];
        //# フォロワー情報格納用（最終）
        long[] final_ids = null;
		try {
			//# ページループ変数
			int counter = 0;
			//# 累積取得件数
			int place = 0;
			//# カーソル（１ページ5000レコード） 
            long cursor = -1L;
            //# フォロワー情報格納用（一時格納）
    		IDs followerIDs = null;
    		
			//# ①ユーザ情報の取得
			//# フォロワーの一覧を出したい対象のユーザ情報
			User user = twitter.showUser(UserId);
			//# ②ユーザ情報が取得できた場合
			if (user.getStatus() != null) {
				//# ③繰り返しページを取得
				do {
					//# 次の5000件のフォロワーを取得
					//# [20210312]
					//# Twitterインスタンス生成は元々はstatic定義のを使っていた
					//# 　→初回に使用したKeyNumberをずっと使い続けてしまう
					//# 　　→キーの切り替えを可能にするためdoWhile内に移動
					//# 　　　→更にV3で空きKeyに割り振る処理に改善←【取り下げ】
					//# [20210313]
					//#  getRemainingLimitV2の問題点として、毎回1つ目から空きを探すため
					//#  後半のKeyを使う時ほど空振りの無駄な空き確認が増える。
					//#  それを防ぐため「空き位置」の値を保持して持ちまわる←【取り下げ】
					//# [20210313]
					//#  【重要】
					//#  V3はgetRateLimitStatusを浪費してしまうためV3→V2へ戻します
					//#　加えて、以下の理由からもV3よりもV2の方が適切と考えました。
					//#　①V3はgetRateLimitStatusを「キー数×ページ数」(Max10/Key)消費する
					//#　　→浪費により、入り口チェックやRateLimitMonitorが作動しない危険がある
					//#　②V3は空きチェックを先頭から行う仕組みを修正するのは非常に複雑
					//#　　→「空き位置」の値を保持して持ちまわるためには、末尾→先頭に戻ったり煩雑な処理が伴う
					//#　③RateLimitは15分で回復する
					//#　④入り口チェックだけでも十分にLimitExceedを防げる
					//#　　→安全率を掛けてるので、getTwitterV2でランダムに割り振っても、余程の事が無い限りはLimitExceedにはならない	
					//#  ⑤万が一、割り振りが偏って残０のKEYに割り振ったとしても、ビジー画面に遷移させればOK
					
					//# ※上記理由からV3→V2へ戻す
					//Twitter twitter2 = cu.getTwitterV3(RoutingTable.authkey_max,RoutingTable.ep_getFollowersIDs);
					Twitter twitter2 = cu.getTwitterV2(RoutingTable.authkey_max);
					followerIDs = twitter2.getFollowersIDs(user.getScreenName(),cursor);
					long[] temp_ids = followerIDs.getIDs();
					//# 5000件を中間配列(ids)にコピー
					System.arraycopy(temp_ids, 0, ids, place, temp_ids.length);
					//# 累積取得件数
					place = place + temp_ids.length;
					//System.out.println("# 0="+temp_ids[0]+" #4999"+temp_ids[4999]);
					//# 次ページにインクリメント
					counter++;
				} while((cursor = followerIDs.getNextCursor())!=0 && counter<RoutingTable.pagelimit_follow5000);
			}
			//# 中間配列は余分に確保しているので、最終配列適切な長さにして再度格納
			final_ids = new long[place];
			System.arraycopy(ids, 0, final_ids, 0, place);		
		} catch (TwitterException te) {
			te.printStackTrace();
			System.out.println("# [FollowerInfo.getAllFollowersId_Full] フォロワー一覧取得エラー: " + te.getMessage());
		}
		return final_ids;		
	}
	
	//# (C)指定したIDのフォロワーを取得（N番目取得用）
	public User getNthFollowerInfo(long id) {
		//# フォロワーの格納用
		User follower = null;
		try {
			//# ③フォロワーの情報取得
			follower = twitter.showUser(id);
		} catch (TwitterException te) {
			te.printStackTrace();
			System.out.println("# [FollowerInfo.getNthFollowerInfo] フォロワー取得エラー: " + te.getMessage());
		}
		return follower;		
	}
	
	//# (D)指定したIDのフォロワー数を取得
	public int getFollowerCount(String userid) {
		
		int follower_count = 0;
		try {
			//# フォロワーの一覧を出したい対象のユーザ情報
			User user = twitter.showUser(userid);	
			follower_count = user.getFollowersCount();
		} catch (TwitterException e) {
			e.printStackTrace();
		}
		System.out.println("# [FollowerInfo.getFollowerCount] フォロワー件数取得: " + follower_count);
		return follower_count;
	}
	
	//# (E)ScreenNameで指定したユーザが非公開か？をチェック
	public boolean userAvailableCheck(String userid) {
		
		boolean isAvailable = false;
		try {
			//# フォロワーの一覧を出したい対象のユーザ情報
			User user = twitter.showUser(userid);	
			if(user.getStatus() != null) {
				isAvailable = true;
			}
		} catch (TwitterException e) {
			e.printStackTrace();
		}
		System.out.println("# [FollowerInfo.userAvailableCheck] 公開か？フラグ: " + isAvailable);
		return isAvailable;
	}
}
