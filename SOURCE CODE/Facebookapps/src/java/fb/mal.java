/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fb;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Avancer Java
 */
@WebServlet(name = "mal", urlPatterns = {"/mal"})
public class mal extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           System.out.println("Hello"); /* TODO output your page here. You may use following sample code. */
     System.out.println("00000000");
          // String email=request.getParameter("email");
              System.out.println("11111111");
          // String sex=request.getParameter("sex");
           
           String malicious=request.getParameter("malicious");
           //String password=request.getParameter("password");
         
       System.out.println("3333333333");
           String Que="insert into malicious(malicious)values" + "('"+malicious+"')";    
              System.out.println("00000000");
              PreparedStatement is=DbConnection.getconnection().prepareStatement(Que);
       System.out.println("44444444");
       is.executeUpdate();
    
       System.out.println("555555555");
      out.println("<script type=\"text/javascript\">");
   out.println("alert('Added');");
   out.println("location='adminhome.jsp';");
   out.println("</script>"); 
                // response.sendRedirect("AddProducts.jsp"); 
            
    
   // response.sendRedirect("Login.jsp");
           
        }  catch(Exception e)
        {
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
