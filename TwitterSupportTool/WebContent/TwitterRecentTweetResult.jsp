<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<% 
String rectw_name = (String)request.getAttribute("username");
List<Long> rectw_id = (List<Long>)request.getAttribute("result1");
List<String> rectw_date = (List<String>)request.getAttribute("result2");
List<Integer> rectw_fav = (List<Integer>)request.getAttribute("result3");
List<Integer> rectw_rec = (List<Integer>)request.getAttribute("result4");
List<String> rectw_content = (List<String>)request.getAttribute("result5");
session.setAttribute("username", request.getAttribute("username"));
%>
<html class="font_1">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./css/TwitterTool.css">
<title>Hash Tag Search Result</title>
</head>
	<img src="https://rainbow-engine.com/wp-content/uploads/Common/20200725_HeaderIcon.jpg" alt="" class="header_img"/>	<br /><br />
	<center>
	<h2 id="title" class="title_narrow">○○さんの直近ツイート検索&nbsp;（結果画面）</h2>
	<br />
	<h4 id="subtitle" class="title_narrow">Search Recent Tweets related to the User you entered !</h4>
	<br />	
	</center>
	<br />
<body>
■検索結果■&nbsp;<input type="button" value="csvダウンロード" onclick="location.href='recent_tweet_search_csv'"><br /><br />
ﾜｰｲヽ(ﾟ∀ﾟ)ﾒ(ﾟ∀ﾟ)ﾒ(ﾟ∀ﾟ)ﾉﾜｰｲ&nbsp;<a href="TwitterSupportHome.jsp">▶ホーム画面に戻る</a><br /><br />
<%-- <div style="width:100%; overflow-y:scroll;"> --%>
<table border="1" width="1220" >
	<tr>
		<th width="30">No.</th>
		<th width="150">Tweet日付</th>
		<th width="80">TweetのID</th>
		<th width="80">いいね数</th>
		<th width="80">リツイート数</th>
		<th width="800">Tweet内容</th>
	</tr>
	<%
	for(int i=0; i<rectw_id.size(); i++){
		String url_tweet = "https://twitter.com/"+rectw_name+"/status/"+rectw_id.get(i);
	%>
	<tr>
		<td><%=i+1%></td>	
		<td><%=rectw_date.get(i) %></td>
		<td><a href=<%=url_tweet%> target="_blank">★(*´∀｀*)</a></td>
		<td><%=rectw_fav.get(i) %></td>
		<td><%=rectw_rec.get(i) %></td>
		<td><%=rectw_content.get(i) %></td>
	</tr>
<%}%>
</table>
</div>
</body><br /><br />
<a href="TwitterSupportHome.jsp">＞ホーム画面に戻る</a>
</html>
<br />
<br />