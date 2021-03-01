package models;

import java.util.ArrayList;
import java.util.List;

//# ○○さんの直近ツイートの格納用
public class RetweetersList {

	private List<String> user = new ArrayList<String>();
	private List<Long> id = new ArrayList<Long>();
	private List<String> isfollower = new ArrayList<String>();
	
	//# set
	public void setUser(String user) {this.user.add(user);}
	public void setId(long id) {this.id.add(id);}
	public void setIsFollower(String isfollower) {this.isfollower.add(isfollower);}
	
	//# get
	public List<String> getUser() {return this.user;}
	public List<Long> getId() {return this.id;}
	public List<String> getIsFollower() {return this.isfollower;}
}
