package web.cookies;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CookiesServlet", urlPatterns = "/CookiesServlet")
public class CookiesServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // USER VISIT SITE FOR FIRST TIME (SIMULATION)
        boolean newUser = true;
        // GET COOKIES ARRAY
        Cookie[] cookies = request.getCookies();
        // SEARCH COOKIES CREATED BEFORE (recurringVisitor)
        if(cookies != null) {
            for(Cookie c : cookies) {
                if (c.getName().equals("recurringVisitor") && c.getValue().equals("yes")) {
                    newUser = false;
                    break;
                }
            }
        }

        String message;
        if(newUser) {
            // CREATE NEW COOKIE TO IDENTIFY RECURRING USER
            Cookie visitorCookie = new Cookie("recurringVisitor", "yes");
            response.addCookie(visitorCookie);
            message = "Thanks for visit our site for first time";
        }
        else {
            message = "Thanks for visit our site again";
        }



        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CookiesServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Handle Cookies</h1>");
            out.println("<p>Message: " + message + "</p>");
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
