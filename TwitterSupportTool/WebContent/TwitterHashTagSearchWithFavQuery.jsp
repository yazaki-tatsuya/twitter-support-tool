<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html class="font_1">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./css/TwitterTool.css">
<title>Twitter Favorite Search Query</title>
</head>
	<img src="https://rainbow-engine.com/wp-content/uploads/Common/20200725_HeaderIcon.jpg" alt="" class="header_img"/>	<br /><br />	
	<center>
	<h2 id="title" class="title_narrow">いいね数を指定したTweet検索&nbsp;（検索画面）</h2>
	<h4 id="subtitle" class="title_narrow">Search Tweets having more than N favorite !</h4>
	<br />	
	この画面では指定した「いいね数」を超える「ツイート」を検索する事ができます。<br />
	</center>
<br /><br />
<%
//# エラーで当該画面に戻る際に、入力されていた値は再度表示した状態にしておく
String tag = "", fav = "";
if(request.getParameter("searchTag")!=null){tag=request.getParameter("searchTag");}
if(request.getParameter("searchFav")!=null){fav=request.getParameter("searchFav");}
%>
<body>
	<label>(1) 検索したいハッシュタグを入力（#部分は除く）して、「検索」ボタンを押下します。</label><br /><br />
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
	<input id="hid_functionid" type="hidden" name="FunctionId" value="TWFAVSCH"/>	
	</form>
	<br />
	<%
		if(request.getAttribute("error_msg")!=null){%>
			<%=request.getAttribute("error_msg") %>
		<%}
	%>
	<br />
</body>
<a href="TwitterSupportHome.jsp">＞ホーム画面に戻る</a>
</html>