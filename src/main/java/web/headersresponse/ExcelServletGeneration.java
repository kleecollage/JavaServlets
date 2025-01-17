package web.headersresponse;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ExcelServletGeneration", urlPatterns = "/ExcelServletGeneration")
public class ExcelServletGeneration extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/vnd.ms-excel");
        // *** APACHE POI ** HIGHLY RECOMMENDED TO GENERATE EXCEL FILES
        response.setHeader("Content-Disposition", "attachment; filename=excelTest.xlsx");

        response.setHeader("Pragma", "no-cache");
        response.setHeader("Cache-Control", "no-store");
        response.setDateHeader("Expires", -1);

        try (PrintWriter out = response.getWriter()) {
            out.println("\tValues");
            out.println("\t1");
            out.println("\t2");
            out.println("Total\t=SUMA(B2:B3)");
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
