<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="utils.RoutingTable" %>
<!DOCTYPE html>
<html class="font_1 background">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0" />
<link rel="stylesheet" type="text/css" href=<%=RoutingTable.twitter_css_auth %>>
<title>アプリケーションビジー</title>
</head>
<body>
<br />
<h2 class="center">当画面は現在、非常に混雑した状態になっております。</h2><br />
<h2 class="center">約20分程度、時間を空けるとスムーズに利用できる可能性があります。</h2><br />
<div class="center"><a href=<%=RoutingTable.home_fromauth %>>▶ホーム画面に戻る</a></div>
</body>
</html>