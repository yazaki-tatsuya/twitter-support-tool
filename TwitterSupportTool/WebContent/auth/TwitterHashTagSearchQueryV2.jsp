<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List,utils.RoutingTable" %>
<!DOCTYPE html>
<html class="font_1 background">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0" />
<link rel="stylesheet" type="text/css" href=<%=RoutingTable.twitter_css_auth %>>
<title>Twitter Favorite Search Query</title>
</head>
<%@ include file="HeaderAuth.jsp" %>
	<h3 id="title" class="center title_narrow">いいね数を指定したTweet検索&nbsp;（検索画面）</h3>
	<h4 id="subtitle" class="center title_narrow">Search Tweets having more than N favorite !</h4>
	<br />	
	<div class="center">ハッシュタグ&#x0023;&#x20e3;によるTweet検索（＋いいね数&#x1f44d;の指定機能付き）</div>
	<br />
	<div class="center">====================================</div>
	<br />
<%
//# エラーで当該画面に戻る際に、入力されていた値は再度表示した状態にしておく
String tag = "", fav = "";
if(request.getParameter("searchTag")!=null){tag=request.getParameter("searchTag");}
if(request.getParameter("searchFav")!=null){fav=request.getParameter("searchFav");}
%>
<body>
	<h3>【使い方】</h3>
	<label class="indent_1">検索したいハッシュタグ&#x0023;&#x20e3;を入力（#部分は除く）して、「検索」ボタンを押下します。</label><br /><br />
	<form action="./ValidationUtil" method="post">
	<table border="1" >
		<tr>
			<th>#</th>
			<td><input type="text" name="searchTag" id="searchTagKey" value="<%=tag%>"></td>
		</tr>
		<tr>
			<th>いいね数：</th>
			<td><input type="number" name="searchFav" id="searchFavKey" min=0 value="<%=fav%>" /></td>
		</tr>
	</table><br />
	<input type="submit" value="検索">
	<input id="hid_functionid" type="hidden" name="FunctionId" value="TWHTSRCH_v2"/>	
	</form>
	<br />
	<%
		if(request.getAttribute("error_msg")!=null){%>
			<%=request.getAttribute("error_msg") %>
		<%}
	%>
	<h3>【制約】</h3>
	<div class="indent_1 line_height">①最大「<%=RoutingTable.hashtagV2_pagelimit*100 %>」件まで表示します。</div>
	<div class="indent_1 line_height">②直近１周間まで遡って検索します。</div>
	</div>
	<br />
</body>
<a href=<%=RoutingTable.home_fromauth %>>＞ホーム画面に戻る</a>
</html>