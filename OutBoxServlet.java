package controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;
import model.Model;
import Exception.ValidException;

public class OutBoxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public OutBoxServlet() {
        super();

    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page="";
		String receiver="";
		String receviers[]=receiver.split(" ");
		String sql="";
		Model m=new Model();
		//model.setSender(sender);
		m.setReceiver(receiver);
		//model.setCc(cc);
		//model.setSubject(subject);
		//model.setBody(body);
		Dao dao=new Dao();
		for(int i=0;i<receviers.length;i++)
		{
			 sql="select email from register where email='"+receviers[i]+"'";
			 try{
			ResultSet i1=Dao.select(m,sql);
			if(i1.next())
			{
				
			}
			else
			{
				System.out.println("not found");
			}
			 }
			 catch(Exception e)
			 {
				 
			 }
		}
				
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
