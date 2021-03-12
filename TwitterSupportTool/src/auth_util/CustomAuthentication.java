package auth_util;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import utils.RoutingTable;

@WebServlet("/CustomAuthentication")
public class CustomAuthentication extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//# 遷移先画面
		//# 元々の要求画面の情報をLogin1.jspのhiddenフィールドを通じて取得★
		String redirect_success = RoutingTable.apphome + request.getParameter("orig_request");
		System.out.println("# [Login] --- forward screen : "+redirect_success);
		String forward_error = RoutingTable.apphome + "/LoginError.jsp";
		String user = request.getParameter("j_username");
		String passwd = request.getParameter("j_password");

		try {
			System.out.println("# [Login] --- login start");
			request.login(user, passwd);
			System.out.println("# [Login] --- login success");
			//# 画面遷移（独自ログイン時に相対パスが異常ない様forwardではなくRedirectで送る）
			response.sendRedirect(redirect_success);
		} catch(ServletException e) {
			e.printStackTrace();
			//# 画面遷移（独自ログイン時に相対パスが異常ない様forwardではなくRedirectで送る）
			response.sendRedirect(forward_error);
		}		
	}
}
