<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="utils.RoutingTable" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="font_1">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href=<%=RoutingTable.twitter_css_top %>>
<title>Twitter Support Tool Home</title>
	<img src="https://rainbow-engine.com/wp-content/uploads/Common/20200725_HeaderIcon.jpg" alt="" class="header_img"/>	<br /><br />	
	<center>
	<h2 id="title" class="title_narrow">Twitter運用支援ツール（ホーム画面）</h2>
	<br />
	<h4 id="subtitle" class="title_narrow">Welcome to the Twitter tool box</h4>
	<br />	
	このページは「Twitter Support Tool」のホーム画面です。<br />
	Twitterの運用を補助する、いくつかの機能を利用する事ができます。<br />
	</center>
	<br />
</head>
<body>
<form method="POST" name="twitter_home">
<div style="width:100%; overflow-y:scroll;">
<table border="1" width="1200">
	<tr>
		<th width="120">機能ID</th>
		<th width="300">機能名</th>
		<th width="780">説明</th>
	</tr>
	<tr>
		<td><p><a href=<%=RoutingTable.hashtag_q %>>TWHTSRCH</a></p></td>
		<td>ハッシュタグによるTweet検索</td>
		<td>この画面では指定した「ハッシュタグ」を含む「ツイート」を検索する事ができます。</td>
	</tr>
	<tr>
		<td><p><a href=<%=RoutingTable.user_q %>>TWSCHUSR</a></p></td>
		<td>○○に関連するユーザー検索</td>
		<td>この画面では指定した「キーワード」に関連する「ユーザー」を検索する事ができます。</td>
	</tr>
	<tr>
		<td><p><a href=<%=RoutingTable.recent_q %>>TWRECTWQ</a></p></td>
		<td>○○さんの直近Tweet検索</td>
		<td>この画面では指定した「ユーザー」の直近のツイートを取得する事ができます。</td>
	</tr>
	<tr>
		<td><p><a href=<%=RoutingTable.followerV2_q %>>TWFLWQU_v2</a></p></td>
		<td>○○さんのフォロワー検索</td>
		<td>この画面では指定した「ユーザー」のフォロワーの一覧を取得する事ができます。</td>
	</tr>
</table>
<br /><br />
<table border="1" width="1200">
	<tr>
		<th width="120">機能ID</th>
		<th width="300">機能名</th>
		<th width="780">説明</th>
	</tr>
	<tr>
		<td><p><a href=<%=RoutingTable.hashtagV2_q %>>TWFAVSCH</a></p></td>
		<td>ハッシュタグによるTweet検索<br />（＋いいね数の指定機能付きバージョン）</td>
		<td>この画面では指定した「いいね数」を超える「ツイート」を検索する事ができます。</td>
	</tr>
	<%-- 性能問題があるため使用しない。非同期処理をするv2の方を利用する --%>
	<tr>
		<td><p><a href=<%=RoutingTable.follower_q %>>TWFLWQU</a></p></td>
		<td>フォロワー検索</td>
		<td>この画面では指定した「ユーザー」のフォロワーの一覧を取得する事ができます。</td>
	</tr>
	
</table>
</form>
<br /><br />
</body>
</html>