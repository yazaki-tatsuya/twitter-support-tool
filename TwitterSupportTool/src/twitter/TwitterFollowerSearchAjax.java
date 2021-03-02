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
import utils.DbConnectUtil3;
import utils.RoutingTable;

@WebServlet(RoutingTable.followerV2_sv)
public class TwitterFollowerSearchAjax extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//#### キー認証・Twitterクラスのインスタンス生成
	CommonUtil cu = new CommonUtil();
	Twitter twitter = cu.getTwitterV2(RoutingTable.authkey_max);
	//# フォロワーのID一覧取得用（FollowerInfoクラス）
	FollowerInfo fi = new FollowerInfo();
	//# ユーザAPI使用回数制御用
	DbConnectUtil3 db = new DbConnectUtil3();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//csv出力用
		HttpSession session = request.getSession();
		System.out.println("# == [SV_④v2] Check value before setAttribute : "+session.getAttribute("finalstr"));
		if(session.getAttribute("finalstr")==null) {
			session.setAttribute("finalstr", "");
		}
		//####(1)変数定義など
		//# エンコーディング方式の設定
		request.setCharacterEncoding("UTF-8");
		response.setHeader("Content-Type", "text/html; charset=UTF-8");
		//# 検索対象ユーザーの取得		
		String searchTarget = request.getParameter("searchUser");
		//# 検索対象ユーザーのフォロワ一覧
		//# ↓getAllFollowersId内のgetFollowersIDsは15回/15分の制限あり
		long[] followerids = fi.getAllFollowersId(searchTarget);
		
		//# ループカウンタの値を取得
		int counter = Integer.parseInt(request.getParameter("Number"));
		int total = Integer.parseInt(request.getParameter("Total"));
		
		System.out.println("# == [SV_④v2] Counter status check cnt="+counter+" total="+total);
		//# フォロワー数＝カウンタ数（ラスト１回）に辿り着いたらAPI利用回数更新
		if(counter==total) {
			System.out.println("# ==== [SV_④v2] Counter Reachd Total cnt="+counter+" total="+total);
			//# DB接続・API利用回数更新
			db.DbUpdateApiUseCount(request.getRemoteUser());
			db.DbClose();
		}
		//# 結果画面で取得できるようsetAttribute
		request.setAttribute("targetuser", searchTarget);
		System.out.println("# ==== [SV_④v2] Check Target : "+searchTarget+" Loop Num: "+counter);
		
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
			//# 次のターンで取り出せるようにセッションに格納
			session.setAttribute("finalstr", tempstr);
			System.out.println("# ==== [SV_④v2] Check No."+counter+" tempstr : ");			
		} catch (TwitterException e) {
			e.printStackTrace();
		}
		
		response.getWriter().write(out0+out1+out2+out3+out4);
		System.out.println("# ====== [SV_④v2] Get temp result"+out0+out1+out2+out3+out4);
	}
}
