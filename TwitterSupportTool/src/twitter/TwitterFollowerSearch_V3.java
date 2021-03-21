package twitter;
import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import functions.FollowerInfo;
import models.FollowersList;
import models.OperationLog;
import models.RateLimitMonitor;
import twitter4j.User;
import utils.DbConnectUtil3;
import utils.LogMsg;
import utils.RoutingTable;

@WebServlet(RoutingTable.followerV3_sv)
public class TwitterFollowerSearch_V3 extends HttpServlet {

	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		DbConnectUtil3 db = new DbConnectUtil3();
		
		//## RateLimit回避の総数チェック対応(Remaining×Unit＜followerの判定)
		System.out.println("# [SV_④v3] === [RateLimit] Avoid Rate Limit Exceed START ===");
		FollowerInfo fi = new FollowerInfo();
		RateLimitMonitor rlm = new RateLimitMonitor();
		//# ①残照会可能件数（ページ単位=Max200×RateLimit残コール総回数×安全率）
		//# 入り口チェック用
		int unit_number = RoutingTable.unitpage_follow200;
		int remain_call = rlm.remain_followerlist;
		double remaintotal = unit_number * remain_call * RoutingTable.safety_ratio;
		//# V2→V3切り替え判断用
		int max_call = rlm.total_followerlist;

		//# ②照会予定のフォロワー数（①と比較する対象）
		int followernum = fi.getFollowerCount(request.getParameter("searchUser"));
		System.out.println("# [SV_④v3] [RateLimit] follower="+followernum+" remaining="+(int)remaintotal);

		//# ユーザが１日の利用上限を超えている場合
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
		//# 　②照会予定のフォロワー数(followernum)
		else if(followernum > (int)remaintotal) {
			System.out.println("# [SV_④v3] [RateLimit] NOT ENOUGH REMAINING ");
			System.out.println("# [SV_④v3] === [RateLimit] Avoid Rate Limit Exceed END ===");
			//# 遷移先画面
			String forwardpage = "./ApplicationBusy.jsp";
			
			//# 画面遷移
			RequestDispatcher dispatch = request.getRequestDispatcher(forwardpage);
			dispatch.forward(request, response);					
		}
		//# フォロワー０人の場合
		//# [20210315] 0件時ハンドリング
		//# 照会結果が完全に0件の場合 → 照会結果０件画面に遷移
		else if(followernum==0) {
			//# 遷移先画面
			String forwardpage0 = "./NoResultFound.jsp";
			request.setAttribute("0Error", "（このユーザーは現在フォロワーが０人です）");
			
			//# 画面遷移
			RequestDispatcher dispatch = request.getRequestDispatcher(forwardpage0);
			dispatch.forward(request, response);	                						
		}
		else {
			System.out.println("# [SV_④v3] === [RateLimit] Avoid Rate Limit Exceed END ===");
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
			(new OperationLog(new Date(),request.getRemoteUser(),LogMsg.sv4,searchTarget,"Get Followers Query START")).WriteLog();

			//# 最終結果の格納用
			FollowersList fl = new FollowersList();
			//List<Long> id = new ArrayList<Long>();
			//List<String> screen_name = new ArrayList<String>();
			//List<Integer> follower_count = new ArrayList<Integer>();
			//List<String> follower_name = new ArrayList<String>();
			
			//# 【※V3変更点】フォロワー情報の一括取得
			//#  getAllFollowersInfo　→　getAllFollowersInfoV2　に変更
			//#  getAllFollowersInfoV2の内部で空きKeyへの振り分け処理を実装
			//# [20210314]
			//# 　V2とV3を組み合わせたハイブリッド方式に変更
			int counter = 1;
			System.out.println("==== [SV_④v3] Get follower START");
			User[] followers = null;
			//# 【危険域】→V3（空きチェック方式）を使用
			//#  残コール数(remain_call)が全コール数(max_call)の1/2以下になった場合
			if(remain_call * 2 < max_call) {
				System.out.println("==== [SV_④v3] USE GET TWITTER V3: MaxCall="+max_call+" RemainCall="+remain_call*3);
				followers = fi.getAllFollowersInfoV2(searchTarget,"V3");
			}
			//# 【安全域】→V2（ランダム方式）を使用
			//#  入り口チェック値(remaintotal)に更に安全率を乗じた「remaintotal_safe」より少ない
			else {
				System.out.println("==== [SV_④v3] USE GET TWITTER V2");
				followers = fi.getAllFollowersInfoV2(searchTarget,"V2");
			}
			
			System.out.println("==== [SV_④v3] Get follower END");
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
						
						//System.out.println("====== [SV_④v3] counter = "+counter);
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
			(new OperationLog(new Date(),request.getRemoteUser(),LogMsg.sv4,searchTarget,"Get Followers Query END")).WriteLog();
			RequestDispatcher dispatch = request.getRequestDispatcher(forwardpage);
			dispatch.forward(request, response);
		}
	}
}
