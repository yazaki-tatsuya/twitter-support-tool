package models;

import java.util.ArrayList;
import java.util.List;

//# ○○さんの直近ツイートの格納用
public class FollowingOnly {

	private List<Long> id = new ArrayList<Long>();
	private List<String> isfollower = new ArrayList<String>();
	private List<String> screen_name = new ArrayList<String>();
	private List<Integer> follower_count = new ArrayList<Integer>();
	private List<String> following_name = new ArrayList<String>();
	
	//# set
	public void setId(long id) {this.id.add(id);}
	public void setIsFollower(String isfollower) {this.isfollower.add(isfollower);}
	public void setUser(String screen_name) {this.screen_name.add(screen_name);}
	public void setFollowerCnt(Integer follower_count) {this.follower_count.add(follower_count);}
	public void setFollowingName(String following_name) {this.following_name.add(following_name);}
	
	//# get
	public List<Long> getId() {return this.id;}
	public List<String> getIsFollower() {return this.isfollower;}
	public List<String> getUser() {return this.screen_name;}
	public List<Integer> getFollowerCnt() {return this.follower_count;}
	public List<String> getFollowingName() {return this.following_name;}
}
