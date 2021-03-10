<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="utils.RoutingTable" %>
<!DOCTYPE html>
<html class="font_1 background">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0" />
<link rel="stylesheet" type="text/css" href=<%=RoutingTable.twitter_css_auth %>>
<title>Limit Exceed Error</title>
</head>
<body>
<br />
<div class="center">1日のAPI利用回数上限（<%=RoutingTable.api_limit %>回）に達しました。</div><br />
<div class="center">翌日には再び0回にリセットされますので、また明日以降にご利用ください。</div><br />
<div class="center"><input type="button" value="ログアウト" onclick="location.href='<%=RoutingTable.apphome+"/"+RoutingTable.authzone %>/LogoutServlet1'"></div>
</body>
</html>