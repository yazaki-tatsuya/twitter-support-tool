<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List,java.util.Date,utils.RoutingTable,models.RecentTweets" %>
<!DOCTYPE html>
<%
String rectw_name = (String)request.getAttribute("username");
RecentTweets rc = (RecentTweets)request.getAttribute("RecentTweets");
session.setAttribute("RecentTweets",request.getAttribute("RecentTweets"));
session.setAttribute("username", request.getAttribute("username"));
%>
<html class="font_1 background">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0" />
<link rel="stylesheet" type="text/css" href=<%=RoutingTable.twitter_css_auth %>>
<title>Twitter Recent Tweet Query</title>
</head>
<%@ include file="HeaderAuth.jsp" %>
	<h3 id="title" class="center title_narrow">○○さんの直近ツイート検索&nbsp;（結果画面）</h3>
	<h4 id="subtitle" class="center title_narrow">Search Recent Tweets related to the User you entered !</h4>
<body>
<h3 class="center">&#x2728;検索結果&#x2728;</h3>
<table border="1" width="250" class="center">
	<tr>
		<th width="100">検索キー</th>
		<td width="150"><div class="center"><%=request.getAttribute("username") %></div></td>
	</tr>
</table>
<input type="button" value="csvダウンロード（PC限定）" onclick="location.href='recent_tweet_search_csv2'" style="float: left" >
<a href=<%=RoutingTable.home_fromauth %> style="float: right" >▶ホーム画面に戻る</a>
<br />
<br />
<%-- <div style="width:100%; overflow-y:scroll;"> --%>
<table border="1" width="100%" >
	<tr>
		<th width="30">No.</th>
		<th width="150">Tweet日付</th>
		<th width="80">いいね数</th>
		<th width="80">リツイート数</th>
		<th width="800">Tweet内容</th>
		<th width="80">TweetのID</th>
	</tr>
	<%
	for(int i=0; i<rc.getTweetId().size(); i++){
		String url_tweet = "https://twitter.com/"+rectw_name+"/status/"+rc.getTweetId().get(i);
	%>
	<tr>
		<td><%=i+1%></td>	
		<td><%=rc.getDate().get(i) %></td>
		<td><%=rc.getFavCnt().get(i) %></td>
		<td><%=rc.getRetCnt().get(i) %></td>
		<td><%=rc.getContent().get(i) %></td>
		<td><a href=<%=url_tweet%> target="_blank"><%=rc.getTweetId().get(i)%></a></td>
	</tr>
<%}%>
</table>
</div>
</body><br /><br />
<a href=<%=RoutingTable.home_fromauth %>>＞ホーム画面に戻る</a>
</html>
<br />
<br />