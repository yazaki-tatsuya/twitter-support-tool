package utils;

public class RoutingTable {
	
	//## URL共通部分（認証対象の改装）
	public static final String authzone = "auth";
	
	//## 共通部品
	//# css (top=アプリケーションルートからの場合、auth=auth配下からの場合)
	public static final String twitter_css_top = "./css/TwitterTool.css";
	public static final String twitter_css_auth = "../css/TwitterTool.css";
	//# ValidationUtil
	public static final String val_util = "/" + authzone + "/ValidationUtil";

	//## 画面
	//# ホーム画面・ログイン系画面
	public static final String home_fromauth = "../TwitterSupportHome.jsp";
	public static final String logout_sv = "/" + authzone + "/LogoutServlet1";
	public static final String logout_r = "/Logout1.jsp";
	
	//# ①ハッシュタグによるTweet検索
	public static final String hashtag_q = authzone + "/TwitterHashTagSearchQuery.jsp";
	public static final String hashtag_sv = "/" + authzone + "/hashtag_search";
	public static final String hashtag_r = "TwitterHashTagSearchResult.jsp";
	public static final String hashtag_csv = "/" + authzone + "/hashtag_search_csv";
	
	//# ①ハッシュタグによるTweet検索_V2
	public static final String hashtagV2_q = authzone + "/TwitterHashTagSearchWithFavQuery.jsp";
	public static final String hashtagV2_sv = "/" + authzone + "/hashtag_search_with_fav";
	public static final String hashtagV2_r = "TwitterHashTagSearchWithFavResult.jsp";
	//public static final String hashtagV2_csv
	
	//# ②○○に関連するユーザー検索
	public static final String user_q = authzone + "/TwitterSearchUserQuery.jsp";
	public static final String user_sv = "/" + authzone + "/search_user";
	public static final String user_r = "TwitterSearchUserResult.jsp";
	
	//# ③○○さんの直近Tweet検索
	public static final String recent_q = authzone + "/TwitterRecentTweetQuery.jsp";
	public static final String recent_sv = "/" + authzone + "/recent_tweet_search";
	public static final String recent_r = "TwitterRecentTweetResult.jsp";
	public static final String recent_csv = "/" + authzone + "/recent_tweet_search_csv";
	
	//# ④○○さんのフォロワー検索
	public static final String followerV2_q = authzone + "/TwitterGetFollowerQueryV2.jsp";
	public static final String followerV2_js = "../js/TwitterGetFollower6.js";
	public static final String followerV2_clear = "/" + authzone + "/follower_search_remove";
	public static final String followerV2_sv = "/" + authzone + "/follower_search2";
	public static final String followerV2_r = "TwitterGetFollowerResult.jsp";
	public static final String followerV2_csv = "/" + authzone + "/follower_search_csv";
	
	//# ④○○さんのフォロワー検索（旧バージョン）
	public static final String follower_q = authzone + "/TwitterGetFollowerQuery.jsp";
	public static final String follower_sv = "/" + authzone + "/follower_search";
	public static final String follower_r = "TwitterGetFollowerResult.jsp";
	

	
}
