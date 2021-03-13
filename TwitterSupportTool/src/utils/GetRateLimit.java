package utils;
import java.util.Map;
import java.util.TreeMap;

import twitter.CommonUtil;
import twitter4j.*;
public class GetRateLimit {
    
	//# キー認証・Twitterクラスのインスタンス生成
	static CommonUtil cu = new CommonUtil();
	static Twitter twitter = cu.getTwitterV2(RoutingTable.authkey_max);
	
	//#【問題点】【廃止予定】
	//# 上のstaticで最初に取得した番号のKeyの残数を返却してしまうため
	//# 実際に使われたものとの残数と乖離が生じる
	//# 　→V2で改善
    public int getRemainingLimit(String ep) {
    	int remaining = 0;
		try {
			Map<String,RateLimitStatus> ratelimits = new TreeMap<>();
			ratelimits = twitter.getRateLimitStatus();
			for(String endpoint : ratelimits.keySet()) {
				if(endpoint.equals(ep)) {
					RateLimitStatus status = ratelimits.get(endpoint);
					System.out.println("# [GetRateLimit.getRemainingLimit] E="+endpoint
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
    
    //# V2では、APIコールの度にTwitterインスタンスを生成しますが、
    //# その都度、空きKeyを探して返却します。
    //# その際にN番目のTwitterインスタンスのEndpointの残数を返却するためのメソッド
    //# (APIコールの度にセットで使う＝各APIコール用）
    public int getRemainingLimitV2(String ep, Twitter ntwitter) {
    	int remaining = 0;
		try {
			Map<String,RateLimitStatus> ratelimits = new TreeMap<>();
			ratelimits = ntwitter.getRateLimitStatus();
			for(String endpoint : ratelimits.keySet()) {
				if(endpoint.equals(ep)) {
					RateLimitStatus status = ratelimits.get(endpoint);
					System.out.println("# [GetRateLimit.getRemainingLimitV2] E="+endpoint
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
    
    //# 入り口で総数チェックを行うため、Endpointの残数を全Keyでチェックし
    //# その総合計を返却するメソッド（入り口総数チェック用）
    public int getRemainingTotal(String ep) {
    	int remaintotal = 0;
    	CommonUtil cu = new CommonUtil();
		try {
			//# 利用可能なKeyの数だけループ
			for(int i=1; i<=RoutingTable.authkey_max; i++) {
				//# N番目のKeyでTwitterインスタンス生成
				Twitter ntwitter = cu.getNthTwitter(i);
				//# RateLimit情報をMapに格納
				Map<String,RateLimitStatus> ratelimits = new TreeMap<>();
				ratelimits = ntwitter.getRateLimitStatus();
				//# 探したいエンドポイントの残数を総合計に加算していく
				for(String endpoint : ratelimits.keySet()) {
					if(endpoint.equals(ep)) {
						RateLimitStatus status = ratelimits.get(endpoint);
						System.out.println("# [GetRateLimit.getRemainingTotal] E="+endpoint
								+" L="+status.getLimit()
								+" R="+status.getRemaining()
								+" T="+status.getResetTimeInSeconds());	
						remaintotal = remaintotal + status.getRemaining();
					}
				}	
			}
		} catch (TwitterException e1) {
			e1.printStackTrace();
		}
		System.out.println("# [GetRateLimit.getRemainingTotal] FOR ENDPOINT:"+ep+" ="+remaintotal);
		return remaintotal;
    }
}