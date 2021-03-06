<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List,utils.RoutingTable,models.SearchUsersList" %>
<!DOCTYPE html>
<% 
//List<String> searchResult_n1 = (List<String>)request.getAttribute("result_name1");
//List<String> searchResult_n2 = (List<String>)request.getAttribute("result_name2");
//List<String> searchResult_s1 = (List<String>)request.getAttribute("result_stat1");
//List<String> searchResult_t1 = (List<String>)request.getAttribute("result_text1");
SearchUsersList ul = (SearchUsersList)request.getAttribute("SearchUsersList");
session.setAttribute("SearchUsersList", request.getAttribute("SearchUsersList"));
session.setAttribute("keyword_val", request.getAttribute("keyword"));
%>
<html class="font_1 background">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0" />
<link rel="stylesheet" type="text/css" href=<%=RoutingTable.twitter_css_auth %>>
<title>Search User</title>
</head>
<%@ include file="HeaderAuth.jsp" %>
	<h3 id="title" class="center title_narrow">Twitterユーザー検索&nbsp;（結果画面）</h3>
	<h4 id="subtitle" class="center title_narrow">Search Users related to the Keyword you entered !</h4>
<body>
<h3 class="center">&#x2728;検索結果&#x2728;</h3>
<table border="1" width="250" class="center">
	<tr>
		<th width="100">検索キー</th>
		<td width="150"><div class="center"><%=request.getAttribute("keyword") %></div></td>
	</tr>
</table>
<br />
<input type="button" value="csvダウンロード（PC限定）" onclick="location.href='search_user_csv'" style="float: left" >
<a href=<%=RoutingTable.home_fromauth %> style="float: right" >▶ホーム画面に戻る</a>
<table border="1" width="100%">
	<tr>
		<th width="25">No.</th>
		<th width="150">ユーザー名</th>
		<th width="150">ユーザーID</th>
		<th width="200">公開／非公開</th>
		<th width="700">直近のTweet内容</th>
	</tr>
	<%
	for(int i=0; i<ul.getUserId().size(); i++){
	//for(int i=0; i<searchResult_n1.size(); i++){
	%>
	<%
	//String url = "https://twitter.com/"+searchResult_n2.get(i);
	String url = "https://twitter.com/"+ul.getUserId().get(i);
	%>
	<tr>
		<td><%=i+1%></td>
		<td><%=ul.getUserName().get(i) %></td>
		<td><a href=<%=url%> target="_blank">@<%=ul.getUserId().get(i) %></a></td>
		<td><%=ul.getIsLocked().get(i) %></td>
		<td><%=ul.getNewTweet().get(i) %></td>
<%-- 
		<td><%=searchResult_n1.get(i) %></td>
		<td><a href=<%=url%> target="_blank">@<%=searchResult_n2.get(i)%></a></td>
		<td><%=searchResult_s1.get(i) %></td>
		<td><%=searchResult_t1.get(i) %></td>
--%>
	</tr>
<%}%>
</table>
<br />
</body>
<a href=<%=RoutingTable.home_fromauth %>>＞ホーム画面に戻る</a>
</html>