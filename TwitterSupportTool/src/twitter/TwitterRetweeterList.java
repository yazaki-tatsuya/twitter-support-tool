package twitter;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import functions.FollowerInfo;
import functions.RetweeterInfo;
import models.RetweetersList;
import twitter4j.Status;
import utils.DbConnectUtil3;
import utils.RoutingTable;

@WebServlet(RoutingTable.retweet_sv)
public class TwitterRetweeterList extends HttpServlet {

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
			long searchTweet = Long.parseLong(request.getParameter("searchTweet"));
			String searchUser = request.getParameter("searchUser");
			request.setAttribute("tweetid", searchTweet);
			request.setAttribute("userid", searchUser);	
			//# 遷移先画面
			String forwardpage = RoutingTable.retweet_r;
			System.out.println("# == [SV_⑤] Forward page = "+forwardpage);

			//# 最終結果の格納用
			RetweetersList rt = new RetweetersList();
//			List<String> user = new ArrayList<String>();
//			List<Long> id = new ArrayList<Long>();
//			List<String> isFollower = new ArrayList<String>();
				
			//# 検索結果から１Statusずつ、ツイート内容を最終結果に格納
			//# ①リツイートした人のIDを取得（100件の取得制限あり）
			RetweeterInfo ri = new RetweeterInfo();
			System.out.println("# == [SV_⑤] Get retweet info START");
			List<Status> statuses = ri.getRetweeterInfo(searchTweet);
			System.out.println("# == [SV_⑤] Get retweet info END");

			//# ②フォロワーのIDを取得
			FollowerInfo fi = new FollowerInfo();
			System.out.println("# == [SV_⑤] Get follower info START");
			//long[] followersid = fi.getAllFollowersId(searchUser);
			long[] followersid = fi.getAllFollowersId_Full(searchUser);
			System.out.println("# == [SV_⑤] Get follower info END");
			
			//# リツイートした人がフォロワーかどうか？チェック(①と②の突合)
			if(statuses != null) {
				//# リツイートした人を順番にループ
				for(Status status : statuses) {					
					boolean hitflag = false;
					//# フォロワーIDを順番にループ
					for(long followerid : followersid) {
						//# 一致したら、リツイートした人はあなたのフォロワー
						if(status.getUser().getId() == followerid) {
							hitflag = true;
						}
					}
					//user.add(status.getUser().getScreenName());
					//id.add(status.getUser().getId());
					rt.setUser(status.getUser().getScreenName());
					rt.setId(status.getUser().getId());
					if(hitflag==true) {
						//isFollower.add("○（YES）");
						rt.setIsFollower("○（YES）");
					}else {
						//isFollower.add("✕（NO）");
						rt.setIsFollower("✕（NO）");
					}
				}				
			}
			//####(6)結果格納・画面遷移
			//# 結果をリクエストオブジェクトにセット
//			request.setAttribute("result1",user);
//			request.setAttribute("result2",id);
//			request.setAttribute("result3",isFollower);
			request.setAttribute("RetweetersList",rt);
			//# 画面遷移
			RequestDispatcher dispatch = request.getRequestDispatcher(forwardpage);
			dispatch.forward(request, response);			
		}		
	}
}
