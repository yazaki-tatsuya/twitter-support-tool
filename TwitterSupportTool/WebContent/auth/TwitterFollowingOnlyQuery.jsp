<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List,utils.RoutingTable,utils.DbConnectUtil3" %>
<!DOCTYPE html>
<html class="font_1 background">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0" />
<link rel="stylesheet" type="text/css" href=<%=RoutingTable.twitter_css_auth %>>
<title>Following only search query</title>
</head>
<%@ include file="HeaderAuth.jsp" %>
	<h3 id="title" class="center title_narrow">片思い検索&nbsp;（検索画面）</h3>
	<h4 id="subtitle" class="center title_narrow">Search your friends who are not following you !</h4>
	<br />	
	<div class="center">指定した「ユーザー&#x1f466;&#x1f467;」がフォロー&#x1f493;してるけど、フォローバックされていない人（片思い&#x1f494;）の一覧を出力します。</div>
	<br />
	<div class="center">====================================</div>
	<br />
<body>
	<h3>【使い方】</h3>
	<label class="indent_1">検索したいユーザーID&#x1f194;を入力（@以降の部分）して、「検索」ボタンを押下します。</label><br /><br />
	<form action="./ValidationUtil"" method="post">
		@<input type="text" name="searchUser" id="searchUserKey">
		<input type="submit" value="検索">
		<input id="hid_functionid" type="hidden" name="FunctionId" value="TWFRISCH"/>
	</form>
	<br />
	<%
		if(request.getAttribute("error_msg")!=null){%>
			<%=request.getAttribute("error_msg") %>
		<%}
	%>
	<h3>【制約事項】</h3>
	<div class="indent_1 line_height">・フォロワーの人数が<mark>「<%=RoutingTable.followerlimit_lists %>」人を超える場合</mark>は取得できません（改良中）。</div>
	<div class="indent_1 line_height">・フォローしてる人数が<mark>「<%=RoutingTable.friendslimit_lists %>」人を超える場合</mark>は取得できません（改良中）。</div>
	<br />
</body>
<a href=<%=RoutingTable.home_fromauth %>>＞ホーム画面に戻る</a>
</html>