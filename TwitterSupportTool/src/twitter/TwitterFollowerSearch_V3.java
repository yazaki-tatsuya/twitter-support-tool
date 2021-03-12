package twitter;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import functions.FollowerInfo;
import models.FollowersList;
import twitter4j.User;
import utils.DbConnectUtil3;
import utils.GetRateLimit;
import utils.RoutingTable;

@WebServlet(RoutingTable.followerV3_sv)
public class TwitterFollowerSearch_V3 extends HttpServlet {

	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		DbConnectUtil3 db = new DbConnectUtil3();
		
		//## RateLimitExceed対応(Remaining * Unit < followerの判定)
		GetRateLimit rl = new GetRateLimit();
		FollowerInfo fi = new FollowerInfo();
		int ratelimit = rl.getRemainingLimit(RoutingTable.getFollowersList);
		//# 残照会可能件数（ページ単位=Max200 × RateLimit残コール回数）
		int remaining = RoutingTable.pagelimit_follow200 * rl.getRemainingLimit(RoutingTable.getFollowersList);
		int followernum = FollowerInfo.getFollowerCount(request.getParameter("searchUser"));
		System.out.println("# [RateLimit] follower="+followernum+" remaining="+remaining);

		//# ユーザが１日の利用上限を超えている場合
		if(db.DbUserUseCount(request.getRemoteUser())>=RoutingTable.api_limit) {
			db.DbClose();
			//# 遷移先画面
			String forwardpage = "./LimitExceedError.jsp";
			
			//# 画面遷移
			RequestDispatcher dispatch = request.getRequestDispatcher(forwardpage);
			dispatch.forward(request, response);					
		}
		//# APIのRateLimit=0の場合 or 検索対象フォロワー数(followernum)＞残数(ratelimit * 単位件数=remaining)の場合
		else if(ratelimit==0 || followernum > remaining) {
			System.out.println("# [RateLimit] &&&&&&&& not enough remaining ");
			//# 遷移先画面
			String forwardpage = "./ApplicationBusy.jsp";
			
			//# 画面遷移
			RequestDispatcher dispatch = request.getRequestDispatcher(forwardpage);
			dispatch.forward(request, response);					
		}
		else {
			//# DB接続・API利用回数更新
			db.DbUpdateApiUseCount(request.getRemoteUser());
			db.DbClose();

			//#### 変数定義など
			//# エンコーディング方式の設定
			request.setCharacterEncoding("UTF-8");
			//# 検索対象キーワードの取得
			String searchTarget = request.getParameter("searchUser");
			request.setAttribute("targetuser", searchTarget);	
			System.out.println("# == [SV_④v3] setAttribute keyword = "+searchTarget);
			//# 遷移先画面
			String forwardpage = RoutingTable.followerV3_r;
			System.out.println("# == [SV_④v3] Forward page : "+forwardpage);

			//# 最終結果の格納用
			FollowersList fl = new FollowersList();
			//List<Long> id = new ArrayList<Long>();
			//List<String> screen_name = new ArrayList<String>();
			//List<Integer> follower_count = new ArrayList<Integer>();
			//List<String> follower_name = new ArrayList<String>();
			
			//# 【※V3変更点】フォロワー情報の一括取得
			//#  getAllFollowersInfo　→　getAllFollowersInfoV2　に変更
			int counter = 1;
			System.out.println("==== [SV_④v3] get user START");
			User[] followers = fi.getAllFollowersInfoV2(searchTarget);
			System.out.println("==== [SV_④v3] get user END");
			if(followers != null) {
				for(User follower : followers) {
					if(follower != null) {
						fl.setId(follower.getId());
						fl.setUser(follower.getScreenName());
						fl.setFollowerCnt(follower.getFollowersCount());
						fl.setFollowerName(follower.getName());
//						id.add(follower.getId());
//						screen_name.add(follower.getScreenName());
//						follower_count.add(follower.getFollowersCount());
//						follower_name.add(follower.getName());
						
						System.out.println("====== [SV_④v3] counter = "+counter);
						counter++;
					}
				}
			}
			
			//####(6)結果格納・画面遷移
			//# 結果をリクエストオブジェクトにセット
			request.setAttribute("FollowersList",fl);
//			request.setAttribute("followersearch_1",id);
//			request.setAttribute("followersearch_2",screen_name);
//			request.setAttribute("followersearch_3",follower_count);
//			request.setAttribute("followersearch_4",follower_name);
			//# 画面遷移
			RequestDispatcher dispatch = request.getRequestDispatcher(forwardpage);
			dispatch.forward(request, response);
		}
	}
}
