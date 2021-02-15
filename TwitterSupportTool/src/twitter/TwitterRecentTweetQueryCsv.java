package twitter;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
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

@WebServlet("/recent_tweet_search_csv")
public class TwitterRecentTweetQueryCsv extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//#### キー認証・Twitterクラスのインスタンス生成
		CommonUtil cu = new CommonUtil();
		Twitter twitter = cu.getTwitter();
		
		//#### 変数定義など
		//# エンコーディング方式の設定
		String filename = "RecentTweetQuery.csv";
		request.setCharacterEncoding("UTF-8");
		response.setHeader("Content-Type", "text/csv; charset=SHIFT-JIS");
		response.setHeader("Content-Disposition", "attachment; filename=\""+filename+"\"");

		//# 出力結果のヘッダー作成
		PrintWriter out = response.getWriter();
		out.append("No.,").append("Tweet日付,").append("TweetのID,").append("いいね数,").append("リツイート数,").append("Tweet内容\n");
		
		//# 検索対象キーワードの取得
		String searchTarget = (String) request.getSession().getAttribute("username");
		System.out.println(searchTarget);

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
                		//# ツイートの文字列に対するエスケープ処理＆改行置換
        				String tmp = status.getText();
        				if(tmp.contains("\"")) {tmp = tmp.replace("\"", "\"\"");}
        				if(tmp.contains(",")) {tmp = "\""+tmp+"\"";}
        				if(tmp.contains("\n")) {tmp = tmp.replace("\n","");}
        				if(tmp.contains("\r")) {tmp = tmp.replace("\r","");}
        				
        				//# ツイートの日付をyyyymmddに整形
        				SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
        				String formatdate = sdf.format(status.getCreatedAt());
        				
                    	//# ツイートに関する各種データのprint
                    	//# Date: ツイート日
                    	//# Tweet Id: ツイートのID
                    	//# retweet count: リツイートされた回数
                    	//# favorite count: いいねの数
                    	//# Contents: ツイートの内容を取得                     	
                    	out.append(counter+",");
        				out.append(formatdate+",");
        				out.append("'"+status.getId()+",");
        				out.append(status.getFavoriteCount()+",");
        				out.append(status.getRetweetCount()+",");
        				out.append(tmp+"\n");

                    	//# 「累計」いいね数を更新
                        count_like = count_like + status.getFavoriteCount();
                        //# 「累計」リツイート数
        	        	count_retweet = count_retweet + status.getRetweetCount();
        	        	counter++;          		
                	}
                }
                pgcount++;
            }while(statusList.size()!=0 && pgcount < 10);
	    }catch (TwitterException ex){
	    	ex.printStackTrace();
	    }				
	}
}
