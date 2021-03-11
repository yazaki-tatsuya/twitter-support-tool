package twitter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.HashTagSearchList;
import twitter4j.Query;
import twitter4j.QueryResult;
import twitter4j.Status;
import twitter4j.Twitter;
import twitter4j.TwitterException;
import utils.DbConnectUtil3;
import utils.RoutingTable;

@WebServlet(RoutingTable.hashtagV2_sv)
public class TwitterHashTagSearch_V2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		DbConnectUtil3 db = new DbConnectUtil3();
		if(db.DbUserUseCount(request.getRemoteUser())>=RoutingTable.api_limit) {
			db.DbClose();
			//# 遷移先画面
			String forwardpage = "./LimitExceedError.jsp";
			
			//# 画面遷移
			RequestDispatcher dispatch = request.getRequestDispatcher(forwardpage);
			dispatch.forward(request, response);					
		}else {
			//# DB接続・API利用回数更新
			db.DbUpdateApiUseCount(request.getRemoteUser());
			db.DbClose();
		
			//# キー認証・Twitterクラスのインスタンス生成
			CommonUtil cu = new CommonUtil();
			Twitter twitter = cu.getTwitterV2(RoutingTable.authkey_max);	
			
			//#### 変数定義など
			//# エンコーディング方式の設定
			request.setCharacterEncoding("UTF-8");
			response.setHeader("Content-Type", "text/html; charset=UTF-8");
			//# 検索対象キーワード & いいね数の取得（nullでない＆""でない場合に取得）
			String searchTarget = "#"+(String) request.getSession().getAttribute("searchTag");
			int favcount = Integer.parseInt((String)request.getSession().getAttribute("searchFav"));
			
			//# 遷移先画面
			String forwardpage = RoutingTable.hashtagV2_r;
			System.out.println("# == [SV_①v2] Forward page : "+forwardpage);

			//#### ハッシュタグによる検索
			//# ハッシュタグの検索用クラス(Query)
			Query query = new Query();		
			//# クエリ生成（検索対象のワードをセット＆取得件数セット）
			query.setCount(RoutingTable.hashtag_setcount);
			query.setSince("2020-11-01");
			query.setQuery(searchTarget);			
			//# 検索結果の格納用
			QueryResult queryResult = null;

			//# 最終結果の格納用
			HashTagSearchList ht = new HashTagSearchList();
//			List<String> user = new ArrayList<String>();
//			List<Long> tweetid = new ArrayList<Long>();
//			List<String> result = new ArrayList<String>();
//			List<String> date = new ArrayList<String>();
//			List<Integer> favcnt = new ArrayList<Integer>();
//			List<Integer> retcnt = new ArrayList<Integer>();
			//# ページループカウント
			int counter = 0;
			//# 検索結果から１Statusずつ、ツイート内容を最終結果に格納
			//# hashtagV2_pagelimitで指定したページ分、結果があるまで検索を続ける
			do {
				//# クエリの発行・結果格納
				try {
					queryResult = twitter.search(query);
				} catch (TwitterException e) {
					e.printStackTrace();
				}
				for(Status status : queryResult.getTweets()) {
					
					if(!status.isRetweet() && status.getFavoriteCount() >= favcount) {
						//####(5)URLの検出・整形
						String tmp = status.getText();
						String regex = "\\b(https?|ftp|file)://[-a-zA-Z0-9+&@#/%?=~_|!:,.;]*[-a-zA-Z0-9+&@#/%=~_|]";
						Pattern pattern = Pattern.compile(regex);
						Matcher matcher = pattern.matcher(tmp);
						while(matcher.find()) {
							String tmp_url = "<a href=\""+matcher.group()+"\" target=\"_blank\">"+matcher.group()+"</a>";
							tmp = tmp.replace(matcher.group(),tmp_url);
						}
						//####(6)日付の加工
						String pattern2 = "yyyy-MM-dd";
						SimpleDateFormat sdf = new SimpleDateFormat(pattern2);
						String date_format = sdf.format(status.getCreatedAt());
										
						//####各要素をArrayListに追加
						ht.setTweetId(status.getId());
						ht.setUser(status.getUser().getScreenName());
						ht.setContent(tmp);
						ht.setDate(date_format);
						ht.setFavCnt(status.getFavoriteCount());
						ht.setRetCnt(status.getRetweetCount());
						
//						user.add(status.getUser().getScreenName());
//						tweetid.add(status.getId());
//						result.add(tmp);
//						date.add(date_format);
//						favcnt.add(status.getFavoriteCount());
//						retcnt.add(status.getRetweetCount());
					}
				}
				//# 0.5秒待つ
				try {
					Thread.sleep(500);				
				}catch(InterruptedException e){
					e.printStackTrace();
				}
				counter++;
				System.out.println("# ==== [SV_①v2] searching tweet of page : "+counter);
			}while((query = queryResult.nextQuery())!=null && counter<RoutingTable.hashtagV2_pagelimit);
			//#### 結果格納・画面遷移
			//# 検索キーをセッションに保存（次画面で使用）
			request.setAttribute("hashtag", searchTarget);
			request.setAttribute("favcount", favcount);	
			System.out.println("# == [SV_①v2] setAttribute hashtag : "+request.getParameter("searchTag")+" FavCount: "+request.getParameter("searchFav"));
			
			//# 結果をリクエストオブジェクトにセット
			request.setAttribute("HashTagSearchList",ht);
//			request.setAttribute("result1",user);
//			request.setAttribute("result2",favcnt);
//			request.setAttribute("result3",result);
//			request.setAttribute("result4",retcnt);
//			request.setAttribute("result5",tweetid);
//			request.setAttribute("result6",date);
			//# 画面遷移
			RequestDispatcher dispatch = request.getRequestDispatcher(forwardpage);
			dispatch.forward(request, response);		
		}	
	}
}
