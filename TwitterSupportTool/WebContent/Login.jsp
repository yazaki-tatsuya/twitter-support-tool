<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="utils.RoutingTable" %>
<!DOCTYPE html>
<html class="font_1">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href=<%=RoutingTable.twitter_css_auth %>>
<title>Login to Twitter Support Tool</title>
	<img src="https://rainbow-engine.com/wp-content/uploads/Common/20200725_HeaderIcon.jpg" alt="" class="header_img"/><br /><br />
	<center>
	<h2 id="mokuji">Twitter Support Tool ログイン</h2>
	</center>
</head>
<body>
<form method="POST" action="j_security_check" name="loginform">
<table border="0">
	<tr>
		<th align="right">User:</th>
		<td><input type="text" name="j_username" /></td>
	</tr>
	<tr>
		<th align="right">Password:</th>
		<td><input type="password" name="j_password" /></td>
	</tr>
	<tr>
		<td>
			<input type="submit" value="ログイン" />
			<input type="reset" value="クリア" />
		</td>
	</tr>
</table>
</form>
</body>
</html>