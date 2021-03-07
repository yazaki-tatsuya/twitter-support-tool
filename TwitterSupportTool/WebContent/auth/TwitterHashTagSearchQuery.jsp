<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List,utils.RoutingTable,utils.DbConnectUtil3" %>
<!DOCTYPE html>
<html class="font_1 background">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0" />
<link rel="stylesheet" type="text/css" href=<%=RoutingTable.twitter_css_auth %>>
<title>Twitter HashTag Search Query</title>
</head>
<%@ include file="HeaderAuth.jsp" %>
	<h3 id="title" class="center title_narrow">Tweetハッシュタグ検索&nbsp;（検索画面）</h3>
	<h4 id="subtitle" class="center title_narrow">Search Tweets related to the HashTag you entered !</h4>
	<br />
	<div class="center">指定した「ハッシュタグ&#x0023;&#x20e3;」に関連する「ツイート&#x1f4ac;」を検索できます。</div><br />
	<div class="center">====================================</div>
	<br />
<body>
	<h3>【使い方】</h3>
	<label class="indent_1">検索したいハッシュタグ&#x0023;&#x20e3;を入力（#部分は除く）して「検索」ボタンを押下します。</label><br /><br />
	<form action="./ValidationUtil" method="post">
		#<input type="text" name="searchTag" id="searchTagKey">
		<input type="submit" value="検索">
		<input id="hid_functionid" type="hidden" name="FunctionId" value="TWHTSRCH"/>
	</form>
	<br />
	<%
		if(request.getAttribute("error_msg")!=null){%>
			<%=request.getAttribute("error_msg") %>
		<%}
	%>
	<h3>【制約】</h3>
	<div class="indent_1">・最大「100」件まで表示します。→V2にて改善</div>	
	<br />
	<br />
</body>
<a href=<%=RoutingTable.home_fromauth %>>＞ホーム画面に戻る</a>
</html>