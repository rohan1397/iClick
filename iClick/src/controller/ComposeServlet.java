package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;
import model.Model;

/**
 * Servlet implementation class ComposeServlet
 */
public class ComposeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ComposeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sender=request.getParameter("sender");
		String receiver=request.getParameter("receiver");
		String receviers[]=receiver.split(" ");
		String cc=request.getParameter("cc");
		String subject=request.getParameter("subject");
		String body=request.getParameter("message");
		String page=" ";
		System.out.println(sender+"	"+receiver+"	"+subject+"	"+cc+" "+body);
		if(sender.equals("")||receiver.equals("")||body.equals(""))
		{
			page="error.jsp?msg=null";
		}
		else
		{
			Model m=new Model();
			m.setSender(sender);
			m.setReceiver(receiver);
			m.setCc(cc);
			m.setSubject(subject);
			m.setBody(body);
			Dao dao=new Dao();
			
		}
	}

}
