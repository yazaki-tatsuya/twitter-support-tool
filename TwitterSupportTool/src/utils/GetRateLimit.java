package utils;
import java.util.Map;
import java.util.TreeMap;

import twitter.CommonUtil;
import twitter4j.*;
public class GetRateLimit {
    
	//# キー認証・Twitterクラスのインスタンス生成
	static CommonUtil cu = new CommonUtil();
	static Twitter twitter = cu.getTwitterV2(RoutingTable.authkey_max);
	
    public int getRemainingLimit(String ep) {
    	int remaining = 0;
		try {
			Map<String,RateLimitStatus> ratelimits = new TreeMap<>();
			ratelimits = twitter.getRateLimitStatus();
			for(String endpoint : ratelimits.keySet()) {
				if(endpoint.equals(ep)) {
					RateLimitStatus status = ratelimits.get(endpoint);
					System.out.println("# [RateLimitStatus] E="+endpoint
							+" L="+status.getLimit()
							+" R="+status.getRemaining()
							+" T="+status.getResetTimeInSeconds());	
					remaining = status.getRemaining();
				}
			}
		} catch (TwitterException e1) {
			e1.printStackTrace();
		}
		return remaining;
    }
}