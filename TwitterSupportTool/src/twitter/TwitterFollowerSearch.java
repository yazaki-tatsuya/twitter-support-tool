package twitter;
import java.io.IOException;
import java.util.List;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import twitter4j.User;
import twitterapi_functions.FollowerInfo;

@WebServlet("/follower_search")
public class TwitterFollowerSearch extends HttpServlet {

	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//#### 変数定義など
		//# エンコーディング方式の設定
		request.setCharacterEncoding("UTF-8");
		//# 検索対象キーワードの取得
		String searchTarget = request.getParameter("searchUser");
		request.setAttribute("targetuser", searchTarget);	
		System.out.println("*******************"+searchTarget);
		//# 遷移先画面
		String forwardpage = "./TwitterGetFollowerResult.jsp";

		//# 最終結果の格納用
		List<Long> id = new ArrayList<Long>();
		List<String> screen_name = new ArrayList<String>();
		List<Integer> follower_count = new ArrayList<Integer>();
		List<String> follower_name = new ArrayList<String>();
		
		//# フォロワーのID一覧取得（FollowerInfoクラス）
		FollowerInfo fi = new FollowerInfo();
		User[] followers = fi.getAllFollowersInfo("Rainbow_Engine");
		if(followers != null) {
			for(User follower : followers) {
				id.add(follower.getId());
				screen_name.add(follower.getScreenName());
				follower_count.add(follower.getFollowersCount());
				follower_name.add(follower.getName());
			}
		}
		//####(6)結果格納・画面遷移
		//# 結果をリクエストオブジェクトにセット
		request.setAttribute("followersearch_1",id);
		request.setAttribute("followersearch_2",screen_name);
		request.setAttribute("followersearch_3",follower_count);
		request.setAttribute("followersearch_4",follower_name);
		//# 画面遷移
		RequestDispatcher dispatch = request.getRequestDispatcher(forwardpage);
		dispatch.forward(request, response);
		//doGet(request, response);
	}
}
