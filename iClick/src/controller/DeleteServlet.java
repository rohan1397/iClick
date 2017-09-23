package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteServlet
 */
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String sql="select * from trash1";
		Date d=new Date();
			//String s=d.toString();
			  SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");  
			    String str= formatter.format(d); 
			    String today_date[] = str.split("-");
			     
			System.out.println(str);
		try{
			
			 Class.forName("com.ibm.db2.jcc.DB2Driver");
			Connection conn=DriverManager.getConnection("jdbc:db2://localhost:50000/gnu1","rohan","rj1997rj");

			PreparedStatement ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			
			//System.out.println(s);
			while(rs.next())
			{
			System.out.println(rs.getString(1)+" "+rs.getString(2));
			String ddate=rs.getString("del_date");
			String del_date[]=ddate.split("-");
			System.out.println(del_date[0]);
			
			if((Integer.parseInt(today_date[0])-Integer.parseInt(del_date[0]))>=1||(Integer.parseInt(today_date[1])-Integer.parseInt(del_date[1]))>=1||(Integer.parseInt(today_date[2])-Integer.parseInt(del_date[2]))>=1)
			{
				System.out.println("hello 1");
				PreparedStatement ps2=conn.prepareStatement("delete from trash1 where del_date='"+ddate+"'");
		
		System.out.println("hello-2");
		int i =ps2.executeUpdate();
		System.out.println("hello-3");
			}
			}
			
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
