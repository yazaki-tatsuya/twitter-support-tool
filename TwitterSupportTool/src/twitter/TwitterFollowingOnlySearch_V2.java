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
import models.RateLimitMonitor;
import twitter4j.User;
import utils.DbConnectUtil3;
import utils.GetRateLimit;
import utils.RoutingTable;

@WebServlet(RoutingTable.followonly_sv2)
public class TwitterFollowingOnlySearch_V2 extends HttpServlet {

	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		DbConnectUtil3 db = new DbConnectUtil3();
		
		//## RateLimit回避の総数チェック対応(Remaining×Unit＜followerの判定)
		System.out.println("# [SV_⑥v2] === [RateLimit] Avoid Rate Limit Exceed START ===");
		FollowingInfo fi = new FollowingInfo();
		RateLimitMonitor rlm = new RateLimitMonitor();
		//# ①残照会可能件数（ページ単位=Max200×RateLimit残コール総回数×安全率）
		//# 入り口チェック用
		int unit_number = RoutingTable.unitpage_following200;
		int remain_call = rlm.remain_friendslist;
		double remaintotal = unit_number * remain_call * RoutingTable.safety_ratio;
		//# V2→V3切り替え判断用
		int max_call = rlm.total_friendslist;
		
		//# ②照会予定のフォロワー数（①と比較する対象）
		int following_num = fi.getFollowingCount(request.getParameter("searchUser"));
		System.out.println("# [SV_⑥v2] [RateLimit] following="+following_num+" remaining="+(int)remaintotal);

		
		if(db.DbUserUseCount(request.getRemoteUser())>=RoutingTable.api_limit) {
			db.DbClose();
			//# 遷移先画面
			String forwardpage = "./LimitExceedError.jsp";
			
			//# 画面遷移
			RequestDispatcher dispatch = request.getRequestDispatcher(forwardpage);
			dispatch.forward(request, response);					
		}
		//# 下記①と②を比較して「①＜②」の場合はビジー画面に遷移させる
		//# 　①残照会可能件数(remaintotal)
		//# 　②照会予定のフォロワー数(following_num)
		else if(following_num > (int)remaintotal) {
			System.out.println("# [SV_⑥v2] [RateLimit] NOT ENOUGH REMAINING ");
			System.out.println("# [SV_⑥v2] === [RateLimit] Avoid Rate Limit Exceed END ===");
			//# 遷移先画面
			String forwardpage = "./ApplicationBusy.jsp";
			
			//# 画面遷移
			RequestDispatcher dispatch = request.getRequestDispatcher(forwardpage);
			dispatch.forward(request, response);					
		}
		//# フォロー０人の場合
		//# [20210315] 0件時ハンドリング
		//# 照会結果が完全に0件の場合 → 照会結果０件画面に遷移
		else if(following_num==0) {
			//# 遷移先画面
			String forwardpage0 = "./NoResultFound.jsp";
			request.setAttribute("0Error", "（このユーザーは現在フォローしている人が０人です）");
			
			//# 画面遷移
			RequestDispatcher dispatch = request.getRequestDispatcher(forwardpage0);
			dispatch.forward(request, response);	                						
		}
		else {
			System.out.println("# [SV_⑥v2] === [RateLimit] Avoid Rate Limit Exceed END ===");
			//# DB接続・API利用回数更新
			db.DbUpdateApiUseCount(request.getRemoteUser());
			db.DbClose();

			//#### 変数定義など
			//# エンコーディング方式の設定
			request.setCharacterEncoding("UTF-8");
			//# 検索対象キーワードの取得
			String searchTarget = request.getParameter("searchUser");
			request.setAttribute("targetuser", searchTarget);	
			System.out.println("# == [SV_⑥v2] setAttribute keyword = "+request.getParameter("searchUser"));
			//# 遷移先画面
			String forwardpage = RoutingTable.followonly_r;
			System.out.println("# == [SV_⑥v2] Forward page : "+forwardpage);

			//# 最終結果の格納用
			FollowingOnly fo = new FollowingOnly();
//			List<Long> id = new ArrayList<Long>();
//			List<String> is_follower = new ArrayList<String>();
//			List<String> screen_name = new ArrayList<String>();
//			List<Integer> follower_count = new ArrayList<Integer>();
//			List<String> following_name = new ArrayList<String>();
			
			//## 片思いユーザ情報の一覧取得（XXXXクラス）
			//# [20210312]
			//# 　getAllFollowingInfo／getAllFollowersInfoV2ともに
			//# 　内部的にはEndpointの空き状況をチェックして空きKeyに割り振る処理を追加
			//#	フォローしている人一覧を取得
			System.out.println("# == [SV_⑥v2] Get Friends START ");
			User[] followings = null;
			//# 【危険域】→V3（空きチェック方式）を使用
			//#  残コール数(remain_call)が全コール数(max_call)の1/2以下になった場合
			if(remain_call * 2 < max_call) {
				System.out.println("==== [SV_⑥v2] USE GET TWITTER V3: MaxCall="+max_call+" RemainCall="+remain_call*3);
				followings = fi.getAllFollowingInfo(searchTarget,"V3");
			}
			//# 【安全域】→V2（ランダム方式）を使用
			//#  入り口チェック値(remaintotal)に更に安全率を乗じた「remaintotal_safe」より少ない
			else {
				System.out.println("==== [SV_⑥v2] USE GET TWITTER V2");
				followings = fi.getAllFollowingInfo(searchTarget,"V2");
			}
			
			System.out.println("# == [SV_⑥v2] Get Friends END : "+followings.length);
			//# フォロワーのID一覧を取得
			FollowerInfo fled = new FollowerInfo();
			System.out.println("# == [SV_⑥v2] Get Followers START ");
			//User[] followers = fled.getAllFollowersInfoV2(searchTarget);
			long[] followers = fled.getAllFollowersId_Full(searchTarget);
			//System.out.println("# == [SV_⑥] Get Followers END : "+followers.length);
			
			//# フォローしている人を１人ずつループ
			int counter=0;
			for(User following : followings) {
				if(following != null) {
					System.out.println("# ====== [SV_⑥v2] CheckFollowing No."+counter+": "+following.getScreenName()+" "+following.getId());
					//# 自分のフォロワーかどうかチェック	
					//# フォロワーの数だけループしてIDの一致をチェック
					boolean isFollower = false;
					int tmp = 0;
					for(Long follower : followers) {
						if(follower != null) {
							System.out.println("# ========== [SV_⑥v2] CheckFollower No."+tmp);
							if(following.getId()==follower) {
								isFollower = true;
							}
							tmp++;	
						}
					}					
//					for(User follower : followers) {
//						if(follower != null) {
//							System.out.println("# ========== [SV_⑥] CheckFollower No."+tmp+" : "+follower.getScreenName()+" "+follower.getId());
//							if(following.getId()==follower.getId()) {
//								isFollower = true;
//							}
//							tmp++;	
//						}
//					}
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
