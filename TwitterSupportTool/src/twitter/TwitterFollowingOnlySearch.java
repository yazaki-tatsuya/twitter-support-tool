package twitter;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import functions.FollowerInfo;
import functions.FollowingInfo;
import models.FollowingOnly;
import twitter4j.User;
import utils.DbConnectUtil3;
import utils.RoutingTable;

@WebServlet(RoutingTable.followonly_sv)
public class TwitterFollowingOnlySearch extends HttpServlet {

	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		DbConnectUtil3 db = new DbConnectUtil3();
		if(db.DbUserUseCount(request.getRemoteUser())>=RoutingTable.api_limit) {
			db.DbClose();
			//# 遷移先画面
			String forwardpage = "./LimitExceedError.jsp";
			
			//# 画面遷移
			RequestDispatcher dispatch = request.getRequestDispatcher(forwardpage);
			dispatch.forward(request, response);					
		}else {
			//# DB接続・API利用回数更新
			db.DbUpdateApiUseCount(request.getRemoteUser());
			db.DbClose();

			//#### 変数定義など
			//# エンコーディング方式の設定
			request.setCharacterEncoding("UTF-8");
			//# 検索対象キーワードの取得
			String searchTarget = request.getParameter("searchUser");
			request.setAttribute("targetuser", searchTarget);	
			System.out.println("# == [SV_⑥] setAttribute keyword = "+request.getParameter("searchUser"));
			//# 遷移先画面
			String forwardpage = RoutingTable.followonly_r;
			System.out.println("# == [SV_⑥] Forward page : "+forwardpage);

			//# 最終結果の格納用
			FollowingOnly fo = new FollowingOnly();
//			List<Long> id = new ArrayList<Long>();
//			List<String> is_follower = new ArrayList<String>();
//			List<String> screen_name = new ArrayList<String>();
//			List<Integer> follower_count = new ArrayList<Integer>();
//			List<String> following_name = new ArrayList<String>();
			
			//## 片思いユーザ情報の一覧取得（XXXXクラス）
			//#	フォローしている人一覧を取得
			FollowingInfo fling = new FollowingInfo();
			System.out.println("# == [SV_⑥] Get Friends START ");
			User[] followings = fling.getAllFollowingInfo(searchTarget);
			System.out.println("# == [SV_⑥] Get Friends END : "+followings.length);
			//# フォロワーのID一覧を取得
			FollowerInfo fled = new FollowerInfo();
			System.out.println("# == [SV_⑥] Get Followers START ");
			User[] followers = fled.getAllFollowersInfoV2(searchTarget);
			System.out.println("# == [SV_⑥] Get Followers END : "+followers.length);
			
			//# フォローしている人を１人ずつループ
			int counter=0;
			for(User following : followings) {
				if(following != null) {
					System.out.println("# ====== [SV_⑥] CheckFollowing No."+counter+": "+following.getScreenName()+" "+following.getId());
					//# 自分のフォロワーかどうかチェック	
					//# フォロワーの数だけループしてIDの一致をチェック
					boolean isFollower = false;
					int tmp = 0;
					for(User follower : followers) {
						if(follower != null) {
							System.out.println("# ========== [SV_⑥] CheckFollower No."+tmp+" : "+follower.getScreenName()+" "+follower.getId());
							if(following.getId()==follower.getId()) {
								isFollower = true;
							}
							tmp++;	
						}
					}
					counter++;
					//# フォローしている人の各種情報をArrayListに格納	
					if(following != null) {
						fo.setId(following.getId());
						if(isFollower) {fo.setIsFollower("○(YES)");}else {fo.setIsFollower("✕(NO)");}
						fo.setUser(following.getScreenName());
						fo.setFollowerCnt(following.getFollowersCount());
						fo.setFollowingName(following.getName());
						
//						id.add(following.getId());
//						if(isFollower) {is_follower.add("○(YES)");}else {is_follower.add("✕(NO)");}
//						screen_name.add(following.getScreenName());
//						follower_count.add(following.getFollowersCount());
//						following_name.add(following.getName());					
					}		
				}	
			}
			
			//####(6)結果格納・画面遷移
			//# 結果をリクエストオブジェクトにセット
			request.setAttribute("FollowingOnly",fo);
//			request.setAttribute("followingonly_1",id);
//			request.setAttribute("followingonly_2",screen_name);
//			request.setAttribute("followingonly_3",is_follower);
//			request.setAttribute("followingonly_4",follower_count);
//			request.setAttribute("followingonly_5",following_name);
			//# 画面遷移
			RequestDispatcher dispatch = request.getRequestDispatcher(forwardpage);
			dispatch.forward(request, response);
		}
	}
}
