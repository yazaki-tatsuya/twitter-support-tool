<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="utils.RoutingTable, utils.DbConnectUtil3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="font_1 background">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0" />
<link rel="stylesheet" type="text/css" href=<%=RoutingTable.twitter_css_top %>>
<title>Twitter Support Tool Home</title>
</head>
	<table border="1">
		<%
		String username = DbConnectUtil3.GetUser(request.getRemoteUser());
		%>
		<tr><td>&#x2728;<%=username %> 様&#x2728;</td></tr>
		<%
		if(!username.equals("ゲスト")){%>
			<input type="button" value="ログアウト" onclick="location.href='<%=RoutingTable.logout_sv_homebtn %>'" style="float: right;" >
		<%}%>		
	</table>
	<h2 id="title" class="center title_narrow">Twitter運用支援ツール</h2>
	<h3 id="subtitle" class="center title_narrow">（ツイサポ）</h3>
	<br />	
	<div class="center line_height">このページは「Twitter運用支援ツール（通称：ツイサポ&#x1f4aa;）」のホーム画面です。</div>
	<div class="center line_height">ツイサポ&#x1f4aa;は「非公式」のTwitter運用支援ツールで、Twitterの運営を補助するいくつかの機能を利用できます。</div>
	<br />
	<br />
<body>
<form method="POST" name="twitter_home">
<div style="width:100%; overflow-y:scroll;">
<table border="1" width="100%">
	<tr>
		<th width="120">機能ID</th>
		<th width="320">機能名</th>
		<th width="760">説明</th>
	</tr>
	<tr>
	<td><p><a href=<%=RoutingTable.hashtagV2_q %>>TWHTSRCH_v2</a></p></td>
		<td>ハッシュタグ&#x0023;&#x20e3;によるTweet検索<br />（＋いいね数&#x1f44d;の指定機能付き）</td>
		<td>指定した「ハッシュタグ&#x0023;&#x20e3;」に関連する「ツイート&#x1f4ac;」を検索できます（いいね数&#x1f44d;の指定が可能）</td>
	</tr>
	<tr>
		<td><p><a href=<%=RoutingTable.user_q %>>TWSCHUSR</a></p></td>
		<td>○○に関連するユーザー&#x1f466;&#x1f467;検索</td>
		<td>指定した「キーワード&#x1f511;」に関連する「ユーザー&#x1f466;&#x1f467;」を検索できます。</td>
	</tr>
	<tr>
		<td><p><a href=<%=RoutingTable.recentV2_q %>>TWRECTWQ_v2</a></p></td>
		<td>○○さん&#x1f466;&#x1f467;の直近ツイート&#x1f4ac;検索(Ver.2)</td>
		<td>指定した「ユーザーID&#x1f194;」の直近のツイート&#x1f4ac;を取得できます。</td>
	</tr>
	<tr>
		<td><p><a href=<%=RoutingTable.followerV3_q %>>TWFLWQUE_v3</a></p></td>
		<td>○○さん&#x1f466;&#x1f467;のフォロワー&#x1f46b;検索(Ver.3)</td>
		<td>指定した「ユーザーID&#x1f194;」のフォロワー&#x1f46b;の一覧を取得できます。</td>
	</tr>
	<tr>
		<td><p><a href=<%=RoutingTable.retweet_q %>>TWRTWSCH</a></p></td>
		<td>あるツイート&#x1f4ac;にリツイート&#x1f501;した人の一覧</td>
		<td>
		「ツイートID&#x1f4ac;&#x1f194;」と「ユーザID&#x1f194;」を指定すると、そのツイート&#x1f4ac;に対して「リツイート&#x1f501;した人の一覧」を出力します
		（＋リツイート&#x1f501;した人が「あなたのフォロワー&#x1f46b;かどうか&#x2753;」も教えてくれます）。
		</td>
	</tr>
	<tr>
		<td><p><a href=<%=RoutingTable.followonly_q %>>TWFRISCH</a></p></td>
		<td>片思い&#x1f494;一覧</td>
		<td>指定した「ユーザーID&#x1f194;」がフォロー&#x1f493;してるけど、フォローバックされていない人（片思い&#x1f494;）の一覧を出力します。</td>
	</tr>
</table>
<br /><br />
<h3>【調整中】</h3>
<table border="1" width="100%">
	<tr>
		<th width="120">機能ID</th>
		<th width="300">機能名</th>
		<th width="780">説明</th>
	</tr>
	<tr>
		<td><p><a href=<%=RoutingTable.followerV4_q %>>TWFLWQUE_v4</a></p></td>
		<td>○○さん&#x1f466;&#x1f467;のフォロワー&#x1f46b;検索(Ver.4)</td>
		<td>指定した「ユーザーID&#x1f194;」のフォロワー&#x1f46b;の一覧を取得できます。</td>
	</tr>	
</table>
</form>
<br /><br />
</body>
</html>