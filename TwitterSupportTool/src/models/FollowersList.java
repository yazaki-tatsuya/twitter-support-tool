package models;

import java.util.ArrayList;
import java.util.List;

//# ○○さんの直近ツイートの格納用
public class FollowersList {

	private List<Long> id = new ArrayList<Long>();
	private List<String> screen_name = new ArrayList<String>();
	private List<Integer> follower_count = new ArrayList<Integer>();
	private List<String> follower_name = new ArrayList<String>();
	
	//# set
	public void setId(long id) {this.id.add(id);}
	public void setUser(String screen_name) {this.screen_name.add(screen_name);}
	public void setFollowerCnt(Integer follower_count) {this.follower_count.add(follower_count);}
	public void setFollowerName(String following_name) {this.follower_name.add(following_name);}
	
	//# get
	public List<Long> getId() {return this.id;}
	public List<String> getUser() {return this.screen_name;}
	public List<Integer> getFollowerCnt() {return this.follower_count;}
	public List<String> getFollowerName() {return this.follower_name;}
}
