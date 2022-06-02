package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;

import dto.Userinfo;
import db.DBAction;

public class UserinfoDao {
	public Userinfo idcheck(String id,String pw) throws Exception{
		Userinfo userinfo = null;
		
		Connection conn = DBAction.getInstance().getConnection();
		Statement stmt = null;
		ResultSet rs = null;
		ResultSetMetaData rsmd = null;
		
		String sql = "select * from membership";
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				if(rs.getString(1).equals(id)&&rs.getString(2).equals(pw)) {
					userinfo = new Userinfo().setId(rs.getString(1)).setPwd(rs.getString(2)).setName(rs.getString(3)).setNickname(rs.getString(4)).setEmail(rs.getString(5)).setPhonenumber(rs.getString(6));
					return userinfo;
				}				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return userinfo;
	}
	
	public void insert(Userinfo userinfo) {
		Connection conn = DBAction.getInstance().getConnection();
		Statement stmt = null;
		String sql = "insert into membership values('"+userinfo.getId()+"','"+userinfo.getPwd()+"','"+userinfo.getName()+"','"+userinfo.getNickname()+"','"+userinfo.getEmail()+"','"+userinfo.getPhonenumber()+"')";
		
		try {
			stmt = conn.createStatement();
			stmt.executeUpdate(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void contact(String name,String email,String msg) {
		Connection conn = DBAction.getInstance().getConnection();
		Statement stmt = null;
		String sql = "insert into contact values('"+name+"','"+email+"','"+msg+"')";
		try {
			stmt = conn.createStatement();
			stmt.executeUpdate(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
