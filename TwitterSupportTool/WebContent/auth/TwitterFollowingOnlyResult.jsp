<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List,utils.RoutingTable,models.FollowingOnly" %>
<!DOCTYPE html> 
<%
//List<Long> following_id = (List<Long>)request.getAttribute("followingonly_1");
//List<String> following_userid = (List<String>)request.getAttribute("followingonly_2");
//List<String> is_follower = (List<String>)request.getAttribute("followingonly_3");
//List<Integer> following_fnum = (List<Integer>)request.getAttribute("followingonly_4");
//List<String> following_name = (List<String>)request.getAttribute("followingonly_5");

FollowingOnly fo = (FollowingOnly)request.getAttribute("FollowingOnly");
session.setAttribute("FollowingOnly", request.getAttribute("FollowingOnly"));
session.setAttribute("targetuser_val", request.getAttribute("targetuser"));
%>
<html class="font_1 background">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0" />
<link rel="stylesheet" type="text/css" href=<%=RoutingTable.twitter_css_auth %>>
<title>Following only search result</title>
</head>
<%@ include file="HeaderAuth.jsp" %>
	<h3 id="title" class="center title_narrow">片思い検索&nbsp;（結果画面）</h3>
	<h4 id="subtitle" class="center title_narrow">Search your friends who are not following you !</h4>
<body>
<h3 class="center">&#x2728;検索結果&#x2728;</h3>
<table border="1" width="250" class="center">
	<tr>
		<th width="100">検索キー</th>
		<td width="150"><div class="center"><%=request.getAttribute("targetuser") %></div></td>
	</tr>
</table>
<br />
<input type="button" value="csvダウンロード（PC限定）" onclick="location.href='followonly_search_csv'" style="float: left" >
<a href=<%=RoutingTable.home_fromauth %> style="float: right" >▶ホーム画面に戻る</a><br /><br />
<%-- <div style="width:100%; overflow-y:scroll;"> --%>
<table border="1" width="100%" >
	<tr>
		<th width="30">No.</th>
		<th width="150">フォローしてるユーザーID</th>
		<th width="100">自分のフォロワーか？</th>
		<th width="100">フォローしてる人のフォロワー数</th>
		<th width="400">フォローしてる人のユーザー名</th>
		<th width="150">フォローしてる人のID</th>
	</tr>
	<%
	if(fo.getId() != null){
		for(int i=0; i<fo.getId().size(); i++){
			String url_user = "https://twitter.com/"+fo.getUser().get(i);
	//if(following_id != null){
	//	for(int i=0; i<following_id.size(); i++){
	//		String url_user = "https://twitter.com/"+following_userid.get(i);
	%> 
	<tr>
		<td><%=i+1%></td>
		<td><a href=<%=url_user%> target="_blank">@<%=fo.getUser().get(i)%></a></td>
		<td><%=fo.getIsFollower().get(i) %></td>
		<td><%=fo.getFollowerCnt().get(i) %></td>
		<td><%=fo.getFollowingName().get(i) %></td>
		<td><%=fo.getId().get(i) %></td>
		<%--		
		<td><a href=<%=url_user%> target="_blank">@<%=following_userid.get(i)%></a></td>
		<td><%=is_follower.get(i) %></td>
		<td><%=following_fnum.get(i) %></td>
		<td><%=following_name.get(i) %></td>
		<td><%=following_id.get(i) %></td>
		--%>
	</tr>
	<%}
	}%>
</table>
</div>
</body><br /><br />
<a href=<%=RoutingTable.home_fromauth %>>＞ホーム画面に戻る</a>
</html>
<br />
<br />