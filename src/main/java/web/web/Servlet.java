package web.web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Servlet", value = "/Servlet")
public class Servlet extends HttpServlet {

    public void init() {

    }
    // Manejo de solicitudes GET
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        handleRequest(request, response);
    }

    // Manejo de solicitudes POST
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        handleRequest(request, response);
    }

    private void handleRequest(HttpServletRequest request, HttpServletResponse response) throws IOException {
        var user = request.getParameter("user");
        var password = request.getParameter("password");

        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Handle Parameters from Servlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Parameters received</h1>");
            out.println("<h2>User Name: " + user + "</h2>");
            out.println("<h2>Password: " + password + "</h2>");
            out.println("</body></html>");
        }
    }

    public void destroy() {
    }
}
