<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List,java.util.Date,utils.RoutingTable" %>
<!DOCTYPE html>
<% 
List<String> srchres_usr = (List<String>)request.getAttribute("result1");
List<Integer> srchres_fav = (List<Integer>)request.getAttribute("result2");
List<String> srchres_tweet = (List<String>)request.getAttribute("result3");
List<Integer> srchres_ret = (List<Integer>)request.getAttribute("result4");
List<Long> srchres_id = (List<Long>)request.getAttribute("result5");
List<String> srchres_date = (List<String>)request.getAttribute("result6");
session.setAttribute("hashtag_val", request.getAttribute("hashtag"));
System.out.println("##############"+request.getAttribute("hashtag"));
%>
<html class="font_1">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href=<%=RoutingTable.twitter_css_auth %>>
<title>Hash Tag Search Result</title>
</head>
	<img src="https://rainbow-engine.com/wp-content/uploads/Common/20200725_HeaderIcon.jpg" alt="" class="header_img"/>	<br /><br />
	<center>
	<h2 id="title" class="title_narrow">Tweetハッシュタグ検索&nbsp;（結果画面）</h2>
	<br />
	<h4 id="subtitle" class="title_narrow">Search Tweets related to the HashTag you entered !</h4>
	<br />	
	</center>
	<br />
<body>
検索結果■&nbsp;<input type="button" value="csvダウンロード" onclick="location.href='hashtag_search_csv'"><br /><br />
ﾜｰｲヽ(ﾟ∀ﾟ)ﾒ(ﾟ∀ﾟ)ﾒ(ﾟ∀ﾟ)ﾉﾜｰｲ&nbsp;<a href=<%=RoutingTable.home_fromauth %>>▶ホーム画面に戻る</a><br /><br />
<%-- <div style="width:100%; overflow-y:scroll;"> --%>
<table border="1" width="1220" >
	<tr>
		<th width="30">No.</th>
		<th width="150">ユーザーID</th>
		<th width="80">TweetのURL</th>
		<th width="700">Tweet内容</th>
		<th width="100">Tweet日付</th>
		<th width="80">いいね数</th>
		<th width="80">リツイート数</th>
	</tr>
	<%
	for(int i=0; i<srchres_usr.size(); i++){
		String url_user = "https://twitter.com/"+srchres_usr.get(i);
		String url_tweet = "https://twitter.com/"+srchres_usr.get(i)+"/status/"+srchres_id.get(i);
	%>
	<tr>
		<td><%=i+1%></td>
		<td><a href=<%=url_user%> target="_blank">@<%=srchres_usr.get(i)%></a></td>
		<td><a href=<%=url_tweet%> target="_blank">★(*´∀｀*)</a></td>
		<td><%=srchres_tweet.get(i) %></td>
		<td><%=srchres_date.get(i) %></td>
		<td><%=srchres_fav.get(i) %></td>
		<td><%=srchres_ret.get(i) %></td>
	</tr>
<%}%>
</table>
</div>
</body><br /><br />
<a href=<%=RoutingTable.home_fromauth %>>＞ホーム画面に戻る</a>
</html>
<br />
<br />