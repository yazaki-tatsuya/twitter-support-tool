package twitter;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import twitterapi_functions.FollowerInfo;
import utils.RoutingTable;

@WebServlet(RoutingTable.followerV2_clear)
public class TwitterFollowerSearchAjaxClear extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//# フォロワーのID一覧取得用（FollowerInfoクラス）
	FollowerInfo fi = new FollowerInfo();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		System.out.println("### 0-1: Check value before remove : "+session.getAttribute("finalstr"));
		session.removeAttribute("finalstr");
		String searchTarget = request.getParameter("searchUser");
		System.out.println("### 0-2: Check value of search taget : "+searchTarget);
		
		//# エンコーディング方式の設定
		request.setCharacterEncoding("UTF-8");
		response.setHeader("Content-Type", "text/html; charset=UTF-8");
		long[] followerid = fi.getAllFollowersId(searchTarget);
		System.out.println("### 1: Get lenght of follower : "+followerid.length);
		response.getWriter().write("5");
		//response.getWriter().write(String.valueOf(followerid.length));
		
	}
}
