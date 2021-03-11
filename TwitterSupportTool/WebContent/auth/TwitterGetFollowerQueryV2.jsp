<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List,utils.RoutingTable" %>
<%@ page import="twitter4j.User,twitter.CommonUtil,functions.FollowerInfo" %>
<!DOCTYPE html>
<html class="font_1 background">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0" />
<link rel="stylesheet" type="text/css" href=<%=RoutingTable.twitter_css_auth %>>
<script src="https://code.jquery.com/jquery-1.10.2.js" type="text/javascript"></script>
<script src=<%=RoutingTable.followerV2_js %> type="text/javascript" charset="UTF-8"></script>
<title>Twitter Get Follower Query</title>
</head>
<%@ include file="HeaderAuth.jsp" %>
	<h3 id="title" class="center title_narrow">フォロワー検索&nbsp;（検索画面）</h3>
	<h4 id="subtitle" class="center title_narrow">Search and get the list of your followers !</h4>
	<br />	
	<div class="center">指定した「ユーザーID&#x1f194;」のフォロワー&#x1f46b;の一覧を取得できます。</div>
	<div class="center">====================================</div>
	<br />
<body>
	<h3>【使い方】</h3>
	<label class="indent_1">検索したいユーザーID&#x1f194;を入力（@以降の部分）して「検索」ボタンを押下します。</label>
<a href=<%=RoutingTable.home_fromauth %> style="float: right" >▶ホーム画面に戻る</a><br /><br />
	<form action="./follower_search_csv" method="get">
		@<input type="text" name="searchUser" id="searchUserKey">
		<input type="button" value="取得" onclick="fetchFollower()">
		<input type="submit" value="csv出力">
	</form>
	<br /><br />
	<div id="ajaxGetUserServletResponse"></div>

</body><br /><br />
<a href=<%=RoutingTable.home_fromauth %>>＞ホーム画面に戻る</a>
</html>