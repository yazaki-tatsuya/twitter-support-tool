package functions;

import java.util.List;

import twitter.CommonUtil;
import twitter4j.Status;
import twitter4j.Twitter;
import twitter4j.TwitterException;
import utils.RoutingTable;

public class RetweeterInfo {

	//# [共通]キー認証・Twitterクラスのインスタンス生成
	static CommonUtil cu = new CommonUtil();
	static Twitter twitter = cu.getTwitterV2(RoutingTable.authkey_max);
	
	//# (A)指定したツイートIDの全リツイート者情報を一括取得
	public List<Status> getRetweeterInfo(long TweetId) {
		
		List<Status> statuses = null;
        try {
        	//# リツイートを取得（100件の制限あり）
        	statuses = twitter.getRetweets(TweetId);
        	System.out.println("# ======== [Function] get retweet count : "+statuses.size());
        }catch(TwitterException te) {
        	te.printStackTrace();
        	System.err.print("# ======== [Function] リツイート一覧の取得失敗: "+te.getMessage());
        }
        return statuses;
	}
	
	//# (D)指定したIDのリツイート数を取得
	public static int getRetweeterCount(long tweetid) {
		
		int retweeter_count = 0;
		//# 【問題点１】カーソルが毎回「0」のバグ？
		//# 【問題点２】凍結アカウントが表示されないため、Twitter画面表示上の数より少なくなる
		/*
		try {
			//# リツイートした人のID格納用
			IDs ret_ids = null;
			//# カーソル
			long cursor = -1L;
			int pagecount = 0;
			//# ページの数だけ繰り返し
			do {
				//# フォロワーの一覧を出したい対象のユーザ情報
				ret_ids = twitter.getRetweeterIds(tweetid,100,cursor)
				long[] retweeter_ids = ret_ids.getIDs();
				for(long retweeter : retweeter_ids) {
					System.out.println("# ================ "+twitter.showUser(retweeter).getScreenName());
				}
				retweeter_count = retweeter_ids.length;
				System.out.println("# ======== 1 page "+pagecount+" length= "+retweeter_ids.length+" next= "+ret_ids.getNextCursor());				
				pagecount++;				
				//# なぜかカーソルのgetNextCursorが必ず０になる？
			}while((cursor = ret_ids.getNextCursor())!=0 && pagecount<3);

		} catch (TwitterException e) {
			e.printStackTrace();
		}
		*/
		
		//# 上記問題点の解消のため、IDからstatusを取得する方法で対応
		try {
			Status status = twitter.showStatus(tweetid);
			retweeter_count = status.getRetweetCount();
		} catch (TwitterException e) {
			e.printStackTrace();
		}
		System.out.println("# ======== [Function] Get Retweet count: "+retweeter_count);
		return retweeter_count;
	}
}
