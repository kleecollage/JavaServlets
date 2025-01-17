package web.cookies;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "TimesVisitCookie", urlPatterns = "/TimesVisitCookie")
public class TimesVisitCookie extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int times = 1;
        Cookie[] cookies = request.getCookies();
        // SEARCH COOKIES CREATED BEFORE (timesVisit)
        if(cookies != null) {
            for(Cookie c : cookies) {
                if ("timesVisit".equals(c.getName())) {
                    // CREATE NEW COOKIE TO IDENTIFY TIMES VISITING THE SITE
                    times = Integer.parseInt(c.getValue()) + 1;
                    break;
                }
            }
        }
        // CREATE OR UPDATE THE COOKIE
        Cookie timesVisit = new Cookie("timesVisit", String.valueOf(times));
        timesVisit.setMaxAge(60 * 60 * 24 * 365); // 1 YEAR
        response.addCookie(timesVisit);

        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Times Visit Cookie at</h1>");
            out.println("<p>Times visit the site: " + times + "</p>");
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
