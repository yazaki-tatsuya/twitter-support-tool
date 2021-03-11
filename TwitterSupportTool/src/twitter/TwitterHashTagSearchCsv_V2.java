package twitter;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.HashTagSearchList;
import utils.RoutingTable;

@WebServlet(RoutingTable.hashtagV2_csv)
public class TwitterHashTagSearchCsv_V2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("# ======== csv generate START");		
		//#### 変数定義など
		//# エンコーディング方式の設定
		String filename = "HashTagSearchResult.csv";
		request.setCharacterEncoding("UTF-8");
		//response.setCharacterEncoding("SHIFT-JIS");
		//response.setContentType("text/csv; charset=SHIFT-JIS");
		response.setHeader("Content-Type", "text/csv; charset=SHIFT-JIS");
		response.setHeader("Content-Disposition", "attachment; filename=\""+filename+"\"");
		PrintWriter out = response.getWriter();
		out.append("No.,").append("Tweet日付,").append("ユーザーID,").append("Tweet内容,").append("いいね数,").append("リツイート数\n");
		
		//# 検索対象キーワードの取得
		String searchTarget = "#"+(String) request.getSession().getAttribute("hashtag_val");
		int favcount = Integer.parseInt(request.getSession().getAttribute("favcount_val").toString());
		System.out.println("# ======== csv generate target: "+searchTarget+" favcnt="+favcount);

        //# カウンター変数
		int counter = 1;
		
		//#### ハッシュタグによる検索
		//# セッションに保存した検索結果を取得
		System.out.println("# ======== csv generate get HashTag Search Result START");
		HashTagSearchList ht = (HashTagSearchList) request.getSession().getAttribute("HashTagSearchList");
		System.out.println("# ======== csv generate get HashTag Search Result END");
		for(int i=0; i<ht.getTweetId().size(); i++){
			//# ツイートの文字列に対するエスケープ処理＆改行置換
			String tmp = ht.getContent().get(i);
			if(tmp.contains("\"")) {tmp = tmp.replace("\"", "\"\"");}
			if(tmp.contains(",")) {tmp = "\""+tmp+"\"";}
			if(tmp.contains("\n")) {tmp = tmp.replace("\n","");}
			if(tmp.contains("\r")) {tmp = tmp.replace("\r","");}
			
	    	//# ツイートに関する各種データのprint
	    	//# Tweet Id: ツイートのID
	    	//# Date: ツイート日
	    	//# User Id: ツイートのID
	    	//# Contents: ツイートの内容を取得  
	    	//# favorite count: いいねの数
	    	//# retweet count: リツイートされた回数
                   	
	    	out.append(counter+",");
			out.append(ht.getDate().get(i)+",");
			out.append(ht.getUser().get(i)+",");
			out.append(tmp+",");
			out.append(ht.getFavCnt().get(i)+",");
			out.append(ht.getRetCnt().get(i)+"\n");
	    	counter++;  
		}
		System.out.println("# ======== csv generate END");
	}
}
