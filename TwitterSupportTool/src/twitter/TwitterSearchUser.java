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

import twitter4j.ResponseList;
import twitter4j.Twitter;
import twitter4j.TwitterException;
import twitter4j.User;

@WebServlet("/search_user")
public class TwitterSearchUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//#### キー認証・Twitterクラスのインスタンス生成
		CommonUtil cu = new CommonUtil();
		Twitter twitter = cu.getTwitter();
		
		//#### 変数定義など
		//# エンコーディング方式の設定
		request.setCharacterEncoding("UTF-8");
		//# 検索対象キーワードの取得
		String searchTarget = "#" + request.getParameter("searchUser");
		//# 遷移先画面
		String forwardpage = "./TwitterSearchUserResult.jsp";
		//# 最終結果の格納用
		List<String> result_name1 = new ArrayList<String>();
		List<String> result_name2 = new ArrayList<String>();
		List<String> result_stat1 = new ArrayList<String>();
		List<String> result_text1 = new ArrayList<String>();
		
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
                System.out.println("######### page="+page+" size="+users.size());
                if(page>1) {System.out.println(users.get(0).getScreenName()+" vs "+users_prev.getScreenName());}
                //「１ページ目」or「２ページ目以降で、前回と異なるセットである」
               	if(page == 1 || page > 1 && !users.get(0).getScreenName().equals(users_prev.getScreenName()) ) {              
	                for (User user : users) {
	                	if (user.getStatus() != null) {
	                    	result_name1.add(user.getName());
	                    	result_name2.add(user.getScreenName());
	                    	result_stat1.add("○：公開");
	                    	result_text1.add(user.getStatus().getText());
	                    } else {
	                        // 保護されたユーザー
	                    	result_name1.add(user.getName());
	                    	result_name2.add(user.getScreenName());
	                    	result_stat1.add("✕：非公開");
	                    	result_text1.add("-");
	                    }              		
	                }
                }
                users_prev = users.get(0);
                page++;                
            } while (users.size() > 0 && page < 25);
		} catch (TwitterException e1) {
			e1.printStackTrace();
		}
		//#### 結果格納・画面遷移
		//# 結果をリクエストオブジェクトにセット
		request.setAttribute("result_name1",result_name1);
		request.setAttribute("result_name2",result_name2);
		request.setAttribute("result_stat1",result_stat1);
		request.setAttribute("result_text1",result_text1);
		//# 画面遷移
		RequestDispatcher dispatch = request.getRequestDispatcher(forwardpage);
		dispatch.forward(request, response);
	}

}
