package in.com;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/submit")
public class Connection extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();

        // Get form data
        String myname = req.getParameter("name");
        String myemail = req.getParameter("email");
        String phone = req.getParameter("phone");
        String message = req.getParameter("message");

        // ✅ No database connection needed
        // Just show success message
        out.print("<h3 style='color:green; text-align:center;'>Your message sent successfully!</h3>");

        // Include the contact page again
        RequestDispatcher rd = req.getRequestDispatcher("/contact.jsp");
        rd.include(req, resp);
    }
   
}
