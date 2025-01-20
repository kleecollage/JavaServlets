package web.mvc.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import web.mvc.model.Rectangle;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ServletController", urlPatterns = "/ServletController")
public class ServletController extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 1. PROCESS PARAMETERS
        String action = request.getParameter("action");

        // 2. CREATE JAVABEANS (CLASS MODEL)
        Rectangle rectangleRequest = new Rectangle(1, 2);
        Rectangle rectangleSession = new Rectangle(3, 4);
        Rectangle rectangleApplication = new Rectangle(5, 6);

        // 3. ADD JAVABEAN SCOPE (request, session, application)
        if ("addVariables".equals(action)) {
            // Request scope
            request.setAttribute("rectangleRequest", rectangleRequest);
            // Session scope
            HttpSession session = request.getSession();
            session.setAttribute("rectangleSession", rectangleSession); // share model
            // Application scope
            ServletContext application = this.getServletContext();
            application.setAttribute("rectangleApplication", rectangleApplication);
            // Add message
            request.setAttribute("message", "The variables were added to the rectangle");
        }
        else if ("listVariables".equals(action)) {
            // Redirect to JSP that deploys the variables
            request.getRequestDispatcher("WEB-INF/variablesScope.jsp").forward(request, response);
        }
        else {
            // Redirect to index
            request.setAttribute("message", "Action not provided or not recognized");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }

        // 4. REDIRECT TO SELECTED VIEW
        /* RequestDispatcher requestDispatcher = request.getRequestDispatcher("views/deployVariables.jsp");
        requestDispatcher.forward(request, response); */

        // 4. REDIRECT TO INDEX JSP
        request.getRequestDispatcher("index.jsp").forward(request, response);
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
