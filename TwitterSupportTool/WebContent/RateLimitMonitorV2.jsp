<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="utils.RoutingTable,models.RateLimitMonitor" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="font_1 background">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0" />
<link rel="stylesheet" type="text/css" href=<%=RoutingTable.twitter_css_top %>>
<title>Rate Limit Monitor</title>
</head>
<body>
<%
RateLimitMonitor rl = new RateLimitMonitor();
%>
<table border="1" width="80%" class="center">
	<tr>
		<th width="100">①適用Key数</th>
		<td width="100"><%=RoutingTable.authkey_max %></th>
	</tr>
</table>
<br />
<table border="1" width="95%" class="center">
	<tr>
		<th width="120">区分</th>
		<th width="220">APIエンドポイント名</th>
		<th width="160">②単位照会件数<br />(件／Page)</th>
		<th width="160">③１照会あたりの<br />コール数(Max値)</th>
		<th width="160">④残コール数<br />（残り）</th>
		<th width="160">⑤全コール数<br />（全部）</th>
		<th width="160">⑥残照会件数<br />（残り：②×④）</th>
		<th width="160">⑦全照会件数<br />（全部：②×⑤）</th>
		<th width="100">関連<br />機能</th>
	</tr>
	<tr>
		<%
		int remain_showuser = rl.remain_showuser;
		int total_showuser = rl.total_showuser;
		%>
		<td><p>ユーザ</p></td>
		<td><%=RoutingTable.ep_showUser %></td>
		<td>−</td>
		<td>−</td>
		<%if(remain_showuser!=total_showuser){%>
			<td><font color="red"><%=remain_showuser %></font></td>	
		<%}else{%>
			<td><%=remain_showuser %></td>	
		<%}%>
		<td><%=total_showuser %></td>
		<td>−</td>
		<td>−</td>
		<td>(４)ver.3 & 4<br />(５)<br />(６)</td>
	</tr>
	<tr>
		<%
		int remain_search = rl.remain_search;
		int total_search = rl.total_search;
		int unit_search = rl.unit_search;
		%>
		<td><p>ツイート</p></td>
		<td><%=RoutingTable.ep_search %></td>
		<td><%=unit_search %><br />(件／Page)</td>
		<td><%=RoutingTable.hashtagV2_pagelimit %><br />(ページ制限数)</td>
		<%if(remain_search!=total_search){%>
			<td><font color="red"><%=remain_search %></font></td>	
		<%}else{%>
			<td><%=remain_search %></td>	
		<%}%>
		<td><%=total_search %></td>
		<td><%=remain_search * unit_search %> (最大)</td>
		<td><%=total_search * unit_search %> (最大)</td>
		<td>(１)</td>
	</tr>
	<tr>
		<%
		int remain_user = rl.remain_user;
		int total_user = rl.total_user;
		int unit_user = rl.unit_user;
		%>
		<td><p>ツイート</p></td>
		<td><%=RoutingTable.ep_searchUsers %></td>
		<td><%=unit_user %><br />(件／Page)</td>
		<td><%=RoutingTable.user_pagelimit %><br />(ページ制限数)</td>
		<%if(remain_user!=total_user){%>
			<td><font color="red"><%=remain_user %></font></td>	
		<%}else{%>
			<td><%=remain_user %></td>	
		<%}%>
		<td><%=total_user %></td>
		<td><%=remain_user * unit_user %> (最大)</td>
		<td><%=total_user * unit_user %> (最大)</td>
		<td>(２)</td>
	</tr>
	<tr>
		<%
		int remain_timeline = rl.remain_timeline;
		int total_timeline = rl.total_timeline;
		int unit_timeline = rl.unit_timeline;
		%>
		<td><p>ツイート</p></td>
		<td><%=RoutingTable.ep_getUserTimeLine %></td>
		<td><%=unit_timeline %><br />(件／Page)</td>
		<td><%=RoutingTable.recent_pagelimit %><br />(ページ制限数)</td>
		<%if(remain_timeline!=total_timeline){%>
			<td><font color="red"><%=remain_timeline %></font></td>	
		<%}else{%>
			<td><%=remain_timeline %></td>	
		<%}%>
		<td><%=total_timeline %></td>
		<td><%=remain_timeline * unit_timeline %> (最大)</td>
		<td><%=total_timeline * unit_timeline %> (最大)</td>
		<td>(３)</td>
	</tr>
	<tr>
		<%
		int remain_followerlist = rl.remain_followerlist;
		int[] remain_followerlist_e = rl.remain_followerlist_e;
		int total_followerlist = rl.total_followerlist;
		int unit_followerlist= rl.unit_followerlist;
		%>
		<td><p>フォロワー</p></td>
		<td><%=RoutingTable.ep_getFollowersList %></td>
		<td><%=unit_followerlist %><br />(件／Page)</td>
		<td><%=RoutingTable.pagelimit_follow200 %><br />(ページ制限数)</td>
		<%if(remain_followerlist!=total_followerlist){%>
			<td><font color="red"><%=remain_followerlist %></font><br />	
		<%}else{%>
			<td><%=remain_followerlist %><br />	
		<%}%>
		<%-- 各アカウント毎に残数の内訳を表示 --%>
		(<%for(int i=0; i<RoutingTable.authkey_max; i++){%><%=remain_followerlist_e[i]%><%if(i<(RoutingTable.authkey_max-1)){%>+<%}%><%}%>)</td>
		<td><%=total_followerlist %></td>
		<td><%=remain_followerlist * unit_followerlist %></td>
		<td><%=total_followerlist * unit_followerlist %></td>
		<td>(４)ver.3</td>
	</tr>
	<tr>
		<%
		int remain_followerids = rl.remain_followerids;
		int total_followerids = rl.total_followerids;
		int unit_followerids = rl.unit_followerids;
		%>
		<td><p>フォロワー</p></td>
		<td><%=RoutingTable.ep_getFollowersIDs %></td>
		<td><%=unit_followerids %><br />(件／Page)</td>
		<td><%=RoutingTable.pagelimit_follow5000 %><br />(ページ制限数)</td>
		<%if(remain_followerids!=total_followerids){%>
			<td><font color="red"><%=remain_followerids %></font></td>	
		<%}else{%>
			<td><%=remain_followerids %></td>	
		<%}%>
		<td><%=total_followerids %></td>
		<td><%=remain_followerids * unit_followerids %></td>
		<td><%=total_followerids * unit_followerids %></td>
		<td>(４)ver.4<br />(５)<br />(６)</td>
	</tr>
	<tr>
		<%
		int remain_friendslist = rl.remain_friendslist;
		int[] remain_friendslist_e = rl.remain_friendslist_e;
		int total_frinedslist = rl.total_friendslist;
		int unit_friendslist = rl.unit_friendslist;
		%>
		<td><p>フォロー</p></td>
		<td><%=RoutingTable.ep_getFriendsList %></td>
		<td><%=unit_friendslist %><br />(件／Page)</td>
		<td><%=RoutingTable.pagelimit_following200 %><br />(ページ制限数)</td>
		<%if(remain_friendslist!=total_frinedslist){%>
			<td><font color="red"><%=remain_friendslist %></font><br />	
		<%}else{%>
			<td><%=remain_friendslist %><br />	
		<%}%>
		<%-- 各アカウント毎に残数の内訳を表示 --%>
		(<%for(int i=0; i<RoutingTable.authkey_max; i++){%><%=remain_friendslist_e[i]%><%if(i<(RoutingTable.authkey_max-1)){%>+<%}%><%}%>)</td>
		<td><%=total_frinedslist %></td>
		<td><%=remain_friendslist * unit_friendslist %></td>
		<td><%=total_frinedslist * unit_friendslist %></td>
		<td>(６)</td>
	</tr>
	<tr>
		<%
		int remain_friendsids = rl.remain_friendsids;
		int total_friendsids = rl.total_friendsids;
		int unit_friendsids = rl.unit_friendsids;
		%>
		<td><p>フォロー</p></td>
		<td><%=RoutingTable.ep_getFriendsIDs %></td>
		<td><%=unit_friendsids %><br />(件／Page)</td>
		<td><%=RoutingTable.pagelimit_friends5000 %><br />(ページ制限数)</td>
		<%if(remain_friendsids!=total_friendsids){%>
			<td><font color="red"><%=remain_friendsids %></font></td>	
		<%}else{%>
			<td><%=remain_friendsids %></td>	
		<%}%>
		<td><%=total_friendsids %></td>
		<td><%=remain_friendsids * unit_friendsids %></td>
		<td><%=total_friendsids * unit_friendsids %></td>
		<td>−</td>
	</tr>
	<tr>
		<%
		int remain_retweet = rl.remain_retweet;
		int total_retweet = rl.total_retweet;
		int unit_retweet = rl.unit_retweet;
		%>
		<td><p>リツイート</p></td>
		<td><%=RoutingTable.ep_getRetweets %></td>
		<td><%=unit_retweet %><br />(件／Page)</td>
		<td>1<br />(Max100件制限)</td>
		<%if(remain_retweet!=total_retweet){%>
			<td><font color="red"><%=remain_retweet %></font></td>	
		<%}else{%>
			<td><%=remain_retweet %></td>	
		<%}%>
		<td><%=total_retweet %></td>
		<td><%=remain_retweet * unit_retweet %> (最大)</td>
		<td><%=total_retweet * unit_retweet %> (最大)</td>
		<td>(５)</td>
	</tr>
	<tr>
		<%
		int remain_ratelimit = rl.remain_ratelimit;
		int total_ratelimit = rl.total_ratelimit;
		%>
		<td><p>リツイート</p></td>
		<td><%=RoutingTable.ep_getRateLimitStatus %></td>
		<td>180<br />(件／Key)</td>
		<td><%=RoutingTable.authkey_max %><br />(認証キー数)</td>
		<%if(remain_ratelimit!=total_ratelimit){%>
			<td><font color="red"><%=remain_ratelimit %></font></td>	
		<%}else{%>
			<td><%=remain_ratelimit %></td>	
		<%}%>
		<td><%=total_ratelimit %></td>
		<td>−</td>
		<td>−</td>
		<td>(４)ver.3<br />(６)<br />本画面</td>
	</tr>

</table>
<br />
<br />
<div class="center"><a href=<%=RoutingTable.home_fromnonauth %>>→Twitter Support Toolホームページへ戻る</a></div>
</body>
</html>