<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List,utils.RoutingTable,models.FollowersList" %>
<!DOCTYPE html>
<% 
//List<Long> follower_id = (List<Long>)request.getAttribute("followersearch_1");
//List<String> follower_userid = (List<String>)request.getAttribute("followersearch_2");
//List<Integer> follower_fnum = (List<Integer>)request.getAttribute("followersearch_3");
//List<String> follower_name = (List<String>)request.getAttribute("followersearch_4");
FollowersList fl = (FollowersList)request.getAttribute("FollowersList");
session.setAttribute("FollowersList", request.getAttribute("FollowersList"));
session.setAttribute("targetuser_val", request.getAttribute("targetuser"));
%>
<html class="font_1 background">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0" />
<link rel="stylesheet" type="text/css" href=<%=RoutingTable.twitter_css_auth %>>
<title>Twitter Get Follower Result</title>
</head>
<%@ include file="HeaderAuth.jsp" %>
	<h3 id="title" class="center title_narrow">フォロワー検索&nbsp;（結果画面）</h3>
	<h4 id="subtitle" class="center title_narrow">Search and get the list of your followers !</h4>
<body>
<h3 class="center">&#x2728;検索結果&#x2728;</h3>
<table border="1" width="250" class="center">
	<tr>
		<th width="100">検索キー</th>
		<td width="150"><div class="center"><%=request.getAttribute("targetuser") %></div></td>
	</tr>
</table>
<input type="button" value="csvダウンロード（PC限定）" onclick="location.href='follower_search_csv3'" style="float: left" >
<a href=<%=RoutingTable.home_fromauth %> style="float: right" >▶ホーム画面に戻る</a><br /><br />
<%-- <div style="width:100%; overflow-y:scroll;"> --%>
<table border="1" width="100%" >
	<tr>
		<th width="30">No.</th>
		<th width="150">ユーザーID</th>
		<th width="100">フォロワー数</th>
		<th width="400">ユーザー名</th>
		<th width="150">ID</th>
	</tr>
	<%
	for(int i=0; i<fl.getId().size(); i++){
	String url_user = "https://twitter.com/"+fl.getUser().get(i);
	//for(int i=0; i<follower_id.size(); i++){
	//	String url_user = "https://twitter.com/"+follower_userid.get(i);
	%>
	<tr>
		<td><%=i+1%></td>
		<td><a href=<%=url_user%> target="_blank">@<%=fl.getUser().get(i)%></a></td>
		<td><%=fl.getFollowerCnt().get(i) %></td>
		<td><%=fl.getFollowerName().get(i) %></td>
		<td><%=fl.getId().get(i) %></td>
<%-- 
		<td><a href=<%=url_user%> target="_blank">@<%=follower_userid.get(i)%></a></td>
		<td><%=follower_fnum.get(i) %></td>
		<td><%=follower_name.get(i) %></td>
		<td><%=follower_id.get(i) %></td>
--%>
	</tr>
<%}%>
</table>
</div>
</body><br /><br />
<a href=<%=RoutingTable.home_fromauth %>>＞ホーム画面に戻る</a>
</html>
<br />
<br />