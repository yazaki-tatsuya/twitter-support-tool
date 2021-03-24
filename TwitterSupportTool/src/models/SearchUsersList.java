package models;

import java.util.ArrayList;
import java.util.List;

//# ○○さんの直近ツイートの格納用
public class SearchUsersList {

	private List<String> user_name = new ArrayList<String>();
	private List<String> user_id = new ArrayList<String>();
	private List<String> islocked = new ArrayList<String>();
	private List<String> followernum = new ArrayList<String>();
	private List<String> friendnum = new ArrayList<String>();
	private List<String> newtweet = new ArrayList<String>();
	
	//# set
	public void setUserName(String user_name) {this.user_name.add(user_name);}
	public void setUserId(String user_id) {this.user_id.add(user_id);}
	public void setIsLocked(String islocked) {this.islocked.add(islocked);}
	public void setFollowerNum(String followernum) {this.followernum.add(followernum);}
	public void setFriendNum(String friendnum) {this.friendnum.add(friendnum);}
	public void setNewTweet(String newtweet) {this.newtweet.add(newtweet);}
	
	//# get
	public List<String> getUserName() {return this.user_name;}
	public List<String> getUserId() {return this.user_id;}
	public List<String> getIsLocked() {return this.islocked;}
	public List<String> getFollowerNum() {return this.followernum;}
	public List<String> getFriendNum() {return this.friendnum;}
	public List<String> getNewTweet() {return this.newtweet;}
}
