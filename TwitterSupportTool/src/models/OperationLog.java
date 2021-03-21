package models;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

public class OperationLog {
	
	private final String logfile = "/home/admin/eclipse-workspace/TwitterSupportTool/WebContent/custom_logs/operation_logs.txt";
	private Date op_date = new Date();
	private String op_user = "";
	private String op_func = "";
	private String searchkey = "";
	private String message = "";
	
	//# constructor
	public OperationLog(Date op_date,String op_user,String op_func,String searchkey,String message){
		this.op_date = op_date;
		this.op_user = op_user;
		this.op_func = op_func;
		this.searchkey = searchkey;
		this.message = message;	
	}
	
	//# set
	public void setOpDate(Date op_date) {this.op_date = op_date;}
	public void setOpUser(String op_user) {this.op_user = op_user;}
	public void setOpFunc(String op_func) {this.op_func = op_func;}
	public void setSearchKey(String searchkey) {this.searchkey = searchkey;}
	public void setMessage(String message) {this.message = message;}
	
	//# get
	public Date getOpDate() {return this.op_date;}
	public String getOpUser() {return this.op_user;}
	public String getOpFunc() {return this.op_func;}
	public String getSearchKey() {return this.searchkey;}
	public String getMessage() {return this.message;}
	
	//# write log
	public void WriteLog() {
		try{
			//# ファイル書き出し
			FileWriter writer = new FileWriter(logfile,true);
			BufferedWriter bwriter = new BufferedWriter(writer);
			PrintWriter pwriter = new PrintWriter(bwriter);			
			//# 日付の整形
			Date dt = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss.SSS");
			String formatdate = sdf.format(this.op_date);
			//# 検索キーが日本語だとprintfがずれる件の対応
			int zenkaku_count = 0, keylength = 0;
			char[] c = this.searchkey.toCharArray();
			for(int i=0; i<c.length; i++) {
				if(String.valueOf(c[i]).getBytes().length <= 1) {
					keylength += 1;
				}else {					
					zenkaku_count += 1;
					keylength += 2;
				}
			}
			
			pwriter.printf("|%-25s|%-10s|%-14s|%-"+(40-zenkaku_count)+"s|%-50s", formatdate,this.op_user,this.op_func,this.searchkey,this.message);
			pwriter.write("\r\n");
			pwriter.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}
