<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html class="font_1">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./css/TwitterTool.css">
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
	<form action="follower_search" method="post">
		@<input type="text" name="searchUser" id="searchUserKey">
		<input type="submit" value="検索">
	</form>
	<br /><br /><br />
</body>
<a href="TwitterSupportHome.jsp">＞ホーム画面に戻る</a>
</html>