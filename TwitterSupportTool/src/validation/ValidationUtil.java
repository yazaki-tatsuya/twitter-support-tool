package validation;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.RequestDispatcher;

@WebServlet("/ValidationUtil")
public class ValidationUtil extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//#【共通】FunctionIDを見て処理を振り分け
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		//# エンコーディング方式の設定
		request.setCharacterEncoding("UTF-8");
		String func = request.getParameter("FunctionId");
		System.out.println("#### 1:"+func);
		if(func.equals("TWFAVSCH")) {TWFAVSCH_Validate(request,response);}
	}
	
	//#【共通】エラーメッセージを格納するためのArrayList
	public ArrayList<String> errs = null;
	
	//#【共通】requiredCheck()メソッド：必須入力チェック
	public void requiredCheck(String value, String name) {
		//もし「引数（value）がnull」OR「引数（value）の空白削除値が空」なら
		if(value==null || value.trim().isEmpty()) {
			//入力値がブランクであると見なし、入力を求めるメッセージを出力
			errs.add(name+" は入力必須項目です。値を入力して下さい。");
		}
	}
	
	//#【共通】getErrorList()メソッド：エラーメッセージ生成
	public String getErrorList() {
		StringBuffer buf = new StringBuffer();
		buf.append("<ul style='color:Red'>");
		if(errs.size()>0) {
			for(int i=0; i<errs.size(); i++) {
				buf.append("<li>"+errs.get(i)+"</li>");
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
	
	public void TWFAVSCH_Validate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		errs = new ArrayList<String>();
		errs.clear();
		//# 必須入力項目のチェックを実行
		//# (空なら「[項目名] is a mandatory～」のメッセージArrayListに格納)
		requiredCheck(request.getParameter("searchTag"),"ハッシュタグ");
		requiredCheck(request.getParameter("searchFav"),"いいね数");
		System.out.println("#### @Validation HashTag : "+request.getParameter("searchTag")+" FavCount: "+request.getParameter("searchFav"));
		//# エラーある場合
		if(hasErrors()) {
			//# エラーメッセージをリクエストの属性としてセット
			request.setAttribute("error_msg", getErrorList());
			//# エラーメッセージを表示するため、再び項目の入力画面に戻る
			String nextpage="/TwitterHashTagSearchWithFavQuery.jsp";
			RequestDispatcher rd = getServletContext().getRequestDispatcher(nextpage);
			rd.forward(request, response);
		}
		//# エラーない場合
		else {
			//# 次画面に渡すために再度パラメタを同名でセット
			HttpSession session = request.getSession();
			session.setAttribute("searchTag", request.getParameter("searchTag"));
			session.setAttribute("searchFav", request.getParameter("searchFav"));		
			//# バリデーションに問題がなければ次画面へ遷移
			String nextpage="/hashtag_search_with_fav";
			RequestDispatcher rd = getServletContext().getRequestDispatcher(nextpage);
			rd.forward(request, response);
		}
	}

}