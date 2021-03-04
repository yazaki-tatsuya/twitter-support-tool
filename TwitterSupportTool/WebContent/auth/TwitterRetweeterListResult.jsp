<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List,java.util.Date,utils.RoutingTable,models.RetweetersList" %>
<!DOCTYPE html>
<% 

//List<String> srchres_usr = (List<String>)request.getAttribute("result1");
//List<Long> srchres_id = (List<Long>)request.getAttribute("result2");
//List<String> srchres_isFollower = (List<String>)request.getAttribute("result3");
System.out.println("# ======== [Result] getAttribute get RetweetersList START");
RetweetersList rt = (RetweetersList)request.getAttribute("RetweetersList");
System.out.println("# ======== [Result] getAttribute get RetweetersList END");
session.setAttribute("RetweetersList", request.getAttribute("RetweetersList"));
session.setAttribute("tweetid", request.getAttribute("tweetid"));
session.setAttribute("userid", request.getAttribute("userid"));
System.out.println("# ======== [Result] getAttribute ="+request.getAttribute("tweetid"));
System.out.println("# ======== [Result] getAttribute ="+request.getAttribute("userid"));
%>
<html class="font_1 background">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0" />
<link rel="stylesheet" type="text/css" href=<%=RoutingTable.twitter_css_auth %>>
<title>Retweeter List Query</title>
</head>
<%@ include file="HeaderAuth.jsp" %>
	<h3 id="title" class="center title_narrow">リツイートした人一覧（結果画面）</h3>
	<h4 id="subtitle" class="center title_narrow">Get a list of people who retweeted your tweet !</h4>
<body>
<h3 class="center">&#x2728;検索結果&#x2728;</h3>
<table border="1" width="250" class="center">
	<tr>
		<th width="100">検索キー</th>
		<td width="150">
			<div class="center">
			<%=request.getAttribute("tweetid") %><br />
			<%=request.getAttribute("userid") %>
			</div>
		</td>
	</tr>
</table>
<input type="button" value="csvダウンロード（PC限定）" onclick="location.href='retweeter_list_csv'" style="float: left" >
<a href=<%=RoutingTable.home_fromauth %> style="float: right" >▶ホーム画面に戻る</a><br /><br />
<%-- <div style="width:100%; overflow-y:scroll;"> --%>
<table border="1" width="100%" >
	<tr>
		<th width="30">No.</th>
		<th width="100">ユーザーID</th>
		<th width="80">フォロワーであるか？</th>
		<th width="150">システムID</th>
	</tr>
	<%
	for(int i=0; i<rt.getId().size(); i++){
	//for(int i=0; i<srchres_usr.size(); i++){
		//String url_user = "https://twitter.com/"+srchres_usr.get(i);
		String url_user = "https://twitter.com/"+rt.getUser().get(i);
	%>
	<tr>
		<td><%=i+1%></td>
 		<td><a href=<%=url_user%> target="_blank">@<%=rt.getUser().get(i) %></a></td>
		<td><%=rt.getIsFollower().get(i) %></td>
		<td><%=rt.getId().get(i) %></td>
<%--
 		<td><a href=<%=url_user%> target="_blank">@<%=srchres_usr.get(i)%></a></td>
		<td><%=srchres_isFollower.get(i) %></td>
		<td><%=srchres_id.get(i) %></td>
--%>
	</tr>
<%}%>
</table>
</body><br /><br />
<a href=<%=RoutingTable.home_fromauth %>>＞ホーム画面に戻る</a>
</html>