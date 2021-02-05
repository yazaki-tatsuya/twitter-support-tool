<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<% 
List<Long> follower_id = (List<Long>)request.getAttribute("followersearch_1");
List<String> follower_userid = (List<String>)request.getAttribute("followersearch_2");
List<Integer> follower_fnum = (List<Integer>)request.getAttribute("followersearch_3");
List<String> follower_name = (List<String>)request.getAttribute("followersearch_4");
%>
<html class="font_1">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./css/TwitterTool.css">
<title>Twitter Get Follower Result</title>
</head>
	<img src="https://rainbow-engine.com/wp-content/uploads/Common/20200725_HeaderIcon.jpg" alt="" class="header_img"/>	<br /><br />
	<center>
	<h2 id="title" class="title_narrow">フォロワー検索&nbsp;（結果画面）</h2>
	<br />
	<h4 id="subtitle" class="title_narrow">Search and get the list of your followers !</h4>
	<br />	
	</center>
	<br />
<body>
■検索結果■&nbsp;<input type="button" value="csvダウンロード" onclick="location.href='hashtag_search_csv'"><br /><br />
ﾜｰｲヽ(ﾟ∀ﾟ)ﾒ(ﾟ∀ﾟ)ﾒ(ﾟ∀ﾟ)ﾉﾜｰｲ&nbsp;<a href="TwitterSupportHome.jsp">▶ホーム画面に戻る</a><br /><br />
<%-- <div style="width:100%; overflow-y:scroll;"> --%>
<table border="1" width="830" >
	<tr>
		<th width="30">No.</th>
		<th width="150">ID</th>
		<th width="150">ユーザーID</th>
		<th width="100">フォロワー数</th>
		<th width="400">ユーザー名</th>
	</tr>
	<%
	for(int i=0; i<follower_id.size(); i++){
		String url_user = "https://twitter.com/"+follower_id.get(i);
	%>
	<tr>
		<td><%=i+1%></td>
		<td><a ><%=follower_id.get(i) %></a></td>
		<td><a href=<%=url_user%> target="_blank">@<%=follower_userid.get(i)%></a></td>
		<td><%=follower_fnum.get(i) %></td>
		<td><%=follower_name.get(i) %></td>
	</tr>
<%}%>
</table>
</div>
</body><br /><br />
<a href="TwitterSupportHome.jsp">＞ホーム画面に戻る</a>
</html>
<br />
<br />