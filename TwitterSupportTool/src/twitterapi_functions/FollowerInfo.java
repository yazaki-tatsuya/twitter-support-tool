package twitterapi_functions;

import twitter.CommonUtil;
import twitter4j.IDs;
import twitter4j.PagableResponseList;
import twitter4j.Twitter;
import twitter4j.TwitterException;
import twitter4j.User;
import utils.RoutingTable;

public class FollowerInfo {
	
	//# [共通]キー認証・Twitterクラスのインスタンス生成
	static CommonUtil cu = new CommonUtil();
	static Twitter twitter = cu.getTwitterV2(RoutingTable.authkey_max);
	
	//# (A-1)指定したユーザIDの全フォロワー情報を一括取得
	//# 【※使用禁止】性能面に問題あり	
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
			System.out.println("# ======== [Function] フォロワー一覧取得エラー: " + te.getMessage());
		}
		return followers;		
	}

	//# (A-2)指定したユーザIDの全フォロワー情報を一括取得
	//# getFollowersIDs→showUserの流れではなく、getFollowersListで一回で取得
	public User[] getAllFollowersInfoV2(String UserId) {
		
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
					//# 次のN件のフォロワーを取得
					temp_users = twitter.getFollowersList(UserId,cursor,200);
					//# N件を最終Array(users)に追加
					for(User temp_user : temp_users) {
						users[loopnum] = temp_user;
						loopnum++;
						if(loopnum > (followercount-1)) {
							break;
						}
					}
					//# 次ページにインクリメント
					System.out.println("# ======== [Function] Get next 200 follower : pagecount : "+pagecount+" @@@RateLimit="+temp_users.getRateLimitStatus());
					pagecount++;					
				} while((cursor = temp_users.getNextCursor())!=0 && pagecount<RoutingTable.pagelimit_follow200);
			}
			//System.out.println("@@@@"+users.length);
		} catch (TwitterException te) {
			te.printStackTrace();
			System.out.println("# ======== [Function] フォロワー一覧取得エラー: " + te.getMessage());
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
				System.out.println("# ======== [Function] get follower count : "+ids.length+" @@@RateLimit="+followerIDs.getRateLimitStatus());
			}
		} catch (TwitterException te) {
			te.printStackTrace();
			System.out.println("# ======== [Function] フォロワー一覧取得エラー: " + te.getMessage());
		}
		return ids;		
	}
	
	//# (B-2)全フォロワーのIDをlong[]に格納 （cursorあり版）
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
					followerIDs = twitter.getFollowersIDs(user.getScreenName(),cursor);
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
			System.out.println("# ======== [Function] フォロワー一覧取得エラー: " + te.getMessage());
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
			System.out.println("# ======== [Function] フォロワー取得エラー: " + te.getMessage());
		}
		return follower;		
	}
	
	//# (D)指定したIDのフォロワー数を取得
	public static int getFollowerCount(String userid) {
		
		int follower_count = 0;
		try {
			//# フォロワーの一覧を出したい対象のユーザ情報
			User user = twitter.showUser(userid);	
			follower_count = user.getFollowersCount();
		} catch (TwitterException e) {
			e.printStackTrace();
		}
		System.out.println("# ======== [Function] フォロワー件数取得: " + follower_count);
		return follower_count;
	}
}
