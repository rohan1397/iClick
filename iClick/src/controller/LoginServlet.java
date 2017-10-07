package controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.crypto.SecretKey;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;
import encryption.Encryption;
import model.Model;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String page=" ";
		
		String seckey =null;
			
		if(email.equals("") || password.equals(""))
		{
			page="error.jsp?msg=can'tnull";
		}
		else
		{	System.out.println("else part");
		seckey = Encryption.encrypt(password+email);
			String key="select * from register where email='"+email+"' and password='"+seckey+"'";
			//String sql="select * from register where email='"+email+"' and password='"+encryptedpassword+"'";
			Model m=new Model();
			m.setEmail(email);
			m.setPassword(seckey);
			System.out.println(seckey);
			
				System.out.println("else part");
			ResultSet rs;
			try {
				rs = Dao.select(m, key);
			 
			if(rs.next())
			{		
					
					page="dashbaord.jsp";	
			}
			else
			{
				System.out.println("error");
			}
			}
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			 
		}
		response.sendRedirect(page);
	}

}
