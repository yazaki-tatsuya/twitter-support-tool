package twitter;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import twitter4j.Twitter;
import twitter4j.TwitterException;
import twitter4j.User;
import twitterapi_functions.FollowerInfo;

/**
 * Servlet implementation class TwitterServlet
 */
@WebServlet("/follower_search2")
public class TwitterFollowerSearchAjax extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//#### キー認証・Twitterクラスのインスタンス生成
	CommonUtil cu = new CommonUtil();
	Twitter twitter = cu.getTwitter();
	//# フォロワーのID一覧取得用（FollowerInfoクラス）
	FollowerInfo fi = new FollowerInfo();	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//csv出力用
		HttpSession session = request.getSession();
		System.out.println("### 5: Check value before setAttribute : "+session.getAttribute("finalstr"));
		if(session.getAttribute("finalstr")==null) {
			session.setAttribute("finalstr", "");
		}
		//####(1)変数定義など
		//# エンコーディング方式の設定
		request.setCharacterEncoding("UTF-8");
		response.setHeader("Content-Type", "text/html; charset=UTF-8");
		//# 検索対象ユーザーの取得		
		String searchTarget = request.getParameter("searchUser");
		//# 検索対象ユーザーのフォロワ０一覧
		long[] followerids = fi.getAllFollowersId(searchTarget);
		//# ループカウンタの値を取得
		int counter = Integer.parseInt(request.getParameter("Number"));
		//# 結果画面で取得できるようsetAttribute
		request.setAttribute("targetuser", searchTarget);
		System.out.println("### 6: Check Target : "+searchTarget+" Loop Num: "+counter);
		
		//# i番目のフォロワー格納用
		User follower = null;
		String out0="",out1="",out2="",out3="",out4="";
		//# i番目のフォロワー情報を取得
		try {
			follower = twitter.showUser(followerids[counter]);
			out0 = "<tr><td>"+(counter+1)+"</td>";
			out1 = "<td>"+follower.getId()+"</td>";
			out2 = "<td>"+follower.getScreenName()+"</td>";
			out3 = "<td>"+follower.getFollowersCount()+"</td>";
			out4 = "<td>"+follower.getName()+"</td></tr>";
			
			//# i-1番目までの<table>文字列を取得
			String tempstr = (String)session.getAttribute("finalstr");
			//# i番目の<table>情報を追加
			tempstr = tempstr + follower.getId()+","+follower.getScreenName()+","+follower.getFollowersCount()+","+follower.getName()+"\n";
			session.setAttribute("finalstr", tempstr);
			System.out.println("### 7: Check No."+counter+" tempstr : "+session.getAttribute("finalstr"));
			
		} catch (TwitterException e) {
			e.printStackTrace();
		}
		
		response.getWriter().write(out0+out1+out2+out3+out4);
		System.out.println("### 8: Get temp result"+out0+out1+out2+out3+out4);
	}
}
