package twitterapi_functions;

import twitter.CommonUtil;
import twitter4j.IDs;
import twitter4j.Twitter;
import twitter4j.TwitterException;
import twitter4j.TwitterFactory;
import twitter4j.User;
import twitter4j.conf.ConfigurationBuilder;

public class FollowerInfo {
	
	//# [共通]キー認証・Twitterクラスのインスタンス生成
	CommonUtil cu = new CommonUtil();
	Twitter twitter = cu.getTwitter();
	
	//# 指定したユーザIDの全フォロワー情報を一括取得（性能面に問題あり）
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
			System.out.println("### フォロワー一覧取得エラー: " + te.getMessage());
		}
		return followers;		
	}

	//# 全フォロワーのIDをlong[]に格納
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
			}
		} catch (TwitterException te) {
			te.printStackTrace();
			System.out.println("### フォロワー一覧取得エラー: " + te.getMessage());
		}
		return ids;		
	}
	
	
	//# 指定したIDのフォロワーを取得
	public User getNthFollowerInfo(long id) {
		//# フォロワーの格納用
		User follower = null;
		try {
			//# ③フォロワーの情報取得
			follower = twitter.showUser(id);
		} catch (TwitterException te) {
			te.printStackTrace();
			System.out.println("### フォロワー取得エラー: " + te.getMessage());
		}
		return follower;		
	}
}
