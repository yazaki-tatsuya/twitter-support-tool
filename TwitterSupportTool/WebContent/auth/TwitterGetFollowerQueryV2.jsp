<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List,utils.RoutingTable" %>
<%@ page import="twitter4j.User,twitter.CommonUtil,twitterapi_functions.FollowerInfo" %>
<!DOCTYPE html>
<html class="font_1">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href=<%=RoutingTable.twitter_css_auth %>>
<script src="https://code.jquery.com/jquery-1.10.2.js" type="text/javascript"></script>
<script src=<%=RoutingTable.followerV2_js %> type="text/javascript" charset="UTF-8"></script>
<title>Twitter Get Follower Query</title>
</head>
	<img src="https://rainbow-engine.com/wp-content/uploads/Common/20200725_HeaderIcon.jpg" alt="" class="header_img"/>	<br /><br />	
	<center>
	<h2 id="title" class="title_narrow">フォロワー検索&nbsp;（検索画面）</h2>
	<h4 id="subtitle" class="title_narrow">Search and get the list of your followers !</h4>
	<br />	
	この画面では入力した「ユーザーID」の「フォロワー一覧」を取得する事ができます。<br />
	</center>
<br /><br />
<body>
	<label>(1) 検索したいユーザー名を入力（@以降の部分）して、「検索」ボタンを押下します。</label><br /><br />
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