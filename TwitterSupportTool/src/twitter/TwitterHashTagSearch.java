package twitter;
import java.io.IOException;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.*;

import javax.servlet.RequestDispatcher;
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

@WebServlet("/hashtag_search")
public class TwitterHashTagSearch extends HttpServlet {

	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//#### キー認証・Twitterクラスのインスタンス生成
		CommonUtil cu = new CommonUtil();
		Twitter twitter = cu.getTwitter();
		
		//#### 変数定義など
		//# エンコーディング方式の設定
		request.setCharacterEncoding("UTF-8");
		//# 検索対象キーワードの取得
		String searchTarget = "#" + request.getParameter("searchTag");
		request.setAttribute("hashtag", searchTarget);	
		//# 遷移先画面
		String forwardpage = "./TwitterHashTagSearchResult.jsp";
		
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

		//# 最終結果の格納用
		List<String> user = new ArrayList<String>();
		List<Long> tweetid = new ArrayList<Long>();
		List<String> result = new ArrayList<String>();
		List<Integer> favcnt = new ArrayList<Integer>();
		List<Integer> retcnt = new ArrayList<Integer>();
			
		//# 検索結果から１Statusずつ、ツイート内容を最終結果に格納
		for(Status status : queryResult.getTweets()) {
			
			if(!status.isRetweet()) {
				//####(5)URLの検出・整形
				String tmp = status.getText();
				String regex = "\\b(https?|ftp|file)://[-a-zA-Z0-9+&@#/%?=~_|!:,.;]*[-a-zA-Z0-9+&@#/%=~_|]";
				Pattern pattern = Pattern.compile(regex);
				Matcher matcher = pattern.matcher(tmp);
				while(matcher.find()) {
					String tmp_url = "<a href=\""+matcher.group()+"\" target=\"_blank\">"+matcher.group()+"</a>";
					tmp = tmp.replace(matcher.group(),tmp_url);
				}
				
				//####各要素をArrayListに追加
				user.add(status.getUser().getScreenName());
				tweetid.add(status.getId());
				result.add(tmp);
				favcnt.add(status.getFavoriteCount());
				retcnt.add(status.getRetweetCount());
			}
		}
		//####(6)結果格納・画面遷移
		//# 結果をリクエストオブジェクトにセット
		request.setAttribute("result1",user);
		request.setAttribute("result2",favcnt);
		request.setAttribute("result3",result);
		request.setAttribute("result4",retcnt);
		request.setAttribute("result5",tweetid);
		//# 画面遷移
		RequestDispatcher dispatch = request.getRequestDispatcher(forwardpage);
		dispatch.forward(request, response);
		//doGet(request, response);
	}
}
