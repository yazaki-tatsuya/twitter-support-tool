package twitterapi_functions;

import twitter.CommonUtil;
import twitter4j.IDs;
import twitter4j.Twitter;
import twitter4j.TwitterException;
import twitter4j.User;
import twitterapi_functions.FollowerInfo;
import twitterapi_functions.FollowerInfoAjaxNextBatch;
import utils.RoutingTable;

public class FollowerInfoAjax {

	//# [共通]キー認証・Twitterクラスのインスタンス生成
	static CommonUtil cu = new CommonUtil();
	static Twitter twitter = cu.getTwitterV2(RoutingTable.authkey_max);
	
	//# (E)指定したユーザIDの全フォロワー情報を一括取得	
	public FollowerInfoAjaxNextBatch getNextFollowersSet(String UserId,long cursor,int i1) {
	    System.out.println("# ======== [Function] check args (1)cursor="+cursor+" (2)i1="+i1);
		//# フォロワー情報格納用（中間）
        long[] ids = new long[FollowerInfo.getFollowerCount(UserId)];
        //# フォロワー情報格納用（最終）
        long[] final_ids = null;
        //# 最終返却結果の格納オブジェクトをインスタンス化
        FollowerInfoAjaxNextBatch finb = new FollowerInfoAjaxNextBatch();
		try {
			//# ページループ変数
			int counter = 0;
			//# 累積取得件数
			int place = 0;
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
					followerIDs = twitter.getFollowersIDs(user.getScreenName(),cursor,25);
					long[] temp_ids = followerIDs.getIDs();
					//# 5000件を中間配列(ids)にコピー
					System.arraycopy(temp_ids, 0, ids, place, temp_ids.length);
					//# 累積取得件数
					place = place + temp_ids.length;
					System.out.println("# ======== [Function] page="+counter+" @@@ counter="+place);
					//# 次ページにインクリメント
					counter++;
				} while((cursor = followerIDs.getNextCursor())!=0 && counter<4);
			}
			//# 中間配列は余分に確保しているので、最終配列適切な長さにして再度格納
			final_ids = new long[place];
			System.arraycopy(ids, 0, final_ids, 0, place);
			//# 最終オブジェクトに値をセット
			finb.setNextIds(final_ids);
			finb.setNextCursor(followerIDs.getNextCursor());
		} catch (TwitterException te) {
			te.printStackTrace();
			System.out.println("# ======== [Function] フォロワー一覧取得エラー: " + te.getMessage());
		}
		return finb;
	}
}
