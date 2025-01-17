package web.httpsession;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "SessionsServlet", urlPatterns = "/SessionsServlet")
public class SessionsServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // GET SESSION OBJECT
        HttpSession session = request.getSession();
        // SESSION ATTRIBUTES
        String title;
        Integer visitCounter = (Integer) session.getAttribute("visitCounter");
        // FIRST TIME SESSION?
        if (visitCounter == null) {
            visitCounter = 1;
            title = "Welcome for first time";
        } else {
            visitCounter ++;
            title = "Welcome for " + visitCounter + " times";
        }

        session.setAttribute("visitCounter", visitCounter);


        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SessionsServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Welcome to sessions servlet</h1>");
            out.println("<p>" + title + "</p>");
            out.println("<p>ID Session: " + session.getId() + "</p>");
            out.println("<a href='/HttpSession_war' >Go Back</a>");
            out.println("</body>");
            out.println("</html>");
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
