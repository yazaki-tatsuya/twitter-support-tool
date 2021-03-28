package twitter;

import java.util.LinkedHashMap;
import java.util.Map;

import twitter4j.Twitter;
import twitter4j.TwitterFactory;
import twitter4j.conf.ConfigurationBuilder;
import utils.GetRateLimit;

public class CommonUtil {

	Map<String, Object> authkeys = new LinkedHashMap<>();
	
	private void setAuthKeys() {
		//# (1)Rainbow_Engine
		authkeys.put("ConsumerKey1","");
		authkeys.put("ConsumerSecret1","");
		authkeys.put("AccessToken1","");
		authkeys.put("AccessTokenSecret1","");
		
		//# (2)cafetime_athome
		authkeys.put("ConsumerKey2","");
		authkeys.put("ConsumerSecret2","");
		authkeys.put("AccessToken2","");
		authkeys.put("AccessTokenSecret2","");				

		//# (3)ShellieMayMei
		authkeys.put("ConsumerKey3","");
		authkeys.put("ConsumerSecret3","");
		authkeys.put("AccessToken3","");
		authkeys.put("AccessTokenSecret3","");	

		//# (4)MARU10162
		authkeys.put("ConsumerKey4","");
		authkeys.put("ConsumerSecret4","");
		authkeys.put("AccessToken4","");
		authkeys.put("AccessTokenSecret4","");

		//# (5)ez_Aaon
		authkeys.put("ConsumerKey5","");
		authkeys.put("ConsumerSecret5","");
		authkeys.put("AccessToken5","");
		authkeys.put("AccessTokenSecret5","");	

		//# (6)MoanaBeach
		authkeys.put("ConsumerKey6","");
		authkeys.put("ConsumerSecret6","");
		authkeys.put("AccessToken6","");
		authkeys.put("AccessTokenSecret6","");
		
		//# (7)ShellieMayHawaii
		authkeys.put("ConsumerKey7","");
		authkeys.put("ConsumerSecret7","");
		authkeys.put("AccessToken7","");
		authkeys.put("AccessTokenSecret7","");
		
		//# (8)MzLba
		authkeys.put("ConsumerKey8","");
		authkeys.put("ConsumerSecret8","");
		authkeys.put("AccessToken8","");
		authkeys.put("AccessTokenSecret8","");
		
		//# (9)hana0200812846
		authkeys.put("ConsumerKey9","");
		authkeys.put("ConsumerSecret9","");
		authkeys.put("AccessToken9","");
		authkeys.put("AccessTokenSecret9","");
		
		//# (10)sobami62532
		authkeys.put("ConsumerKey10","");
		authkeys.put("ConsumerSecret10","");
		authkeys.put("AccessToken10","");
		authkeys.put("AccessTokenSecret10","");
	}
	
	public String getRandom(int max) {
		int finalnum = 0;
		int min = 1;
		int adjmax = max+1;
		double random = Math.random();
		finalnum = (min + (int)(random*(adjmax-min)));
		//System.out.println("# [Authentication] Calculate >>>>>>>>>>>> min="+min+" max="+adjmax+" random="+random+" (int)(random*(adjmax-min))="+(int)(random*(adjmax-min)));
		System.out.println("# [CommonUtil.getRandom] Token Number : "+finalnum);
		return String.valueOf(finalnum);
	}
	
	//# 引数に応じて動的に認証キーを取得
	public Twitter getTwitterV2(int max) {
		
		//#### 認証情報の設定準備 (ConfigurationBuilderクラス)
		//# インスタンス生成 ＆　認証キー情報のセット
		ConfigurationBuilder cb = new ConfigurationBuilder();
		setAuthKeys();
		String random = getRandom(max);
		//# キー情報の設定
		cb.setDebugEnabled(true)
		.setOAuthConsumerKey((String) authkeys.get("ConsumerKey"+random))
		.setOAuthConsumerSecret((String) authkeys.get("ConsumerSecret"+random))
		.setOAuthAccessToken((String) authkeys.get("AccessToken"+random))
		.setOAuthAccessTokenSecret((String) authkeys.get("AccessTokenSecret"+random));
		
		System.out.println("# [CommonUtil.getTwitterV2] Using KEY No: "+random+" key val:"+ (String) authkeys.get("ConsumerKey"+random) );
		
		//####【事前準備】各種Twitterインスタンスの生成
		//# ファクトリクラスのインスタンス生成
		TwitterFactory tf = new TwitterFactory(cb.build());
		//# Twitterクラスのインスタンス生成
		Twitter twitter = tf.getInstance();
		return twitter;
	}
	
