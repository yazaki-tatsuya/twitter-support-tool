package twitter;

import twitter4j.Twitter;
import twitter4j.TwitterFactory;
import twitter4j.conf.ConfigurationBuilder;

public class CommonUtil {
	
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
