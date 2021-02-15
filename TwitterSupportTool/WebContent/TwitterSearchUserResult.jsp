<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<% 
List<String> searchResult_n1 = (List<String>)request.getAttribute("result_name1");
List<String> searchResult_n2 = (List<String>)request.getAttribute("result_name2");
List<String> searchResult_s1 = (List<String>)request.getAttribute("result_stat1");
List<String> searchResult_t1 = (List<String>)request.getAttribute("result_text1");
%>
<html class="font_1">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./css/TwitterTool.css">
<title>Search User</title>
</head>
	<img src="https://rainbow-engine.com/wp-content/uploads/Common/20200725_HeaderIcon.jpg" alt="" class="header_img"/>	<br /><br />
	<center>
	<h2 id="title" class="title_narrow">Tweetユーザー検索&nbsp;（結果画面）</h2>
	<br />
	<h4 id="subtitle" class="title_narrow">Search Users related to the Keyword you entered !</h4>
	<br />	
	</center>
	<br />
<body>
■検索結果■<br /><br />
ﾜｰｲヽ(ﾟ∀ﾟ)ﾒ(ﾟ∀ﾟ)ﾒ(ﾟ∀ﾟ)ﾉﾜｰｲ&nbsp;<a href="TwitterSupportHome.jsp">▶ホーム画面に戻る</a><br /><br />
<table border="1" width="1225">
	<tr>
		<th width="25">No.</th>
		<th width="150">ユーザー名</th>
		<th width="150">ユーザーID</th>
		<th width="200">公開／非公開</th>
		<th width="700">直近のTweet内容</th>
	</tr>
	<%for(int i=0; i<searchResult_n1.size(); i++){%>
	<%String url = "https://twitter.com/"+searchResult_n2.get(i);%>
	<tr>
		<td><%=i+1%></td>
		<td><%=searchResult_n1.get(i) %></td>
		<td><a href=<%=url%> target="_blank">@<%=searchResult_n2.get(i)%></a></td>
		<td><%=searchResult_s1.get(i) %></td>
		<td><%=searchResult_t1.get(i) %></td>
	</tr>
<%}%>
</table>
</body>
<a href="TwitterSupportHome.jsp">＞ホーム画面に戻る</a>
</html>
<br />
<br />