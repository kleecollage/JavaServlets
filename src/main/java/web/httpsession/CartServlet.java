package web.httpsession;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CartServlet", urlPatterns = "/CartServlet")
public class CartServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // GET HTTP SESSION OBJECT
        HttpSession session = request.getSession();
        // GET LST ITEMS SESSION (IF EXISTS)
        List<String> items = (List<String>)session.getAttribute("items");
        // VERIFY IF LIST ITEMS EXISTS
        if (items == null) {
            items = new ArrayList<>();
            session.setAttribute("items", items);
        }
        // PROCESS NEW ITEM
        String newItem = request.getParameter("item");
        // VERIFY NOT NULL AND ADD
        if (newItem != null && !newItem.trim().isEmpty()) {
            items.add(newItem);
        }

        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Shopping Cart</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>List Items</h1><br/><ul>");
            // Iterate over list items
            for (String item : items) {
                out.print("<li>" + item + "</li>");
            }
            out.println("</ul><br/>");
            out.println("<a href='/HttpSession_war'>Back to Cart</a>");
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
