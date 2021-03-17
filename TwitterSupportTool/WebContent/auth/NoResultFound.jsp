<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="utils.RoutingTable" %>
<!DOCTYPE html>
<html class="font_1 background">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0" />
<link rel="stylesheet" type="text/css" href=<%=RoutingTable.twitter_css_auth %>>
<title>検索結果０件</title>
</head>
<body>
<br />
<h2 class="center">検索の結果、該当する明細はありませんでした（０件）。</h2>
<%String message = "";
if(request.getAttribute("0Error")!=null){
	message = (String)request.getAttribute("0Error");
}%>
<h3 class="center"><%=message %></h3><br />
<div class="center"><a href=<%=RoutingTable.home_fromauth %>>▶ホーム画面に戻る</a></div>
</body>
</html>