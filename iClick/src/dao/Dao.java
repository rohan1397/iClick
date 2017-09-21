package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Model;

public class Dao {
	static Connection con=null;
	static 
	{
		try
		{
			Class.forName("com.ibm.db2.jcc.DB2Driver");
			con=DriverManager.getConnection("jdbc:db2://localhost:50000/iclick","rohan","rj1997rj");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	public static int insert(Model m, String sql) throws SQLException {
		PreparedStatement ps=con.prepareStatement(sql);
		int i=ps.executeUpdate();
		return i;
		
	}
	public static ResultSet select(Model m, String checkemail) throws SQLException {
		// TODO Auto-generated method stub
		PreparedStatement ps=con.prepareStatement(checkemail);
		ResultSet rs=ps.executeQuery();
		return rs;
		
	}
	
	
}
