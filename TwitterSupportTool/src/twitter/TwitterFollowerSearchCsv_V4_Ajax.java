package twitter;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import utils.RoutingTable;

@WebServlet(RoutingTable.followerV4_csv)
public class TwitterFollowerSearchCsv_V4_Ajax extends HttpServlet {

	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//#### 変数定義など
		//# エンコーディング方式の設定
		String filename = "FollowerSearchResult.csv";
		request.setCharacterEncoding("UTF-8");
		response.setHeader("Content-Type", "text/csv; charset=SHIFT-JIS");
		response.setHeader("Content-Disposition", "attachment; filename=\""+filename+"\"");
		PrintWriter out = response.getWriter();
		out.append("ID,").append("ユーザーID,").append("フォロワー数,").append("ユーザー名\n");
		
		HttpSession session = request.getSession();
		System.out.println("# ======== [SV②v4-CSV]: "+session.getAttribute("finalstr"));
		
		out.append((String)session.getAttribute("finalstr"));
	}
}
