<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="utils.RoutingTable, utils.DbConnectUtil3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="font_1 background">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0" />
<link rel="stylesheet" type="text/css" href=<%=RoutingTable.twitter_css_auth %>>
</head>
<body>
<%
	DbConnectUtil3 db = new DbConnectUtil3();
	int today_usecount = 0;
	//# 本日初ログインか？チェック
	boolean exist = db.DbUserExistCheck(request.getRemoteUser());
	//# 本日初ログインならテーブルに登録
	if(!exist){
		db.DbUserInsert(request.getRemoteUser());
	}
	//# 本日初でなければ、API利用回数を取得
	else{
		today_usecount = db.DbUserUseCount(request.getRemoteUser());
	}
%>
<table border="1">
	<tr><td>&#x2728;<%=request.getRemoteUser() %> 様&#x2728;<br />本日の利用回数：<%=today_usecount %>回</td></tr>
	<input type="button" value="ログアウト" onclick="location.href='<%=RoutingTable.logout_sv_btn %>'" style="float: right;" >
</table>
</body>
</html>