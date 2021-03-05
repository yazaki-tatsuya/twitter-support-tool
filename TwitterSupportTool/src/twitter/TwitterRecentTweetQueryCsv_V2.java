package twitter;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.RecentTweets;
import utils.RoutingTable;

@WebServlet(RoutingTable.recentV2_csv)
public class TwitterRecentTweetQueryCsv_V2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("# ======== csv generate START");
		//#### 変数定義など
		//# エンコーディング方式の設定
		String filename = "RecentTweetQuery.csv";
		request.setCharacterEncoding("UTF-8");
		response.setHeader("Content-Type", "text/csv; charset=SHIFT-JIS");
		response.setHeader("Content-Disposition", "attachment; filename=\""+filename+"\"");

		//# 出力結果のヘッダー作成
		PrintWriter out = response.getWriter();
		out.append("No.,").append("Tweet日付,").append("いいね数,").append("リツイート数,").append("Tweet内容,").append("TweetのID\n");
		
		//# 検索対象キーワードの取得
		String searchTarget = (String) request.getSession().getAttribute("username");
		System.out.println("# ======== csv generate target: "+searchTarget);

		//# 検索結果から１Statusずつ、ツイート内容を最終結果に格納
		//# 合計いいね数
		int count_like = 0;
		//# 合計リツイート数
		int count_retweet = 0;
        //# カウンター変数
		int counter = 1;
		
		//# 直近のツイートを取得
		System.out.println("# ======== csv generate get Recent Tweets START");
		RecentTweets rc = (RecentTweets) request.getSession().getAttribute("RecentTweets");
		System.out.println("# ======== csv generate get Recent Tweets END");
		for(int i=0; i<rc.getTweetId().size(); i++){
			//# ツイートの文字列に対するエスケープ処理＆改行置換
			String tmp = rc.getContent().get(i);
			if(tmp.contains("\"")) {tmp = tmp.replace("\"", "\"\"");}
			if(tmp.contains(",")) {tmp = "\""+tmp+"\"";}
			if(tmp.contains("\n")) {tmp = tmp.replace("\n","");}
			if(tmp.contains("\r")) {tmp = tmp.replace("\r","");}
			
	    	//# ツイートに関する各種データのprint
	    	//# Date: ツイート日
	    	//# Tweet Id: ツイートのID
	    	//# retweet count: リツイートされた回数
	    	//# favorite count: いいねの数
	    	//# Contents: ツイートの内容を取得                     	
	    	out.append(counter+",");
			out.append(rc.getDate().get(i)+",");
			out.append(rc.getFavCnt().get(i)+",");
			out.append(rc.getRetCnt().get(i)+",");
			out.append(tmp+",");
			out.append("'"+rc.getTweetId().get(i)+"\n");

	    	//# 「累計」いいね数を更新
	        count_like = count_like + rc.getFavCnt().get(i);
	        //# 「累計」リツイート数
	    	count_retweet = count_retweet + rc.getRetCnt().get(i);
	    	counter++;  
		}
		System.out.println("# ======== csv generate END");
	}
}
