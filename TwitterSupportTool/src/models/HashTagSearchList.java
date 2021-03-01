package models;

import java.util.ArrayList;
import java.util.List;

//# ○○さんの直近ツイートの格納用
public class HashTagSearchList {

	private List<Long> tweetid = new ArrayList<Long>();
	private List<String> screen_name = new ArrayList<String>();
	private List<String> content = new ArrayList<String>();
	private List<String> date = new ArrayList<String>();
	private List<Integer> favcnt = new ArrayList<Integer>();
	private List<Integer> retcnt = new ArrayList<Integer>();

	
	//# set
	public void setTweetId(long tweetid) {this.tweetid.add(tweetid);}
	public void setUser(String screen_name) {this.screen_name.add(screen_name);}
	public void setContent(String content) {this.content.add(content);}
	public void setDate(String date) {this.date.add(date);}
	public void setFavCnt(Integer favcnt) {this.favcnt.add(favcnt);}
	public void setRetCnt(Integer retcnt) {this.retcnt.add(retcnt);}
	
	//# get
	public List<Long> getTweetId() {return this.tweetid;}
	public List<String> getUser() {return this.screen_name;}
	public List<String> getContent() {return this.content;}
	public List<String> getDate() {return this.date;}	
	public List<Integer> getFavCnt() {return this.favcnt;}
	public List<Integer> getRetCnt() {return this.retcnt;}
	
}
