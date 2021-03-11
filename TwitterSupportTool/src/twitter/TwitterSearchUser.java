package twitter;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.SearchUsersList;
import twitter4j.ResponseList;
import twitter4j.Twitter;
import twitter4j.TwitterException;
import twitter4j.User;
import utils.DbConnectUtil3;
import utils.RoutingTable;

@WebServlet(RoutingTable.user_sv)
public class TwitterSearchUser extends HttpServlet {
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
			
			//#### キー認証・Twitterクラスのインスタンス生成
			CommonUtil cu = new CommonUtil();
			Twitter twitter = cu.getTwitterV2(RoutingTable.authkey_max);
			
			//#### 変数定義など
			//# エンコーディング方式の設定
			request.setCharacterEncoding("UTF-8");
			//# 検索対象キーワードの取得
			String searchTarget = "#" + request.getParameter("searchUser");
			request.setAttribute("keyword", request.getParameter("searchUser"));
			System.out.println("# == [SV_②] setAttribute keyword = "+request.getParameter("searchUser"));
			//# 遷移先画面
			String forwardpage = RoutingTable.user_r;
			System.out.println("# == [SV_②] Forward page = "+forwardpage);
			//# 最終結果の格納用
			//List<String> result_name1 = new ArrayList<String>();
			//List<String> result_name2 = new ArrayList<String>();
			//List<String> result_stat1 = new ArrayList<String>();
			//List<String> result_text1 = new ArrayList<String>();
			SearchUsersList ul = new SearchUsersList();
			System.out.println("# == [SV_②] Get User START ==");
			try {			
				//#### ハッシュタグによる検索
	            //# ページ番号（１ページ２０レコード） 
	            int page = 1;
	            //# 検索結果の格納用
	            ResponseList<User> users = null;
	            User users_prev = null;
	            //# クエリの発行・結果格納
	            do {
	                users = twitter.searchUsers(searchTarget, page);
	                System.out.println("# [SV_②] ==== page = "+page+" size="+users.size());
	                if(page>1) {System.out.println("# [SV_②] ======== checking prev 1st & next 1st records : "+users.get(0).getScreenName()+" vs "+users_prev.getScreenName());}
	                //「１ページ目」or「２ページ目以降で、前回と異なるセットである」なら取得処理に入る
	               	if(page == 1 || page > 1 && !users.get(0).getScreenName().equals(users_prev.getScreenName()) ) {              
		                for (User user : users) {
		                	if (user.getStatus() != null) {
		                		ul.setUserName(user.getName());
		                		ul.setUserId(user.getScreenName());
		                		ul.setIsLocked("○：公開");
		                		ul.setNewTweet(user.getStatus().getText());
//		                    	result_name1.add(user.getName());
//		                    	result_name2.add(user.getScreenName());
//		                    	result_stat1.add("○：公開");
//		                    	result_text1.add(user.getStatus().getText());
		                    } else {
		                        // 保護されたユーザー
		                		ul.setUserName(user.getName());
		                		ul.setUserId(user.getScreenName());
		                		ul.setIsLocked("✕：非公開");
		                		ul.setNewTweet("-");
//		                    	result_name1.add(user.getName());
//		                    	result_name2.add(user.getScreenName());
//		                    	result_stat1.add("✕：非公開");
//		                    	result_text1.add("-");
		                    }              		
		                }
	                }
	               	//# 次ページが同じ内容を重複取得してないか確認する為、セットの先頭ユーザ名記録
	                users_prev = users.get(0);
	                page++;
	                //# 【要改善】次ページの内容が同じでも、空ループしているため、while条件の改善が必要
	                //# →具体的には「!users.get(0).getScreenName().equals(users_prev.getScreenName())」をwhile条件に移す？
	            } while (users.size() > 0 && page < RoutingTable.user_pagelimit);
			} catch (TwitterException e1) {
				e1.printStackTrace();
			}
			System.out.println("# [SV_②] == Get User END ==");
			//#### 結果格納・画面遷移
			//# 結果をリクエストオブジェクトにセット
//			request.setAttribute("result_name1",result_name1);
//			request.setAttribute("result_name2",result_name2);
//			request.setAttribute("result_stat1",result_stat1);
//			request.setAttribute("result_text1",result_text1);
			request.setAttribute("SearchUsersList",ul);
			//# 画面遷移
			RequestDispatcher dispatch = request.getRequestDispatcher(forwardpage);
			dispatch.forward(request, response);		
		}
	}
}
