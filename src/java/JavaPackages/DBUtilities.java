package JavaPackages;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import JavaPackages.Pagination;

public class DBUtilities {
	private Connection conn;
	private Statement stmt;
	private ResultSet rs;
	public String url="jdbc:mysql://127.0.0.1:3306/toywebproject";

	static{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public Connection getConnection(){
		try {
			return DriverManager.getConnection(url,"Sowmiyaa","Soso777!!!");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public int update(String sql){
		int row=-1;
		try {
			conn=getConnection();
			stmt=conn.createStatement();
			row=stmt.executeUpdate(sql);	
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close();
		}
		return row;
	}
	
	public List<Map<String,String>> find(String sql){
		List<Map<String,String>> list=new LinkedList<Map<String,String>>();
		try {
			conn=getConnection();
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			ResultSetMetaData rsmd=rs.getMetaData();
			while(rs.next()){
				Map<String,String> map=new HashMap<String,String>();
				for(int i=1;i<=rsmd.getColumnCount();i++){
					map.put(rsmd.getColumnName(i),rs.getString(i));
				}
				list.add(map);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close();
		}
		return list;
	}
	
	
	 
	 
	private void close(){
		try {
			if(rs!=null){
				rs.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			if(stmt!=null){
				stmt.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			if(conn!=null && !conn.isClosed()){
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
}
