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

	//# APIエンドポイント（RateLimit状況検知用）
	public static final String showUser = "/users/show/:id";
	public static final String search = "/search/tweets";
	public static final String searchUsers = "/users/search";
	public static final String getUserTimeLine = "/statuses/user_timeline";
	public static final String getFollowersList = "/followers/list";
	public static final String getFollowersIDs = "/followers/ids";	
	public static final String getFriendsList = "/friends/list";
	public static final String getFriendsIDs = "/friends/ids";
	public static final String getRetweets = "/statuses/retweets/:id";
	public static final String getRetweeterIDs = "/statuses/retweeters/ids";
	
	//# API利用回数の上限（全体共通）
	public static final int api_limit = 20;		//5回位にしたい
	//# API認証キーの最大個数
	public static final int authkey_max = 1;	//Max=4

	//# API利用対象のフォロワー上限抵触のしきい値（getFollowersIDs)
	//# フォロワー探索時(getFollowersIds)のページ制限（Max単位：5000）
	public static final int followerlimit_ids = 5000;	//(Max=5000×15=75000件/Token)
	public static final int pagelimit_follow5000 = 3;	//(Max=15page/Token)
	
	//# API利用対象のフォロワー上限抵触のしきい値（getFollowersLists）
	//# フォロワー探索時(getFollowersList)ページ制限（Max単位：200）
	public static final int followerlimit_lists = 500;	//(Max=200×15=3000件/Token)
	public static final int pagelimit_follow200 = 4;	//(Max=15page/Token)
	public static final int unitpage_follow200 = 10;	//(Max=200/Token)
	
	//# API利用対象のフォローしてる人上限抵触のしきい値（getFriedsLists）
	//# フォロー探索時(getFriendsList)ページ制限（Max単位：200）
	public static final int friendslimit_lists = 500;	//(Max=200×15=3000件/Token)
	public static final int pagelimit_following200 = 4;//(Max=15page/Token)
	public static final int unitpage_following200 = 10;	//(Max=200/Token)
	
	//# API利用対象のリツイート数限抵触のしきい値
	public static final int retweetcountlimit = 100;	//(Max=100件/Token)

	//## 画面
	//# ホーム画面・ログイン系画面
	public static final String home_fromauth = "../TwitterSupportHome.jsp";
	public static final String logout_sv = "/" + authzone + "/LogoutServlet1";
	public static final String logout_sv_btn = "LogoutServlet1";
	public static final String logout_sv_homebtn = "auth/LogoutServlet1";	
	public static final String logout_r = "/Logout1.jsp";
	
	//# (０１)ハッシュタグによるTweet検索_V2
	public static final String hashtagV2_q = authzone + "/TwitterHashTagSearchQueryV2.jsp";
	public static final String hashtagV2_sv = "/" + authzone + "/hashtag_search_with_fav";
	public static final String hashtagV2_r = "TwitterHashTagSearchResultV2.jsp";
	public static final String hashtagV2_csv = "/" + authzone + "/hashtag_search_csv2";
	//# 複数ページを繰り返し検索しているので、その繰り返し回数
	public static final int hashtagV2_pagelimit = 2; //(MAX=N×100=XXX件）
	//# MAX件数
	public static final int hashtag_setcount = 100; //(MAX=100件)
	
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
	//# 複数ページを繰り返し検索しているので、その繰り返し回数（1page＝user_unitpage件）
	public static final int recent_pagelimit = 3;
	//# １ページ当たりの取得件数
	public static final int recent_unitpage = 20;
	
	//# (０４)○○さんのフォロワー検索 (Ver.4 : Ajax＋API使用回数抑止版)
	public static final String followerV4_q = authzone + "/TwitterGetFollowerQueryV2.jsp";
	public static final String followerV2_js = "../js/TwitterGetFollower6.js";
	public static final String followerV4_clear = "/" + authzone + "/follower_search_remove";
	public static final String followerV4_sv = "/" + authzone + "/follower_search4";
	//public static final String followerV4_r = "[なし（AjaxでQuery画面に直接表示するため）]";
	public static final String followerV4_csv = "/" + authzone + "/follower_search_csv";
	
	//# (０４)○○さんのフォロワー検索（Ver.3 : getFollowersList版）
	//# getFollowersIDs→showUserの流れではなく、getFollowersListで一回で取得
	public static final String followerV3_q = authzone + "/TwitterGetFollowerQueryV3.jsp";
	public static final String followerV3_sv = "/" + authzone + "/follower_search3";
	public static final String followerV3_r = "TwitterGetFollowerResultV3.jsp";
	public static final String followerV3_csv = "/" + authzone + "/follower_search_csv3";
		
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
