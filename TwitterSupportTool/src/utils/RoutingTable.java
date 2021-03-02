package utils;

public class RoutingTable {
	
	//## URL共通部分（認証対象の改装）
	public static final String apphome = "https://ik1-336-28337.vs.sakura.ne.jp:8443/TwitterSupportTool";
	public static final String authzone = "auth";
	
	//## 共通部品
	//# css (top=アプリケーションルートからの場合、auth=auth配下からの場合)
	public static final String twitter_css_top = "./css/TwitterTool.css";
	public static final String twitter_css_auth = "../css/TwitterTool.css";
	//# ValidationUtil
	public static final String val_util = "/" + authzone + "/ValidationUtil";
	//# API利用回数の上限（全体共通）
	public static final int api_limit = 20;
	//# API認証キーの最大個数
	public static final int authkey_max = 2;	
	//# フォロワー探索時(getFollowersList)のページ制限（単位：200）
	public static final int pagelimit_follow200 = 10;
	//# フォロワー探索時(getFollowersIDs)のページ制限（単位：5000）
	public static final int pagelimit_follow5000 = 3;
	//# フォローしてる人の探索時(getFriendsList)のページ制限（単位：200）
	public static final int pagelimit_following200 = 10;
	//# API利用対象のフォロワー上限抵触のしきい値（getFollowersIDs）
	public static final int followerlimit_ids = 5000;
	//# API利用対象のフォロワー上限抵触のしきい値（getFollowersLists）
	public static final int followerlimit_lists = 500;
	//# API利用対象のフォローしてる人上限抵触のしきい値（getFriedsLists）
	public static final int friendslimit_lists = 500;
	//# API利用対象のリツイート数限抵触のしきい値
	public static final int retweetcountlimit = 100;

	//## 画面
	//# ホーム画面・ログイン系画面
	public static final String home_fromauth = "../TwitterSupportHome.jsp";
	public static final String logout_sv = "/" + authzone + "/LogoutServlet1";
	public static final String logout_sv_btn = "LogoutServlet1";
	public static final String logout_sv_homebtn = "auth/LogoutServlet1";	
	public static final String logout_r = "/Logout1.jsp";
	
	//# (０１)ハッシュタグによるTweet検索
	public static final int hashtag_setcount = 100; //MAX１００件
	public static final String hashtag_q = authzone + "/TwitterHashTagSearchQuery.jsp";
	public static final String hashtag_sv = "/" + authzone + "/hashtag_search";
	public static final String hashtag_r = "TwitterHashTagSearchResult.jsp";
	public static final String hashtag_csv = "/" + authzone + "/hashtag_search_csv";
	
	//# (０１)ハッシュタグによるTweet検索_V2
	public static final String hashtagV2_q = authzone + "/TwitterHashTagSearchWithFavQuery.jsp";
	public static final String hashtagV2_sv = "/" + authzone + "/hashtag_search_with_fav";
	public static final String hashtagV2_r = "TwitterHashTagSearchWithFavResult.jsp";
	public static final String hashtagV2_csv = "/" + authzone + "/hashtag_search_csv2";
	//# 複数ページを繰り返し検索しているので、その繰り返し回数（1page＝Max100件）
	public static final int hashtagV2_pagelimit = 2;
	
	//# (０２)○○に関連するユーザー検索
	public static final String user_q = authzone + "/TwitterSearchUserQuery.jsp";
	public static final String user_sv = "/" + authzone + "/search_user";
	public static final String user_r = "TwitterSearchUserResult.jsp";
	public static final String user_csv = "/" + authzone + "/search_user_csv";
	//# 複数ページを繰り返し検索しているので、その繰り返し回数（1page＝20件）
	public static final int user_pagelimit = 3;	

	//# (０３)○○さんの直近Tweet検索(Model使用＆csvのAPI消費抑止版)
	public static final String recentV2_q = authzone + "/TwitterRecentTweetQueryV2.jsp";
	public static final String recentV2_sv = "/" + authzone + "/recent_tweet_search2";
	public static final String recentV2_r = "TwitterRecentTweetResultV2.jsp";
	public static final String recentV2_csv = "/" + authzone + "/recent_tweet_search_csv2";
	//# (０３)○○さんの直近Tweet検索
	public static final String recent_q = authzone + "/TwitterRecentTweetQuery.jsp";
	public static final String recent_sv = "/" + authzone + "/recent_tweet_search";
	public static final String recent_r = "TwitterRecentTweetResult.jsp";
	public static final String recent_csv = "/" + authzone + "/recent_tweet_search_csv";
	//# 複数ページを繰り返し検索しているので、その繰り返し回数（1page＝user_unitpage件）
	public static final int recent_pagelimit = 3;
	//# １ページ当たりの取得件数
	public static final int recent_unitpage = 20;
	
	//# (０４)○○さんのフォロワー検索 (Ver.4 : Ajax＋API使用回数抑止版)
	public static final String followerV2_sv_new = "/" + authzone + "/follower_search4";
	
	//# (０４)○○さんのフォロワー検索（Ver.3 : getFollowersList版）
	//# getFollowersIDs→showUserの流れではなく、getFollowersListで一回で取得
	public static final String followerV3_q = authzone + "/TwitterGetFollowerQueryV3.jsp";
	public static final String followerV3_sv = "/" + authzone + "/follower_search3";
	public static final String followerV3_r = "TwitterGetFollowerResult.jsp";
	public static final String followerV3_csv = "/" + authzone + "/follower_search_csv3";
	
	//#【NG：性能問題】 (０４)○○さんのフォロワー検索 (Ver.2 : Ajax版)
	//# showUserを大量にコールするため、遅い＆即座にRateLimitExceedになってしまう
	public static final String followerV2_q = authzone + "/TwitterGetFollowerQueryV2.jsp";
	public static final String followerV2_js = "../js/TwitterGetFollower6.js";
	public static final String followerV2_clear = "/" + authzone + "/follower_search_remove";
	public static final String followerV2_sv = "/" + authzone + "/follower_search2";
	public static final String followerV2_r = "TwitterGetFollowerResult.jsp";
	public static final String followerV2_csv = "/" + authzone + "/follower_search_csv";
	
	//# 【NG：性能問題】(０４)○○さんのフォロワー検索（Ver.1 : 初代バージョン）
	//# showUserを大量にコールするため、遅い＆即座にRateLimitExceedになってしまう
	public static final String follower_q = authzone + "/TwitterGetFollowerQuery.jsp";
	public static final String follower_sv = "/" + authzone + "/follower_search";
	public static final String follower_r = "TwitterGetFollowerResult.jsp";
	
	//# (０５)ツイートにRetweetした人の一覧出力
	public static final String retweet_q = authzone + "/TwitterRetweeterListQuery.jsp";
	public static final String retweet_sv = "/" + authzone + "/retweeter_list";
	public static final String retweet_r = "TwitterRetweeterListResult.jsp";
	public static final String retweet_csv = "/" + authzone + "/retweeter_list_csv";
	
	//# (０６)片思い一覧（フォローしてるけどフォローバックされていない）
	public static final String followonly_q = authzone + "/TwitterFollowingOnlyQuery.jsp";
	public static final String followonly_sv = "/" + authzone + "/followonly_search";
	public static final String followonly_r = "TwitterFollowingOnlyResult.jsp";
	public static final String followonly_csv = "/" + authzone + "/followonly_search_csv";
}
