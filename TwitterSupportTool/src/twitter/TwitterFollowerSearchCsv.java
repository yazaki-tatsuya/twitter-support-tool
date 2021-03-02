package twitter;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.FollowersList;
import models.FollowingOnly;
import utils.RoutingTable;

@WebServlet(RoutingTable.followerV3_csv)
public class TwitterFollowerSearchCsv extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//#### 変数定義など
		//# エンコーディング方式の設定
		String filename = "FollowerSearchQuery.csv";
		request.setCharacterEncoding("UTF-8");
		response.setHeader("Content-Type", "text/csv; charset=SHIFT-JIS");
		response.setHeader("Content-Disposition", "attachment; filename=\""+filename+"\"");

		//# 出力結果のヘッダー作成
		PrintWriter out = response.getWriter();
		out.append("No.,").append("ユーザID,").append("フォロワー数,").append("ユーザ名,").append("システムID\n");
		
		//# 検索対象キーワードの取得
		String searchTarget = (String) request.getSession().getAttribute("targetuser_val");
		System.out.println("# ======== search target:"+searchTarget);

		//# 検索結果から１Statusずつ、ツイート内容を最終結果に格納
        //# カウンター変数
		int counter = 1;
		
		//# 直近のツイートを取得
		System.out.println("# ======== csv generate get FOLLOWERS LIST START");
		FollowersList fl = (FollowersList) request.getSession().getAttribute("FollowersList");
		System.out.println("# ======== csv generate get FOLLOWERS LIST END");
		for(int i=0; i<fl.getId().size(); i++){

    		//# ユーザ名の文字列に対するエスケープ処理＆改行置換
			String tmp = fl.getFollowerName().get(i);
			if(tmp.contains("\"")) {tmp = tmp.replace("\"", "\"\"");}
			if(tmp.contains(",")) {tmp = "\""+tmp+"\"";}
			if(tmp.contains("\n")) {tmp = tmp.replace("\n","");}
			if(tmp.contains("\r")) {tmp = tmp.replace("\r","");}
			
	    	//# フォロワーの一覧データのprint
	    	out.append(counter+",");
			out.append(fl.getUser().get(i)+",");
			out.append(fl.getFollowerCnt().get(i)+",");
			out.append(tmp+",");
			out.append("'"+fl.getId().get(i)+"\n");

	    	counter++;  
		}
	}
}
