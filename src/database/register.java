package database;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class for Servlet: register
 *
 */
 public class register extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public register() {
		super();
	}   	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		regis(request, response);
	}  	
	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		regis(request, response);
	}   	  	    
	void regis(HttpServletRequest request, HttpServletResponse response)
	{
		try {
		String firstname=request.getParameter("Field1");
		String lastname=request.getParameter("Field2");
		String phonenumber=request.getParameter("Field6");
		String wbutroll=request.getParameter("Field7");
		String year=request.getParameter("Field11");
		String emaild=request.getParameter("Field5");
		String password=request.getParameter("Field8");
		String password1=request.getParameter("Field9");
		String department=request.getParameter("Field12");
		//if(firstname.compareTo("")==0 || lastname.compareTo("")==0||phonenumber.compareTo("")==0||wbutroll.compareTo("")==0||year.compareTo("")==0||emaild.compareTo("")==0||password.compareTo("")==0||password1.compareTo("")==0||password.compareTo(password1)!=0)
		System.out.print(firstname+lastname+phonenumber+wbutroll+year+emaild+password+password1+department);
		if(firstname==null || lastname==null||phonenumber==null||wbutroll==null||year==null||emaild==null||password==null||password1.compareTo("")==0)
		{
			response.sendRedirect("index.jsp?message='Fill Up the Form properly'");
			return;
		}
		else
		{
			if(password.compareTo(password1)!=0)
			{
				response.sendRedirect("index.jsp?message='password not match'");
				return;
			}
		dbConnect db= new dbConnect();
		db.insertQueryString("insert into nixalregister(fn,ln,ph,wb,yr,em,pa,de) values('"+firstname+"','"+lastname+"','"+phonenumber+"','"+wbutroll+"','"+year+"','"+emaild+"','"+password+"','"+department+"')");
		
		
			response.sendRedirect("pages/success.jsp");
		}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
}