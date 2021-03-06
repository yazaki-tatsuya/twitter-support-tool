<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List,utils.RoutingTable" %>
<!DOCTYPE html>
<html class="font_1 background">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0" />
<link rel="stylesheet" type="text/css" href=<%=RoutingTable.twitter_css_auth %>>
<title>Twitter User Search</title>
</head>
<%@ include file="HeaderAuth.jsp" %>
	<h3 id="title" class="center title_narrow">Twitterユーザー検索&nbsp;（検索画面）</h3>
	<h4 id="subtitle" class="center title_narrow">Search Users related to the Keyword you entered !</h4>
	<br />	
	<div class="center">指定した「キーワード&#x1f511;」に関連する「ユーザー&#x1f466;&#x1f467;」を検索できます。</div>
	<br />
	<div class="center">====================================</div>
	<br />
<body>
	<h3>【使い方】</h3>
	<label class="indent_1">検索したいユーザー&#x1f466;&#x1f467;に関連する「キーワード&#x1f511;」を入力してください。</label><br /><br />
	<form action="./ValidationUtil" method="post">
		#<input type="text" name="searchUser" id="serchUserKey">
		<input type="submit" value="検索">
		<input id="hid_functionid" type="hidden" name="FunctionId" value="TWSCHUSR"/>
	</form>
	<br />
	<%
		if(request.getAttribute("error_msg")!=null){%>
			<%=request.getAttribute("error_msg") %>
		<%}
	%>
	<h3>【制約】</h3>
	<div class="indent_1">・最大「<%=RoutingTable.user_pagelimit*20 %>」件まで表示します。</div>	
	<h3>【注意】</h3>
	<div class="indent_1">検索数が多い場合、１０秒〜１５秒程度掛かることがございます &#x1f647;</div>
	<div class="indent_1">ご不便お掛けしますが、よろしくお願いいたします &#x1f647;</div>
	</br>
</body>
<a href=<%=RoutingTable.home_fromauth %>>＞ホーム画面に戻る</a>
</html>