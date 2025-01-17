package web.statuscodes;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Servlet", urlPatterns = "/Servlet")
public class Servlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // DATA OK
        var userOk = "admin";
        var passwordOk = "123";

        // GET FORM DATA
        var user = request.getParameter("username");
        var password = request.getParameter("password");

        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            if (userOk.equals(user) && passwordOk.equals(password)) {
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Auth Success</title>");
                out.println("</head>");
                out.println("<body>");
                out.println("<h1>Authentication Successfully</h1>");
                out.println("<p>Welcome " + user + "</p>");
                out.println("</body>");
                out.println("</html>");
            } else {
                response.sendError(HttpServletResponse.SC_UNAUTHORIZED, "Invalid Credentials");
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
