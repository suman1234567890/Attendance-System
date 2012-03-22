package database;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class for Servlet: login
 *
 */
 public class login extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public login() {
		super();
	}   	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		log(request,response);
	}  	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		log(request,response);
	}   
	void log(HttpServletRequest request, HttpServletResponse response)
	{
		try
		{
			String username=request.getParameter("Field1");
			String password=request.getParameter("Field6");
			dbConnect db = new dbConnect();
			ResultSet rs=db.executeQueryString("select uid from nixalregister where em='"+username+"' and pa='"+password+"'");
			if(rs.next())
			{
				HttpSession hs= request.getSession();
				hs.setAttribute("uid", rs.getString(1));
				response.sendRedirect("pages/home.jsp");
				
			}
			else
			{
				response.sendRedirect("login.jsp?message='password mismatched'");
			}
		}
		catch(Exception e)
		{
			
		}
	}
}