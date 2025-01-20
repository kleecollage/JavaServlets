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

        // 2. CREATE JAVABEANS (CLASS MODEL)
        Rectangle rectangle = new Rectangle(3, 6);

        // 3. ADD JAVABEAN SCOPE (request, session, application)
        request.setAttribute("message", "Hello from ServletController");

        HttpSession session = request.getSession();
        session.setAttribute("rectangle", rectangle); // share model

        // 4. REDIRECT TO SELECTED VIEW
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/deployVariables.jsp");
        requestDispatcher.forward(request, response);
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
