package twitter;

import twitter4j.Twitter;
import twitter4j.TwitterFactory;
import twitter4j.conf.ConfigurationBuilder;

public class CommonUtil {
	
	public String ConsumerKey = "";
	public String ConsumerSecret = "";
	public String AccessToken = "";
	public String AccessTokenSecret = "";
	
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
