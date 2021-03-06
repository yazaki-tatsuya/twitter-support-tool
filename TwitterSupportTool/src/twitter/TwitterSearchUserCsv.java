package twitter;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.SearchUsersList;
import utils.RoutingTable;

@WebServlet(RoutingTable.user_csv)
public class TwitterSearchUserCsv extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("# ======== csv generate START");
		//#### 変数定義など
		//# エンコーディング方式の設定
		String filename = "SearchUsersList.csv";
		request.setCharacterEncoding("UTF-8");
		response.setHeader("Content-Type", "text/csv; charset=SHIFT-JIS");
		response.setHeader("Content-Disposition", "attachment; filename=\""+filename+"\"");

		//# 出力結果のヘッダー作成
		PrintWriter out = response.getWriter();
		out.append("No.,").append("ユーザー名,").append("ユーザーID,").append("公開／非公開,").append("直近のTweet内容\n");
		
		//# 検索対象キーワードの取得
		String searchTarget = (String) request.getSession().getAttribute("keyword_val");
		System.out.println("# ======== csv generate target: "+searchTarget);

		//# 検索結果から１Statusずつ、ツイート内容を最終結果に格納
        //# カウンター変数
		int counter = 1;
		
		//# 直近のツイートを取得
		System.out.println("# ======== csv generate get RETWEETER LIST START");
		SearchUsersList ul = (SearchUsersList) request.getSession().getAttribute("SearchUsersList");
		System.out.println("# ======== csv generate get RETWEETER LIST END");
		for(int i=0; i<ul.getUserId().size(); i++){

    		//# ツイートの文字列に対するエスケープ処理＆改行置換
			String tmp = ul.getNewTweet().get(i);
			if(tmp.contains("\"")) {tmp = tmp.replace("\"", "\"\"");}
			if(tmp.contains(",")) {tmp = "\""+tmp+"\"";}
			if(tmp.contains("\n")) {tmp = tmp.replace("\n","");}
			if(tmp.contains("\r")) {tmp = tmp.replace("\r","");}
			
	    	//# リツイーターの一覧データのprint
	    	out.append(counter+",");
			out.append(ul.getUserName().get(i)+",");
			out.append(ul.getUserId().get(i)+",");
			out.append(ul.getIsLocked().get(i)+",");
			out.append("'"+tmp+"\n");

	    	counter++;  
		}
		System.out.println("# ======== csv generate END");
	}
}
