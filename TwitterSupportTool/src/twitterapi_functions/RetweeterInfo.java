package twitterapi_functions;

import java.util.List;

import twitter.CommonUtil;
import twitter4j.Paging;
import twitter4j.ResponseList;
import twitter4j.Status;
import twitter4j.Twitter;
import twitter4j.TwitterException;
import twitter4j.TwitterFactory;
import twitter4j.User;
import twitter4j.conf.ConfigurationBuilder;

public class RetweeterInfo {
	
	public static List<Status> getRetweeterInfo(long TweetId) {
		
		//# キー認証・Twitterクラスのインスタンス生成
		CommonUtil cu = new CommonUtil();
		Twitter twitter = cu.getTwitter();
		List<Status> statuses = null;
        try {
        	statuses = twitter.getRetweets(TweetId);
        }catch(TwitterException te) {
        	te.printStackTrace();
        	System.err.print("#### リツイート一覧の取得失敗: "+te.getMessage());
        }
        return statuses;
	}
}
