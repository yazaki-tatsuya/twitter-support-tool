package twitter;

import java.util.LinkedHashMap;
import java.util.Map;

import twitter4j.Twitter;
import twitter4j.TwitterFactory;
import twitter4j.conf.ConfigurationBuilder;

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
	}
	
	public String getRandom(int max) {
		int finalnum = 0;
		int min = 1;
		int adjmax = max+1;
		double random = Math.random();
		finalnum = (min + (int)(random*(adjmax-min)));
		//System.out.println("# [Authentication] Calculate >>>>>>>>>>>> min="+min+" max="+adjmax+" random="+random+" (int)(random*(adjmax-min))="+(int)(random*(adjmax-min)));
		System.out.println("# [Authentication] Token Number : "+finalnum);
		//return String.valueOf(4);
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
		
		System.out.println("# [Authentication] using key: "+ (String) authkeys.get("ConsumerKey"+random) );
		
		//####【事前準備】各種Twitterインスタンスの生成
		//# ファクトリクラスのインスタンス生成
		TwitterFactory tf = new TwitterFactory(cb.build());
		//# Twitterクラスのインスタンス生成
		Twitter twitter = tf.getInstance();
		return twitter;
	}
	
	//# @@@@@@@@@@@@@@@@@@@@@ 旧バージョン（削除予定）@@@@@@@@@@@@@@@@@@@@@
	public String ConsumerKey = "KBsTLRRfGvaBQASpEpYaihtnY";
	public String ConsumerSecret = "j7EJxXth5r1SJ0aDMVOIQgFxpPj1K0i7BWW7yCp9zhs5mxqjcC";
	public String AccessToken = "2581628527-5ws90pIb9gmV4izENmcneE2CuN6TVzQpdPLo1LY";
	public String AccessTokenSecret = "OoLwyCKsLjNaHvBuDM6aUHysyHhovvoYe2h3BaDZQs7MW";
	
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
