/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fb;

import static fb.DbConnection.con;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
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
@WebServlet(name = "verify", urlPatterns = {"/verify"})
public class verify extends HttpServlet {

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
      PrintWriter out = response.getWriter();
        try {
            System.out.println("Hello");
            /* TODO output your page here. You may use following sample code. */
            System.out.println("00000000");
           String appurl=request.getParameter("appurl");
              System.out.println("11111111"+appurl);
              String licenseno=request.getParameter("licenseno");
          
              System.out.println("2222222222"+licenseno);
          
       
    Statement st=null;
      System.out.println("33333333");
          
String url=request.getParameter("appurl");
//String username=session.getAttribute("username").toString();  
  PreparedStatement pst=DbConnection.getconnection().prepareStatement("select * from malicious where malicious=? ");
         System.out.println("*11111****");   
         pst.setString(1, appurl);
         System.out.println("**2222222**");
            ResultSet rs=pst.executeQuery();
if(rs.next())
    {
        
  out.println("<script type=\"text/javascript\">");
   out.println("alert('Malicious Application');");
   out.println("location='frappe.jsp';");
   out.println("</script>"); 
   // response.sendRedirect("Login.jsp");
    }else{
    
    String aid=request.getParameter("aid");
                    System.out.println("222222222"+aid);
               
           // String status=request.getParameter("status");
          
                            
              System.out.println("*/*/*/*");
             PreparedStatement ps1=DbConnection.getconnection().prepareStatement("Update app set status=?, licenseno=? where aid=? ");
               ps1.setString(1, "Licensed");
                
               ps1.setString(2, licenseno);
               ps1.setString(3, aid);
             System.out.println("--**-*-*-*");   
             ps1.executeUpdate(); 
             
             System.out.println("1111111111111"+ps1);
    
      out.println("<script type=\"text/javascript\">");
   out.println("alert('Verified and License Activated');");
   out.println("location='frappe.jsp';");
   out.println("</script>"); 
    
}  
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
