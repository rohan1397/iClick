package controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class RegisterServlet
 */
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
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
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String email=request.getParameter("email");
		String dob=request.getParameter("dob");
		String gender=request.getParameter("gen");
		String contact=request.getParameter("con");
		String coun=request.getParameter("conu");
		String state=request.getParameter("state");
		String password=request.getParameter("pass");
		String cpassword=request.getParameter("pass1");
		String captcha=request.getParameter("captcha");
		String page="";
		Date d=new Date();
		String s=d.toString();// Mon 4 Sept 12:41:12 IST 2017
		String s1=s.substring(24,28);
		String s2=dob.substring(0,4);
		int y=Integer.parseInt(s1);
		//Interger w=Interger.valueOf(s)
		int y1=Integer.parseInt(s2);
		HttpSession session=request.getSession();
		String captcha1=(String)session.getAttribute("captcha");
		if(password.equals(cpassword))
		{
			if(captcha.equals(captcha1))
			{
				if(y1>1950 && y-y1>=18)
				{
					//model part
				}
				else
				{
					page="error.jsp?msg=18";
				}
			}
			else
			{
				page="errpor.jsp?msg=captchadoesnotmatch";
			}
		}
		else
		{
			page="error.jsp?msg=password";
		}
	response.sendRedirect(page);
	}

}
