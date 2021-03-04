<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List,utils.RoutingTable" %>
<!DOCTYPE html>
<html class="font_1 background">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0" />
<link rel="stylesheet" type="text/css" href=<%=RoutingTable.twitter_css_auth %>>
<title>Retweeter List Query</title>
</head>
<%@ include file="HeaderAuth.jsp" %>
	<h3 id="title" class="center title_narrow">リツイートした人一覧（検索画面）</h3>
	<h4 id="subtitle" class="center title_narrow">Get a list of people who retweeted your tweet !</h4>
	<br />	
	<div class="center">「ツイートID&#x1f4ac;&#x1f194;」と「ユーザID&#x1f194;」を指定すると、そのツイート&#x1f4ac;に対して「リツイート&#x1f501;した人の一覧」を出力します。<br />
		（＋リツイート&#x1f501;した人が「あなたのフォロワー&#x1f46b;かどうか&#x2753;」も教えてくれます）。</div>
	<br />
	<div class="center">====================================</div>
	<br />
<%
//# エラーで当該画面に戻る際に、入力されていた値は再度表示した状態にしておく
String user = "";
if(request.getParameter("searchUser")!=null){user=request.getParameter("searchUser");}else{user="";}
%>
<body>
	<h3>【使い方】</h3>
	<label class="indent_1">「リツイート&#x1f501;した人の一覧」を出力したい対象の「ツイートID&#x1f4ac;&#x1f194;」と「ユーザID&#x1f194;」（@部分は除く）を入力して「検索」ボタンを押下します。</label><br /><br />
	<form action="./ValidationUtil" method="post">
	<table border="1" >
		<tr>
			<th>ツイートID（必須）</th>
			<td><input type="number" name="searchTweet" id="searchTweetKey" /></td>
		</tr>
		<tr>
			<th>ユーザID（必須）</th>
			<td><input type="text" name="searchUser" id="searchUserKey" value="<%=user%>" /></td>
		</tr>
	</table><br />
	<input type="submit" value="検索">
	<input id="hid_functionid" type="hidden" name="FunctionId" value="TWRETSCH"/>
	</form>
	<%
		if(request.getAttribute("error_msg")!=null){%>
			<%=request.getAttribute("error_msg") %>
		<%}
	%>
	<h3>【制約事項】</h3>
	<div class="indent_1 line_height">・フォロワーが<mark>「<%=RoutingTable.followerlimit_ids %>」人を超える場合</mark>は取得できません（改良中）。</div>
	<div class="indent_1 line_height">・リツイートが<mark>「100」件を超える場合は最大「100件」まで</mark>しか取得できません。</div>
	<div class="indent_1 line_height">・「凍結アカウント」は取得されないため<mark>「Twitter画面の「XX件のリツイート」の表示数よりも少なくなる</mark>可能性があります。</div>
	<br />
</body>
<a href=<%=RoutingTable.home_fromauth %>>＞ホーム画面に戻る</a>
</html>