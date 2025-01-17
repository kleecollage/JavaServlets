package web.handleforms;

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

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Process Form Params
        var user = request.getParameter("user");
        var password = request.getParameter("password");
        String[] technologies = request.getParameterValues("technology");
        var gender = request.getParameter("gender");
        var occupation = request.getParameter("occupation");
        var comment = request.getParameter("comment");
        var hidden = request.getParameter("hidden");

        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html data-bs-theme='dark'>");
            out.println("""
                    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
                              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
                              crossorigin="anonymous">""");
            out.println("<head>");
            out.println("<title>Servlet</title>");
            out.println("</head>");
            out.println("<body class='container mt-5'>");
            out.println("<h1 class='mb-4 text-center text-warning'>Params Processed By Servlet</h1>");
            out.println("<table class='table table-striped table-bordered'>");
            out.println("<tr><th>User</th><td>" + user + "</td></tr>");
            out.println("<tr><th>Password</th><td>" + password + "</td></tr>");
            out.println("<tr><th>Technologies</th><td>");
            if (technologies != null) {
                out.println(String.join(" / ", technologies));
            } else {
                out.println("technologies not provided");
            }
            out.println("</td></tr>");
            out.println("<tr><th>Gender</th><td>" + gender + "</td></tr>");
            out.println("<tr><th>Occupation</th><td>" + occupation + "</td></tr>");
            out.println("<tr><th>Comment</th><td>" + comment + "</td></tr>");
            out.println("<tr><th>Hidden Value</th><td>" + hidden + "</td></tr>");
            out.println("</table>");
            out.println("""
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
                            crossorigin="anonymous"></script>""");
            out.println("</body>");
            out.println("</html>");
        }
    }

    public void destroy() {
    }
}