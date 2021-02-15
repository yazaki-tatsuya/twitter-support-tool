package twitter;
import java.io.IOException;
import java.text.SimpleDateFormat;
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

import twitter4j.Paging;
import twitter4j.ResponseList;
import twitter4j.Status;
import twitter4j.Twitter;
import twitter4j.TwitterException;

@WebServlet("/recent_tweet_search")
public class TwitterRecentTweetQuery extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//#### キー認証・Twitterクラスのインスタンス生成
		CommonUtil cu = new CommonUtil();
		Twitter twitter = cu.getTwitter();
		
		//#### 変数定義など
		//# エンコーディング方式の設定
		request.setCharacterEncoding("UTF-8");
		//# 検索対象キーワードの取得
		String searchTarget = request.getParameter("searchUserTweet");
		System.out.println("#### (1):"+searchTarget);
		request.setAttribute("username", searchTarget);	
		//# 遷移先画面
		String forwardpage = "./TwitterRecentTweetResult.jsp";

		//# 最終結果の格納用
		List<Long> tweetid = new ArrayList<Long>();
		List<String> date = new ArrayList<String>();
		List<Integer> retcnt = new ArrayList<Integer>();
		List<Integer> favcnt = new ArrayList<Integer>();
		List<String> content = new ArrayList<String>();
		
		//# 検索結果から１Statusずつ、ツイート内容を最終結果に格納
		//# 合計いいね数
		int count_like = 0;
		//# 合計リツイート数
		int count_retweet = 0;
        //# カウンター変数
		int counter = 1;
		//# ページカウンタ変数
		int pgcount = 1;
		
		//# 直近のツイートを取得
	    try {
	        //# 検索結果の格納用
            ResponseList<Status> statusList;	        
            do {
            	//# ページ情報の設定(ページ番号、件数)
            	Paging pg = new Paging(pgcount,10);
                //# クエリの発行・結果格納
                statusList = twitter.getUserTimeline(searchTarget, pg);
                //# 取得した直近200件のタイムラインアクティビティをループ
                for (Status status : statusList) {
                	//# リツイートは表示しない
                	if(!status.isRetweet()) {
                		//# ツイートの内容を取得＆URLの検出・整形
        				String tmp = status.getText();
        				String regex = "\\b(https?|ftp|file)://[-a-zA-Z0-9+&@#/%?=~_|!:,.;]*[-a-zA-Z0-9+&@#/%=~_|]";
        				Pattern pattern = Pattern.compile(regex);
        				Matcher matcher = pattern.matcher(tmp);
        				while(matcher.find()) {
        					String tmp_url = "<a href=\""+matcher.group()+"\" target=\"_blank\">"+matcher.group()+"</a>";
        					tmp = tmp.replace(matcher.group(),tmp_url);
        				}
        				//# ツイートの日付をyyyymmddに整形
        				SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
        				String formatdate = sdf.format(status.getCreatedAt());
        				
                    	//# ツイートに関する各種データのprint
                    	//# Date: ツイート日
                    	//# Tweet Id: ツイートのID
                    	//# retweet count: リツイートされた回数
                    	//# favorite count: いいねの数
                    	//# Contents: ツイートの内容を取得 
                    	date.add(formatdate);
                    	tweetid.add(status.getId());
                    	favcnt.add(status.getFavoriteCount());
                    	retcnt.add(status.getRetweetCount());
                    	content.add(tmp);

                    	//# 「累計」いいね数を更新
                        count_like = count_like + status.getFavoriteCount();
                        //# 「累計」リツイート数
        	        	count_retweet = count_retweet + status.getRetweetCount();
        	        	counter++;          		
                	}
                }
                pgcount++;
            }while(statusList.size()!=0 && pgcount < 100);

	    }catch (TwitterException ex){
	    	ex.printStackTrace();
	    }
		//####(6)結果格納・画面遷移
		//# 結果をリクエストオブジェクトにセット
		request.setAttribute("result1",tweetid);
		request.setAttribute("result2",date);
		request.setAttribute("result3",favcnt);
		request.setAttribute("result4",retcnt);
		request.setAttribute("result5",content);
	    
		//# 画面遷移
		RequestDispatcher dispatch = request.getRequestDispatcher(forwardpage);
		dispatch.forward(request, response);
		//doGet(request, response);
	}
}
