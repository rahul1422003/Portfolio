package portfolio;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/login")
public class test extends HttpServlet {
@Override
protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String myemail=req.getParameter("email1");
	String mypass= req.getParameter("pass1");
	 
	PrintWriter out= resp.getWriter();
	
	if(myemail.equals("rahul1422003@gmail.com")&& mypass.equals("rahul123"))
	{
		req.setAttribute("name_key", "Rahul");
		
		
		RequestDispatcher rd =req.getRequestDispatcher("/profile.jsp");
		rd.include(req,resp);
	}
	else {
		resp.setContentType("text/html");
		out.print("<h2 style='color:red'> Sorry id & password is invalid !!!");
		RequestDispatcher rd= req.getRequestDispatcher("/index.jsp");
		rd.include(req, resp);
	}
}
}
