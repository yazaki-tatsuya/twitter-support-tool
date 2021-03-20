package models;

import java.util.Date;

public class OperationLog {
	
	private Date op_date = new Date();
	private String op_user = "";
	private String op_func = "";
	private String searchkey = "";
	
	//# constructor
	public OperationLog(Date op_date,String op_user,String op_func,String searchkey){
		this.op_date = op_date;
		this.op_user = op_user;
		this.op_func = op_func;
		this.searchkey = searchkey;		
	}
	
	//# set
	public void setOpDate(Date op_date) {this.op_date = op_date;}
	public void setOpUser(Date op_user) {this.op_date = op_user;}
	public void setOpFunc(Date op_func) {this.op_date = op_func;}
	public void setSearchKey(Date searchkey) {this.op_date = searchkey;}
	
	//# get
	public Date getOpDate() {return this.op_date;}
	public String getOpUser() {return this.op_user;}
	public String getOpFunc() {return this.op_func;}
	public String getSearchKey() {return this.searchkey;}
	
}
