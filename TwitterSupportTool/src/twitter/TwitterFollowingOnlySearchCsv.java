package twitter;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.FollowingOnly;
import utils.RoutingTable;

@WebServlet(RoutingTable.followonly_csv)
public class TwitterFollowingOnlySearchCsv extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//#### 変数定義など
		//# エンコーディング方式の設定
		String filename = "FollowingOnlySearchQuery.csv";
		request.setCharacterEncoding("UTF-8");
		response.setHeader("Content-Type", "text/csv; charset=SHIFT-JIS");
		response.setHeader("Content-Disposition", "attachment; filename=\""+filename+"\"");

		//# 出力結果のヘッダー作成
		PrintWriter out = response.getWriter();
		out.append("No.,").append("フォローしてるユーザID,").append("自分のフォロワーか？,").append("フォローしてる人のフォロワー数,").append("フォローしてる人のユーザ名,").append("フォローしてる人のID\n");
		
		//# 検索対象キーワードの取得
		String searchTarget = (String) request.getSession().getAttribute("username");
		System.out.println("# ======== search target:"+searchTarget);

		//# 検索結果から１Statusずつ、ツイート内容を最終結果に格納
        //# カウンター変数
		int counter = 1;
		
		//# 直近のツイートを取得
		System.out.println("# ======== csv generate get RETWEETER LIST START");
		FollowingOnly fo = (FollowingOnly) request.getSession().getAttribute("FollowingOnly");
		System.out.println("# ======== csv generate get RETWEETER LIST END");
		for(int i=0; i<fo.getId().size(); i++){

    		//# ユーザ名の文字列に対するエスケープ処理＆改行置換
			String tmp = fo.getFollowingName().get(i);
			if(tmp.contains("\"")) {tmp = tmp.replace("\"", "\"\"");}
			if(tmp.contains(",")) {tmp = "\""+tmp+"\"";}
			if(tmp.contains("\n")) {tmp = tmp.replace("\n","");}
			if(tmp.contains("\r")) {tmp = tmp.replace("\r","");}
			
	    	//# リツイーターの一覧データのprint
	    	out.append(counter+",");
			out.append(fo.getUser().get(i)+",");
			out.append(fo.getIsFollower().get(i)+",");
			out.append(fo.getFollowerCnt().get(i)+",");
			out.append(tmp+",");
			out.append("'"+fo.getId().get(i)+"\n");

	    	counter++;  
		}
	}
}
