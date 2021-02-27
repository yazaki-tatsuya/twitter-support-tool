<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="utils.RoutingTable" %>
<!DOCTYPE html>
<html class="font_1 background">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0" />
<link rel="stylesheet" type="text/css" href=<%=RoutingTable.twitter_css_auth %>>
<title>Login to Twitter Support Tool</title>
	<center>
	<h2 id="mokuji">Twitter Support Tool ログイン</h2>
	</center>
</head>
<body>
<form method="POST" action="../CustomAuthentication" name="loginform">
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
<input id="origrequest" type="hidden" name="orig_request" value="<%=request.getAttribute("javax.servlet.forward.request_uri").toString().replace(request.getContextPath(), "") %>"/>
</form>
</body>
</html>