	//# getRateLimitStatusの多用(認証Key数×ページ数)のため、
	//# RateLimitMonitorや入り口チェックなど他機能が使えなくなるリスクを回避するため
	//# 　→[20210314] V2と組み合わせたハイブリッドのために使用
	//# =============================================
	//# やりたい処理(endpoint)とKey数(authkey_max)を与える
	//# 各AuthKey毎に空き状況をチェックして、処理可能なTwitterインスタンスを返却
	public Twitter getTwitterV3(int max, String endpoint) {
		
		boolean foundkey = false;
		int maxloopnum = max;
		int counter = 1;
		Twitter ntwitter = null;
		GetRateLimit rl = new GetRateLimit();
		//# 空きが見つかる or 最後のアカウントまでチェックするまで、AuthKeyをループ(引数：max)
		do {
			//# チェック対象のN番目のTwitterインスタンス取得
			System.out.println("# [CommonUtil.getTwitterV3] Get Nth Twitter START");
			ntwitter = getNthTwitter(counter);
			//# endpointのRemaining()をチェック
			System.out.println("# [CommonUtil.getTwitterV3] Search Nth Remain START counter="+counter);
			//# [20210313]
			//# getRemainingLimitV2の問題点として、毎回1つ目から空きを探すため
			//# 後半のKeyを使う時ほど空振りの無駄な空き確認が増える。
			//# それを防ぐため「空き位置」の値を保持して持ちまわる
			//# 　→【断念】15分で回復する＆現状末尾→先頭に戻る仕組み無い為NG	
			int remain = rl.getRemainingLimitV2(endpoint, ntwitter);
			//# 空きが見つかったら「空きフラグ」を更新
			if(remain > 0) {
				foundkey = true;
				System.out.println("# [CommonUtil.getTwitterV3] Found usable key ="+counter);
			}
			//# カウンタを更新
			counter++;
		} while(!foundkey && counter <= maxloopnum);
		//# もし見つからなかった場合、暫定で最後を返却
		if(!foundkey) {
			ntwitter = getNthTwitter(counter);
			System.out.println("# [CommonUtil.getTwitterV3] NO KEY FOUND......");
		}
		return ntwitter;		
	}
	
	//# N番目のTwitterインスタンスを返却
	public Twitter getNthTwitter(int nth) {
		
		//#### 認証情報の設定準備 (ConfigurationBuilderクラス)
		//# インスタンス生成 ＆　認証キー情報のセット
		ConfigurationBuilder cb = new ConfigurationBuilder();
		setAuthKeys();
		String number = String.valueOf(nth);
		//# キー情報の設定
		cb.setDebugEnabled(true)
		.setOAuthConsumerKey((String) authkeys.get("ConsumerKey"+number))
		.setOAuthConsumerSecret((String) authkeys.get("ConsumerSecret"+number))
		.setOAuthAccessToken((String) authkeys.get("AccessToken"+number))
		.setOAuthAccessTokenSecret((String) authkeys.get("AccessTokenSecret"+number));
		
		System.out.println("# [CommonUtil.getNthTwitter] USE KEY: "+nth+" KEY VAL:"+ (String) authkeys.get("ConsumerKey"+number) );
		
		//####【事前準備】各種Twitterインスタンスの生成
		//# ファクトリクラスのインスタンス生成
		TwitterFactory tf = new TwitterFactory(cb.build());
		//# Twitterクラスのインスタンス生成
		Twitter twitter = tf.getInstance();
		return twitter;
	}	

	//# @@@@@@@@@@@@@@@@@@@@@ 旧バージョン（削除予定）@@@@@@@@@@@@@@@@@@@@@
	public String ConsumerKey = "REMOVED_TOKEN1";
	public String ConsumerSecret = "REMOVED_TOKEN2";
	public String AccessToken = "REMOVED_TOKEN3";
	public String AccessTokenSecret = "REMOVED_TOKEN4";
		
	//#### 事前準備処理のクラス
	public Twitter getTwitter() {
		
		//#### 【事前準備】設定の取り込み (ConfigurationBuilderクラス)
		//# インスタンス生成
		ConfigurationBuilder cb = new ConfigurationBuilder();
		//# キー情報の設定
		cb.setDebugEnabled(true)
		.setOAuthConsumerKey(ConsumerKey)
		.setOAuthConsumerSecret(ConsumerSecret)
		.setOAuthAccessToken(AccessToken)
		.setOAuthAccessTokenSecret(AccessTokenSecret);

		//####【事前準備】各種Twitterインスタンスの生成
		//# ファクトリクラスのインスタンス生成
		TwitterFactory tf = new TwitterFactory(cb.build());
		//# Twitterクラスのインスタンス生成
		Twitter twitter = tf.getInstance();
		return twitter;
	}
}
