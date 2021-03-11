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
	//# getFollowersIDs→showUserの流れではなく、getFollowersListで一回で取得
	public User[] getAllFollowingInfo(String UserId) {
		
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
					temp_users = twitter.getFriendsList(UserId,cursor,200);
					//# N件を最終Array(users)に追加
					System.out.println("+++:"+temp_users.size());
					for(User temp_user : temp_users) {
						users[loopnum] = temp_user;
						System.out.println("+++++ "+loopnum);
						loopnum++;						
						if(loopnum > (followingcount-1)) {
							System.out.println("************** Break");
							break;
						}
						//System.out.println("========"+loopnum);
					}
					//# 次ページにインクリメント
					pagecount++;
					System.out.println("===pg="+pagecount+" next="+twitter.getFriendsList(UserId,temp_users.getNextCursor()).size());
				} while((cursor = temp_users.getNextCursor())!=0 && pagecount<RoutingTable.pagelimit_following200);
			}
			System.out.println("@@@@"+users.length);
		} catch (TwitterException te) {
			te.printStackTrace();
			System.out.println("### フォロワー一覧取得エラー: " + te.getMessage());
		}
		return users;		
	}
	
	//# (D)指定したIDのフォロワー数を取得
	public static int getFollowingCount(String userid) {
		
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
}
