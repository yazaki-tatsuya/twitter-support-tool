package functions;

import twitter.CommonUtil;
import twitter4j.PagableResponseList;
import twitter4j.Twitter;
import twitter4j.TwitterException;
import twitter4j.User;
import utils.RoutingTable;

public class FollowingInfo {

	//# [共通]キー認証・Twitterクラスのインスタンス生成
	static CommonUtil cu = new CommonUtil();
	static Twitter twitter = cu.getTwitterV2(RoutingTable.authkey_max);
	
	//# (A-2)指定したユーザIDの全フォロワー情報を一括取得
	//# [20210304]
	//# 　getFollowersIDs→showUserの流れではなくgetFollowersListで一回で取得
	//# [20210312]
	//# 　APIコールの度にKeyの空きチェック＆空きKeyへの割り振りを実施
	//#   (Twitterインスタンスを初回生成のみ→APIコールの都度生成に変更)
	//# [20210314]
	//# 　ハイブリッド式の実現のためroutingkeyを受け取りV2、V3に適宜振り分け
	public User[] getAllFollowingInfo(String UserId,String routingkey) {

		//# [共通]キー認証・Twitterクラスのインスタンス生成
		CommonUtil cu = new CommonUtil();
		
		//# フォロワーIDの格納用配列
		User[] users = new User[getFollowingCount(UserId)];
		PagableResponseList<User> temp_users;
		try {
			//# ページループ変数
			int pagecount = 0;
			int loopnum = 0;
			int followingcount = getFollowingCount(UserId);
			//# カーソル 
            long cursor = -1L;
			//# ①ユーザ情報の取得
			//# フォローしてる人の一覧を出したい対象のユーザ情報
			User user = twitter.showUser(UserId);
			//# ②ユーザ情報が取得できた場合
			if (user.getStatus() != null) {
				//# ③フォロしている人一覧を取得
				do {
					//# 次のN件のフォローを取得
					//# Twitterインスタンス生成は元々はstatic定義のを使っていた
					//# 　→初回に使用したKeyNumberをずっと使い続けてしまう
					//# 　　→キーの切り替えを可能にするためdoWhile内に移動
					//# 　　　→更にV3で空きKeyに割り振る処理に改善
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
					//Twitter twitter2 = cu.getTwitterV3(RoutingTable.authkey_max,RoutingTable.ep_getFriendsList);
					//Twitter twitter2 = cu.getTwitterV2(RoutingTable.authkey_max);
					
					Twitter twitter2 = null;
					if(routingkey.equals("V3")) {
						twitter2 = cu.getTwitterV3(RoutingTable.authkey_max,RoutingTable.ep_getFriendsList);						
					}else {
						twitter2 = cu.getTwitterV2(RoutingTable.authkey_max);
					}				
					
					//# 次のN件のフォロワーを取得
					temp_users = twitter2.getFriendsList(UserId,cursor,RoutingTable.unitpage_following200);

					//# N件を最終Array(users)に追加
					System.out.println("# [FollowingInfo.getAllFollowingInfo] SIZE of page#"+(pagecount+1)+" size="+temp_users.size());
					for(User temp_user : temp_users) {
						users[loopnum] = temp_user;
						//System.out.println("# +++++ "+loopnum);
						loopnum++;						
						if(loopnum > (followingcount-1)) {
							System.out.println("# [FollowingInfo.getAllFollowingInfo] ******** Reached Final Follow BREAK ********");
							break;
						}
						//System.out.println("========"+loopnum);
					}
					//# 次ページにインクリメント
					pagecount++;
				} while((cursor = temp_users.getNextCursor())!=0 && pagecount<RoutingTable.pagelimit_following200);
			}
			System.out.println("# [FollowingInfo.getAllFollowingInfo] Final FOLLOWER LENGTH="+users.length);
		} catch (TwitterException te) {
			te.printStackTrace();
			System.out.println("# [FollowingInfo.getAllFollowingInfo] フォロー者一覧取得エラー: " + te.getMessage());
		}
		return users;		
	}
	
	//# (D)指定したIDのフォロワー数を取得
	public int getFollowingCount(String userid) {
		
		int following_count = 0;
		try {
			//# フォロワーの一覧を出したい対象のユーザ情報
			User user = twitter.showUser(userid);	
			following_count = user.getFriendsCount();
		} catch (TwitterException e) {
			e.printStackTrace();
		}
		//System.out.println("### 1_GetFollowingCount"+following_count);
		return following_count;
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
