package twitter;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.RetweetersList;
import utils.RoutingTable;

@WebServlet(RoutingTable.retweet_csv)
public class TwitterRetweeterListCsv extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("# ======== csv generate START");
		//#### 変数定義など
		//# エンコーディング方式の設定
		String filename = "RetweeterList.csv";
		request.setCharacterEncoding("UTF-8");
		response.setHeader("Content-Type", "text/csv; charset=SHIFT-JIS");
		response.setHeader("Content-Disposition", "attachment; filename=\""+filename+"\"");

		//# 出力結果のヘッダー作成
		PrintWriter out = response.getWriter();
		out.append("No.,").append("ユーザーID,").append("あなたのフォロワーであるか？,").append("TweetのID\n");
		
		//# 検索対象キーワードの取得
		String searchTarget = (String) request.getSession().getAttribute("username");
		System.out.println("# ======== csv generate target: "+searchTarget);

		//# 検索結果から１Statusずつ、ツイート内容を最終結果に格納
        //# カウンター変数
		int counter = 1;
		
		//# 直近のツイートを取得
		System.out.println("# ======== csv generate get RETWEETER LIST START");
		RetweetersList rt = (RetweetersList) request.getSession().getAttribute("RetweetersList");
		System.out.println("# ======== csv generate get RETWEETER LIST END");
		for(int i=0; i<rt.getId().size(); i++){
			
	    	//# リツイーターの一覧データのprint
	    	out.append(counter+",");
			out.append(rt.getUser().get(i)+",");
			out.append(rt.getIsFollower().get(i)+",");
			out.append("'"+rt.getId().get(i)+"\n");

	    	counter++;  
		}
		System.out.println("# ======== csv generate END");
	}
}
