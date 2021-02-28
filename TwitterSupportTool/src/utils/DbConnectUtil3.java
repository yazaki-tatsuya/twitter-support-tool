package utils;

import java.sql.*;
import javax.naming.*;
import javax.sql.*;

public class DbConnectUtil3 {
    
	//# メンバ変数
	protected Connection conn = null;
    protected Statement stmt = null;
    public ResultSet rs = null;
    
    //# SELECT文発行
	public ResultSet DbSelect (String select) {
		try{
			Context context = new InitialContext();
			DataSource ds = (DataSource)context.lookup("java:comp/env/jdbc/LoginTemplate");
			conn = ds.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(select);
			System.out.println("# [Db Connect] ** Connection Open : DbSelect :"+select);
		} catch (SQLException e1) {
			e1.printStackTrace();
		} catch (NamingException e2) {
			e2.printStackTrace();
		}
		return rs;
	}
	
    //# 本日ログイン済チェック
	public boolean DbUserExistCheck (String userid) {
		boolean exist = false;
		try{
			Context context = new InitialContext();
			DataSource ds = (DataSource)context.lookup("java:comp/env/jdbc/LoginTemplate");
			conn = ds.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery("SELECT * FROM USER_ACCESS_COUNT");
			System.out.println("# [Db Connect] ** Connection Open : DbUserExistCheck :SELECT * FROM USER_ACCESS_COUNT");
			while(rs.next()){
				if(rs.getString("USER_ID").equals(userid)) {
					exist = true;
				}	
			}			
		} catch (SQLException e1) {
			e1.printStackTrace();
		} catch (NamingException e2) {
			e2.printStackTrace();
		} finally {
			DbClose();
		}
		return exist;
	}
	
    //# 本日のAPI利用回数を取得
	public int DbUserUseCount (String userid) {
		int use_count = 0;
		try{
			Context context = new InitialContext();
			DataSource ds = (DataSource)context.lookup("java:comp/env/jdbc/LoginTemplate");
			conn = ds.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery("SELECT * FROM USER_ACCESS_COUNT WHERE USER_ID='"+userid+"'");
			System.out.println("# [Db Connect] ** Connection Open : DbUserUseCount =SELECT * FROM USER_ACCESS_COUNT WHERE USER_ID='"+userid+"'");
			while(rs.next()){
				use_count = (Integer) rs.getInt("ACCESS_COUNT");
			}			
		} catch (SQLException e1) {
			e1.printStackTrace();
		} catch (NamingException e2) {
			e2.printStackTrace();
		} finally {
			DbClose();
		}
		return use_count;
	}
	
    //# 本日初ログインなら登録
	public void DbUserInsert (String userid) {
		try{
			Context context = new InitialContext();
			DataSource ds = (DataSource)context.lookup("java:comp/env/jdbc/LoginTemplate");
			conn = ds.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery("INSERT INTO USER_ACCESS_COUNT (USER_ID,ACCESS_COUNT) VALUES ('"+userid+"',0)");			
			System.out.println("# [Db Connect] ** Connection Open : DbUserInsert **");
		} catch (SQLException e1) {
			e1.printStackTrace();
		} catch (NamingException e2) {
			e2.printStackTrace();
		}
	}
	
    //# API使用時カウントをインクリメント
	public void DbUpdateApiUseCount (String userid) {
		int current_count = DbUserUseCount(userid);
		try{
			Context context = new InitialContext();
			DataSource ds = (DataSource)context.lookup("java:comp/env/jdbc/LoginTemplate");
			conn = ds.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery("UPDATE USER_ACCESS_COUNT SET ACCESS_COUNT="+(current_count+1)+" WHERE USER_ID='"+userid+"'");			
			System.out.println("# [Db Connect] ** Connection Open : DbUpdateApiUseCount **");
		} catch (SQLException e1) {
			e1.printStackTrace();
		} catch (NamingException e2) {
			e2.printStackTrace();
		}
	}
	
	//# クローズ処理
	public void DbClose () {
		try {
			if(rs != null) {rs.close(); System.out.println("# [Db Connect] @@ Connection Closed @@");}
			if(stmt != null) {stmt.close();}
			if(conn != null) {conn.close();}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	//# ユーザID取得
	public static String GetUser (String userid) {
		if(userid==null || userid.equals("")) {
			return "ゲスト";
		}else {
			return userid;
		}
	}	
}