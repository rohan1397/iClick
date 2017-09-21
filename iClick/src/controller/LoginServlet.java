package controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

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
		if(email.equals("") || password.equals(""))
		{
			page="error.jsp?msg=can'tnull";
		}
		else
		{	String toencrypt=email+password;
			Encryption encryption=new Encryption();
			String encryptedpassword=encryption.encrypt(toencrypt);
			String sql="select * from register where email='"+email+"' and password='"+encryptedpassword+"'";
			Model m=new Model();
			m.setEmail(email);
			m.setPassword(password);
			Dao dao=new Dao();
			try {
			ResultSet rs=dao.select(m, sql);
			if(rs.next())
			{
				page="Welcome.jsp";
			}
			} 
			catch (SQLException e) 
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		response.sendRedirect(page);
	}

}
