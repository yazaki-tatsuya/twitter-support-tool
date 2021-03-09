package validation;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import utils.RoutingTable;
import javax.servlet.RequestDispatcher;
import twitterapi_functions.FollowerInfo;
import twitterapi_functions.FollowingInfo;
import twitterapi_functions.RetweeterInfo;

@WebServlet(RoutingTable.val_util)
public class ValidationUtil extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//#【共通】FunctionIDを見て処理を振り分け
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		//# エンコーディング方式の設定
		request.setCharacterEncoding("UTF-8");
		//# バリデーション対象画面の取得
		String func = request.getParameter("FunctionId");
		System.out.println("# == [Validation] Get Function Id:"+func);
		//# 対象画面のバリデーションを実施		
		if(func.equals("TWHTSRCH")) {TWHTSRCH_Validate(request,response);}
		//# (０１)ハッシュタグによるTweet検索_V2
		if(func.equals("TWFAVSCH")) {TWFAVSCH_Validate(request,response);}
		//# (０２)○○に関連するユーザー検索
		if(func.equals("TWSCHUSR")) {TWSCHUSR_Validate(request,response);}
		//# (０３)○○さんの直近Tweet検索
		if(func.equals("TWRECTWQ")) {TWRECTWQ_Validate(request,response);}
		//# (０３)○○さんの直近Tweet検索_V2
		if(func.equals("TWRECTWQ_v2")) {TWRECTWQ_Validate_V2(request,response);}
		//# (０４)○○さんのフォロワー検索_V3
		if(func.equals("TWFLWQUE_v3")) {TWFLWQUE_Validate_V3(request,response);}
		//# (０５)ツイートにRetweetした人の一覧出力
		if(func.equals("TWRETSCH")) {TWRETSCH_Validate(request,response);}
		//# (０６)片思い一覧
		if(func.equals("TWFRISCH")) {TWFRISCH_Validate(request,response);}
	}
	
	//#【共通】エラーメッセージを格納するためのArrayList
	public ArrayList<String> errs = null;
	
	//#【共通】requiredCheck()メソッド：必須入力チェック
	public void requiredCheck(String value, String name) {
		//もし「引数（value）がnull」OR「引数（value）の空白削除値が空」なら
		if(value==null || value.trim().isEmpty()) {
			//入力値がブランクであると見なし、入力を求めるメッセージを出力
			errs.add("「"+name+"」 は入力必須項目です。値を入力して下さい。");
		}
	}
	
	//#【共通】フォロワー数上限抵触チェック(getFollowersIDs用＝5000×15回）
	public void followerCountCheck_ids(String userid) {
		//もしフォロワー数がしきい値以上なら
		if(FollowerInfo.getFollowerCount(userid) > RoutingTable.followerlimit_ids) {
			int followercount = FollowerInfo.getFollowerCount(userid);
			//利用不可のメッセージを出力
			errs.add("申し訳ございません。ご指定のユーザIDはフォロワーが「"+RoutingTable.followerlimit_ids+"」人以上（"+followercount+" 人）のためご利用できません（システム制限の都合上）");
		}
	}
	
	//#【共通】フォロワー数上限抵触チェック(getFollowersLists用＝200単位×15回）
	public void followerCountCheck_lists(String userid) {
		//もしフォロワー数がしきい値以上なら
		if(FollowerInfo.getFollowerCount(userid) > RoutingTable.followerlimit_lists) {
			int followercount = FollowerInfo.getFollowerCount(userid);
			//利用不可のメッセージを出力
			errs.add("申し訳ございません。ご指定のユーザIDはフォロワーが「"+RoutingTable.followerlimit_lists+"」人以上（"+followercount+" 人）のためご利用できません（システム制限の都合上）");
		}
	}
	
	//#【共通】フォロワー数上限抵触チェック(getFriendsLists用＝200単位×15回）
	public void friendsCountCheck_lists(String userid) {
		//もしフォロワー数がしきい値以上なら
		if(FollowingInfo.getFollowingCount(userid) > RoutingTable.friendslimit_lists) {
			int friednscount = FollowingInfo.getFollowingCount(userid);
			//利用不可のメッセージを出力
			errs.add("申し訳ございません。ご指定のユーザIDはフォローしている人数が「"+RoutingTable.friendslimit_lists+"」人以上（"+friednscount+" 人）のためご利用できません（システム制限の都合上）");
		}
	}
	
	//#【共通】リツイート数上限抵触チェック
	public void retweeterCountCheck(long tweetid) {
		//もしリツイート数がしきい値以上なら
		if(RetweeterInfo.getRetweeterCount(tweetid) > RoutingTable.retweetcountlimit) {
			int retweetcount = RetweeterInfo.getRetweeterCount(tweetid);
			//利用不可のメッセージを出力
			errs.add("申し訳ございません。このツイートはリツイート数が100件以上（"+retweetcount+" 件)のためご利用になれません（システム制限の都合上）");
		}
	}
	
	//#【共通】getErrorList()メソッド：エラーメッセージ生成
	public String getErrorList() {
		StringBuffer buf = new StringBuffer();
		buf.append("<ul style='color:Red'>");
		if(errs.size()>0) {
			for(int i=0; i<errs.size(); i++) {
				buf.append("<li class=\"line_height\">"+errs.get(i)+"</li>");
			}
		}
		buf.append("</ul>");
		System.out.println("#### Error Message: "+buf.toString());
		return buf.toString();
	}

	//#【共通】エラーの有無チェック（エラーあればtrue）
	public boolean hasErrors() {
		return !this.errs.isEmpty();
	}
	
	//# (０１)ハッシュタグによるTweet検索
	public void TWHTSRCH_Validate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		errs = new ArrayList<String>();
		errs.clear();
		//# 必須入力項目のチェックを実行
		//# (空なら「[項目名] is a mandatory～」のメッセージArrayListに格納)
		requiredCheck(request.getParameter("searchTag"),"ハッシュタグ");
		//# エラーある場合
		if(hasErrors()) {
			//# エラーメッセージをリクエストの属性としてセット
			request.setAttribute("error_msg", getErrorList());
			//# エラーメッセージを表示するため、再び項目の入力画面に戻る
			String nextpage= "/" + RoutingTable.hashtag_q;
			//String nextpage="/TwitterHashTagSearchWithFavQuery.jsp";
			RequestDispatcher rd = getServletContext().getRequestDispatcher(nextpage);
			rd.forward(request, response);
		}
		//# エラーない場合
		else {
			System.out.println("# == 必須チェックを通過 ");
			//# 次画面に渡すために再度パラメタを同名でセット
			//# formの値(getParameter)をsessionに保存(setAttribute)
			HttpSession session = request.getSession();
			session.setAttribute("searchTag", request.getParameter("searchTag"));		
			System.out.println("# == setAttribute searchTag : "+request.getParameter("searchTag"));
			//# バリデーションに問題がなければ次画面へ遷移
			String nextpage = RoutingTable.hashtag_sv;
			//String nextpage="/hashtag_search_with_fav";
			RequestDispatcher rd = getServletContext().getRequestDispatcher(nextpage);
			rd.forward(request, response);
		}
	}

	//# (０１)ハッシュタグによるTweet検索_V2
	public void TWFAVSCH_Validate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		errs = new ArrayList<String>();
		errs.clear();
		//# 必須入力項目のチェックを実行
		//# (空なら「[項目名] is a mandatory～」のメッセージArrayListに格納)
		requiredCheck(request.getParameter("searchTag"),"ハッシュタグ");
		requiredCheck(request.getParameter("searchFav"),"いいね数");
		System.out.println("# == バリデーション対象 HashTag : "+request.getParameter("searchTag")+" FavCount: "+request.getParameter("searchFav"));
		//# エラーある場合
		if(hasErrors()) {
			//# エラーメッセージをリクエストの属性としてセット
			request.setAttribute("error_msg", getErrorList());
			//# エラーメッセージを表示するため、再び項目の入力画面に戻る
			String nextpage= "/" + RoutingTable.hashtagV2_q;
			RequestDispatcher rd = getServletContext().getRequestDispatcher(nextpage);
			rd.forward(request, response);
		}
		//# エラーない場合
		else {
			System.out.println("# == 必須チェックを通過 ");
			//# 次画面に渡すために再度パラメタを同名でセット
			//# formの値(getParameter)をsessionに保存(setAttribute)
			HttpSession session = request.getSession();
			session.setAttribute("searchTag", request.getParameter("searchTag"));
			session.setAttribute("searchFav", request.getParameter("searchFav"));		
			//# バリデーションに問題がなければ次画面へ遷移
			String nextpage = RoutingTable.hashtagV2_sv;
			RequestDispatcher rd = getServletContext().getRequestDispatcher(nextpage);
			rd.forward(request, response);
		}
	}
	
	//# (０２)○○に関連するユーザー検索
	public void TWSCHUSR_Validate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		errs = new ArrayList<String>();
		errs.clear();
		//# 必須入力項目のチェックを実行
		//# (空なら「[項目名] is a mandatory～」のメッセージArrayListに格納)
		requiredCheck(request.getParameter("searchUser"),"キーワード");
		//# エラーある場合
		if(hasErrors()) {
			//# エラーメッセージをリクエストの属性としてセット
			request.setAttribute("error_msg", getErrorList());
			//# エラーメッセージを表示するため、再び項目の入力画面に戻る
			String nextpage= "/" + RoutingTable.user_q;
			//String nextpage="/TwitterHashTagSearchWithFavQuery.jsp";
			RequestDispatcher rd = getServletContext().getRequestDispatcher(nextpage);
			rd.forward(request, response);
		}
		//# エラーない場合
		else {
			//# 次画面に渡すために再度パラメタを同名でセット
			HttpSession session = request.getSession();
			session.setAttribute("searchUser", request.getParameter("searchUser"));
			//# バリデーションに問題がなければ次画面へ遷移
			String nextpage = RoutingTable.user_sv;
			//String nextpage="/hashtag_search_with_fav";
			RequestDispatcher rd = getServletContext().getRequestDispatcher(nextpage);
			rd.forward(request, response);
		}
	}

	//# (０３)○○さんの直近Tweet検索
	public void TWRECTWQ_Validate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		errs = new ArrayList<String>();
		errs.clear();
		//# 必須入力項目のチェックを実行
		//# (空なら「[項目名] is a mandatory～」のメッセージArrayListに格納)
		requiredCheck(request.getParameter("searchUserTweet"),"ユーザーID");
		//# エラーある場合
		if(hasErrors()) {
			//# エラーメッセージをリクエストの属性としてセット
			request.setAttribute("error_msg", getErrorList());
			//# エラーメッセージを表示するため、再び項目の入力画面に戻る
			String nextpage= "/" + RoutingTable.recent_q;
			//String nextpage="/TwitterHashTagSearchWithFavQuery.jsp";
			RequestDispatcher rd = getServletContext().getRequestDispatcher(nextpage);
			rd.forward(request, response);
		}
		//# エラーない場合
		else {
			//# 次画面に渡すために再度パラメタを同名でセット
			HttpSession session = request.getSession();
			session.setAttribute("searchUserTweet", request.getParameter("searchUserTweet"));		
			//# バリデーションに問題がなければ次画面へ遷移
			String nextpage = RoutingTable.recent_sv;
			//String nextpage="/hashtag_search_with_fav";
			RequestDispatcher rd = getServletContext().getRequestDispatcher(nextpage);
			rd.forward(request, response);
		}
	}
	
	//# (０３)○○さんの直近Tweet検索_V2
	public void TWRECTWQ_Validate_V2(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		errs = new ArrayList<String>();
		errs.clear();
		//# 必須入力項目のチェックを実行
		//# (空なら「[項目名] is a mandatory～」のメッセージArrayListに格納)
		requiredCheck(request.getParameter("searchUserTweet"),"ユーザーID");
		//# エラーある場合
		if(hasErrors()) {
			//# エラーメッセージをリクエストの属性としてセット
			request.setAttribute("error_msg", getErrorList());
			//# エラーメッセージを表示するため、再び項目の入力画面に戻る
			String nextpage= "/" + RoutingTable.recentV2_q;
			//String nextpage="/TwitterHashTagSearchWithFavQuery.jsp";
			RequestDispatcher rd = getServletContext().getRequestDispatcher(nextpage);
			rd.forward(request, response);
		}
		//# エラーない場合
		else {
			//# 次画面に渡すために再度パラメタを同名でセット
			HttpSession session = request.getSession();
			session.setAttribute("searchUserTweet", request.getParameter("searchUserTweet"));		
			//# バリデーションに問題がなければ次画面へ遷移
			String nextpage = RoutingTable.recentV2_sv;
			//String nextpage="/hashtag_search_with_fav";
			RequestDispatcher rd = getServletContext().getRequestDispatcher(nextpage);
			rd.forward(request, response);
		}
	}

	//# (０４)○○さんのフォロワー検索
	public void TWFLWQUE_Validate_V3(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		errs = new ArrayList<String>();
		errs.clear();
		//# 必須入力項目のチェックを実行
		//# (空なら「[項目名] is a mandatory～」のメッセージArrayListに格納)
		requiredCheck(request.getParameter("searchUser"),"ユーザーID");
		followerCountCheck_lists(request.getParameter("searchUser"));
		//# エラーある場合
		if(hasErrors()) {
			//# エラーメッセージをリクエストの属性としてセット
			request.setAttribute("error_msg", getErrorList());
			//# エラーメッセージを表示するため、再び項目の入力画面に戻る
			String nextpage= "/" + RoutingTable.followerV3_q;
			//String nextpage="/TwitterHashTagSearchWithFavQuery.jsp";
			RequestDispatcher rd = getServletContext().getRequestDispatcher(nextpage);
			rd.forward(request, response);
		}
		//# エラーない場合
		else {
			//# 次画面に渡すために再度パラメタを同名でセット
			HttpSession session = request.getSession();
			session.setAttribute("searchUser", request.getParameter("searchUser"));		
			//# バリデーションに問題がなければ次画面へ遷移
			String nextpage = RoutingTable.followerV3_sv;
			//String nextpage="/hashtag_search_with_fav";
			RequestDispatcher rd = getServletContext().getRequestDispatcher(nextpage);
			rd.forward(request, response);
		}
	}
	
	//# (０５)ツイートにRetweetした人の一覧出力
	public void TWRETSCH_Validate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		errs = new ArrayList<String>();
		errs.clear();
		//# 必須入力項目のチェックを実行
		//# (空なら「[項目名] is a mandatory～」のメッセージArrayListに格納)
		requiredCheck(request.getParameter("searchTweet"),"ツイートID");
		requiredCheck(request.getParameter("searchUser"),"ユーザID");
		followerCountCheck_ids(request.getParameter("searchUser"));
		retweeterCountCheck(Long.parseLong(request.getParameter("searchTweet")));
		//# エラーある場合
		if(hasErrors()) {
			//# エラーメッセージをリクエストの属性としてセット
			request.setAttribute("error_msg", getErrorList());
			//# エラーメッセージを表示するため、再び項目の入力画面に戻る
			String nextpage= "/" + RoutingTable.retweet_q;
			//String nextpage="/TwitterHashTagSearchWithFavQuery.jsp";
			RequestDispatcher rd = getServletContext().getRequestDispatcher(nextpage);
			rd.forward(request, response);
		}
		//# エラーない場合
		else {
			//# 次画面に渡すために再度パラメタを同名でセット
			HttpSession session = request.getSession();
			session.setAttribute("searchUser", request.getParameter("searchUser"));	
			//# バリデーションに問題がなければ次画面へ遷移
			String nextpage = RoutingTable.retweet_sv;
			//String nextpage="/hashtag_search_with_fav";
			RequestDispatcher rd = getServletContext().getRequestDispatcher(nextpage);
			rd.forward(request, response);
		}
	}
	
	//# (０６)片思い一覧
	public void TWFRISCH_Validate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		errs = new ArrayList<String>();
		errs.clear();
		//# 必須入力項目のチェックを実行
		//# (空なら「[項目名] is a mandatory～」のメッセージArrayListに格納)
		requiredCheck(request.getParameter("searchUser"),"ユーザID");
		followerCountCheck_lists(request.getParameter("searchUser"));
		friendsCountCheck_lists(request.getParameter("searchUser"));
		//# エラーある場合
		if(hasErrors()) {
			//# エラーメッセージをリクエストの属性としてセット
			request.setAttribute("error_msg", getErrorList());
			//# エラーメッセージを表示するため、再び項目の入力画面に戻る
			String nextpage= "/" + RoutingTable.followonly_q;
			//String nextpage="/TwitterHashTagSearchWithFavQuery.jsp";
			RequestDispatcher rd = getServletContext().getRequestDispatcher(nextpage);
			rd.forward(request, response);
		}
		//# エラーない場合
		else {
			//# 次画面に渡すために再度パラメタを同名でセット
			HttpSession session = request.getSession();
			session.setAttribute("searchUser", request.getParameter("searchUser"));	
			//# バリデーションに問題がなければ次画面へ遷移
			String nextpage = RoutingTable.followonly_sv;
			//String nextpage="/hashtag_search_with_fav";
			RequestDispatcher rd = getServletContext().getRequestDispatcher(nextpage);
			rd.forward(request, response);
		}
	}
}