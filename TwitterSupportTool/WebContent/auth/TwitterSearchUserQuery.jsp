<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List,utils.RoutingTable" %>
<!DOCTYPE html>
<html class="font_1">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href=<%=RoutingTable.twitter_css_auth %>>
<title>Twitter User Search</title>
</head>
	<img src="https://rainbow-engine.com/wp-content/uploads/Common/20200725_HeaderIcon.jpg" alt="" class="header_img"/><br /><br />
	<center>
	<h2 id="title" class="title_narrow">Tweetユーザー検索&nbsp;（検索画面）</h2>
	<h4 id="subtitle" class="title_narrow">Search Users related to the Keyword you entered !</h4>
	<br />	
	この画面では入力した「キーワード」に関連する「ユーザー」を検索する事ができます。<br />
	</center>
<br /><br />
<body>
	<label><b>(2) Twitterユーザー検索</b></label><br /><br />
	<label>検索したいユーザーのキーワードを入力してください。</label><br /><br />
	<form action="./search_user" method="post">
		#<input type="text" name="searchUser" id="serchUserKey">
		<input type="submit" value="send">
	</form><br /><br />
	(※注意）<br />
	検索数が多い場合、１０秒〜１５秒程度掛かることがございます &#x1f647;<br />
	ご不便お掛けしますが、よろしくお願いいたします &#x1f647;<br />
	</br>
</body>
<a href=<%=RoutingTable.home_fromauth %>>＞ホーム画面に戻る</a>
</html>