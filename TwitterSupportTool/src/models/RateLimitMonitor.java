package models;

import java.util.Map;
import java.util.TreeMap;

import twitter.CommonUtil;
import twitter4j.RateLimitStatus;
import twitter4j.Twitter;
import twitter4j.TwitterException;
import utils.RoutingTable;

//# RateLimitMonitorのモデルクラス
public class RateLimitMonitor {

	//# get/setメソッド作る気力が・・・
	//# EndPoint : showUser
	public int remain_showuser=0, total_showuser=0;
	//# EndPoint : search
	public int remain_search=0, total_search=0, unit_search=0;
	//# EndPoint : searchUsers
	public int remain_user=0, total_user=0, unit_user=0;
	//# EndPoint : searchUsers
	public int remain_timeline=0, total_timeline=0, unit_timeline=0;
	//# EndPoint : getFollowersList
	public int[] remain_followerlist_e = new int[RoutingTable.authkey_max];
	public int remain_followerlist=0, total_followerlist=0, unit_followerlist=0;
	//# EndPoint : getFollowersIDs
	public int[] remain_followerids_e = new int[RoutingTable.authkey_max];
	public int remain_followerids=0, total_followerids=0, unit_followerids=0;
	//# EndPoint : getFriendsList
	public int[] remain_friendslist_e = new int[RoutingTable.authkey_max];
	public int remain_friendslist=0, total_friendslist=0, unit_friendslist=0;	
	//# EndPoint : getFriendsIDs
	public int remain_friendsids=0, total_friendsids=0, unit_friendsids=0;
	//# EndPoint : getRetweets
	public int remain_retweet=0, total_retweet=0, unit_retweet=0;
	//# EndPoint : getRateLimitStatus
	public int remain_ratelimit=0, total_ratelimit=0;	
	
	//# Constructor
	public RateLimitMonitor() {
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
					if(endpoint.equals(RoutingTable.ep_showUser)) {						
						RateLimitStatus status = ratelimits.get(endpoint);
						remain_showuser = remain_showuser + status.getRemaining();
						total_showuser = total_showuser + status.getLimit();
						
					}else if(endpoint.equals(RoutingTable.ep_search)) {						
						RateLimitStatus status = ratelimits.get(endpoint);
						remain_search = remain_search + status.getRemaining();
						total_search = total_search + status.getLimit();
						unit_search = RoutingTable.hashtag_setcount;
						
					}else if(endpoint.equals(RoutingTable.ep_searchUsers)) {						
						RateLimitStatus status = ratelimits.get(endpoint);
						remain_user = remain_user + status.getRemaining();
						total_user = total_user + status.getLimit();
						unit_user = RoutingTable.unitpage_user;
						
					}else if(endpoint.equals(RoutingTable.ep_getUserTimeLine)) {						
						RateLimitStatus status = ratelimits.get(endpoint);
						remain_timeline = remain_timeline + status.getRemaining();
						total_timeline = total_timeline + status.getLimit();
						unit_timeline = RoutingTable.recent_unitpage;
						
					}else if(endpoint.equals(RoutingTable.ep_getFollowersList)) {						
						RateLimitStatus status = ratelimits.get(endpoint);
						remain_followerlist_e[i-1] = status.getRemaining();
						remain_followerlist = remain_followerlist + status.getRemaining();
						total_followerlist = total_followerlist + status.getLimit();
						unit_followerlist = RoutingTable.unitpage_follow200;
						
					}else if(endpoint.equals(RoutingTable.ep_getFollowersIDs)) {						
						RateLimitStatus status = ratelimits.get(endpoint);
						remain_followerids_e[i-1] = status.getRemaining();
						remain_followerids = remain_followerids + status.getRemaining();
						total_followerids = total_followerids + status.getLimit();
						unit_followerids = RoutingTable.unitpage_follow5000;
						
					}else if(endpoint.equals(RoutingTable.ep_getFriendsList)) {						
						RateLimitStatus status = ratelimits.get(endpoint);
						remain_friendslist_e[i-1] = status.getRemaining();
						remain_friendslist = remain_friendslist + status.getRemaining();
						total_friendslist = total_friendslist + status.getLimit();
						unit_friendslist = RoutingTable.unitpage_following200;
						
					}else if(endpoint.equals(RoutingTable.ep_getFriendsIDs)) {						
						RateLimitStatus status = ratelimits.get(endpoint);
						remain_friendsids = remain_friendsids + status.getRemaining();
						total_friendsids = total_friendsids + status.getLimit();
						unit_friendsids = RoutingTable.unitpage_friends5000;
						
					}else if(endpoint.equals(RoutingTable.ep_getRetweets)) {						
						RateLimitStatus status = ratelimits.get(endpoint);
						remain_retweet = remain_retweet + status.getRemaining();
						total_retweet = total_retweet + status.getLimit();
						unit_retweet = RoutingTable.unitpage_retweet100;
						
					}else if(endpoint.equals(RoutingTable.ep_getRateLimitStatus)) {						
						RateLimitStatus status = ratelimits.get(endpoint);
						remain_ratelimit = remain_ratelimit + status.getRemaining();
						total_ratelimit = total_ratelimit + status.getLimit();
						
					}
				}	
			}
		} catch (TwitterException e1) {
			e1.printStackTrace();
		}
	}
}
