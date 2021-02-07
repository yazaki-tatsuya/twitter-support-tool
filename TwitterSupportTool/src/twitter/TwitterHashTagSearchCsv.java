package twitter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import twitter4j.Query;
import twitter4j.QueryResult;
import twitter4j.Status;
import twitter4j.Twitter;
import twitter4j.TwitterException;

@WebServlet("/hashtag_search_csv")
public class TwitterHashTagSearchCsv extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//#### キー認証・Twitterクラスのインスタンス生成
		CommonUtil cu = new CommonUtil();
		Twitter twitter = cu.getTwitter();
		
		//#### 変数定義など
		//# エンコーディング方式の設定
		String filename = "HashTagSearchResult.csv";
		request.setCharacterEncoding("UTF-8");
		//response.setCharacterEncoding("SHIFT-JIS");
		//response.setContentType("text/csv; charset=SHIFT-JIS");
		response.setHeader("Content-Type", "text/csv; charset=SHIFT-JIS");
		response.setHeader("Content-Disposition", "attachment; filename=\""+filename+"\"");
		PrintWriter out = response.getWriter();
		out.append("ユーザーID,").append("TweetのURL,").append("Tweet内容,").append("いいね数,").append("リツイート数\n");
		
		//# 検索対象キーワードの取得
		String searchTarget = (String) request.getSession().getAttribute("hashtag_val");
		System.out.println(searchTarget);

		//#### ハッシュタグによる検索
		//# ハッシュタグの検索用クラス(Query)
		Query query = new Query();
		
		//# クエリ生成（検索対象のワードをセット＆取得件数セット）
		query.setCount(200);
		query.setQuery(searchTarget);
		//# 検索結果の格納用
		QueryResult queryResult = null;
		//# クエリの発行・結果格納
		try {
			queryResult = twitter.search(query);
		} catch (TwitterException e1) {
			e1.printStackTrace();
		}
		//# 検索結果から１Statusずつ、ツイート内容を最終結果に格納
		for(Status status : queryResult.getTweets()) {
			
			if(!status.isRetweet()) {
				//#### URLの検出・整形
				//ツイート内容を一時変数に格納
				String tmp = status.getText();
				//URLを抽出する正規表現
				String regex = "\\b(https?|ftp|file)://[-a-zA-Z0-9+&@#/%?=~_|!:,.;]*[-a-zA-Z0-9+&@#/%=~_|]";
				Pattern pattern = Pattern.compile(regex);
				Matcher matcher = pattern.matcher(tmp);
				//URLが検出される間は<a>タグで囲った文言に置き換える
				while(matcher.find()) {
					String tmp_url = "<a href=\""+matcher.group()+"\" target=\"_blank\">"+matcher.group()+"</a>";
					tmp = tmp.replace(matcher.group(),tmp_url);
				}
				//その他、置換が必要な文言の処理
				if(tmp.contains("\"")) {tmp = tmp.replace("\"", "\"\"");}
				if(tmp.contains(",")) {tmp = "\""+tmp+"\"";}
				if(tmp.contains("\n")) {tmp = tmp.replace("\n","");}
				if(tmp.contains("\r")) {tmp = tmp.replace("\r","");}
				
				//####各要素をArrayListに追加
				out.append(status.getUser().getScreenName()+",");
				out.append("'"+status.getId()+",");
				out.append(tmp+",");
				out.append(status.getFavoriteCount()+",");
				out.append(status.getRetweetCount()+"\n");
			}
		}		
	}
}
