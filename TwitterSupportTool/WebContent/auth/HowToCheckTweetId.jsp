<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="utils.RoutingTable" %>
<!DOCTYPE html>
<html class="font_1 background">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0" />
<link rel="stylesheet" type="text/css" href=<%=RoutingTable.twitter_css_auth %>>
<title>ツイートIDの調べ方</title>
</head>
<body>
<br />
<h2 class="center">ツイートIDの調べ方</h2>
<h3 class="indent_1">●ツイートID&#x1f4ac;&#x1f194;ってそもそも何？</h3>
<div class="indent_1 line_height">ツイートID&#x1f4ac;&#x1f194;は、ツイート&#x1f4ac;毎に持っている一意なID&#x1f194;です。</div>
<div class="indent_1 line_height">システム的には、このツイートID&#x1f4ac;&#x1f194;を使ってツイート&#x1f4ac;を特定しています。</div>
<h3 class="indent_1">●どうやって調べるの？</h3>
<h4 class="indent_1">方法①：PC版のTwitterのURLから読み取る</h4>
<div class="indent_1 line_height">PCからTwitterにログインしてツイートを開くと、URLの末尾に数字の羅列があります。これがツイートID&#x1f4ac;&#x1f194;です。</div>
<img class="indent_1" src="../image/5_HowToGetTweetId.JPG" alt="" width="50%" />
<h4 class="indent_1">方法②：当サイトの「直近ツイート検索」を使う</h4>
<div class="indent_1 line_height">当サイトの「<a href=<%=RoutingTable.recentV2_q_fromauth %> target="_blank">直近ツイート検索</a>」は検索結果の中に「ツイートID」の情報を含んでいるため、ぜひご活用頂けたらと思います。</div>
<br />
<br />
<div class="center"><a href=<%=RoutingTable.home_fromauth %>>▶ホーム画面に戻る</a></div>
</body>
</html>