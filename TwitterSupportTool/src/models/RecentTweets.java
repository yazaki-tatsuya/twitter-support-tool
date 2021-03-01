package models;

import java.util.ArrayList;
import java.util.List;

//# ○○さんの直近ツイートの格納用
public class RecentTweets {

	private List<Long> tweetid = new ArrayList<Long>();
	private List<String> date = new ArrayList<String>();
	private List<Integer> retcnt = new ArrayList<Integer>();
	private List<Integer> favcnt = new ArrayList<Integer>();
	private List<String> content = new ArrayList<String>();
	
	//# set
	public void setTweetId(long tweetid) {this.tweetid.add(tweetid);}
	public void setDate(String date) {this.date.add(date);}
	public void setRetCnt(Integer retcnt) {this.retcnt.add(retcnt);}
	public void setFavCnt(Integer favcnt) {this.favcnt.add(favcnt);}
	public void setContent(String content) {this.content.add(content);}
	
	//# get
	public List<Long> getTweetId() {return this.tweetid;}
	public List<String> getDate() {return this.date;}
	public List<Integer> getRetCnt() {return this.retcnt;}
	public List<Integer> getFavCnt() {return this.favcnt;}
	public List<String> getContent() {return this.content;}
}
