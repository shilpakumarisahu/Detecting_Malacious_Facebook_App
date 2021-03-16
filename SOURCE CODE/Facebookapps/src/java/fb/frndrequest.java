/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fb;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Avancer Java
 */
@WebServlet(name = "frndrequest", urlPatterns = {"/frndrequest"})
public class frndrequest extends HttpServlet {

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
        try{ 
                 HttpSession session=request.getSession();           
                        
                        String rfrom=session.getAttribute("username").toString();
                        Statement st=null;
              String rto=request.getParameter("rto");
                     System.out.println(rto);
                        String status=request.getParameter("status");
                                System.out.println("**********");
                                
         PreparedStatement pst=DbConnection.getconnection().prepareStatement("select * from frndlist where rto=? and rfrom=? ");
         System.out.println("*11111****");   
         pst.setString(1, rto);
         pst.setString(2, rfrom);
         System.out.println("**2222222**");
            ResultSet rs=pst.executeQuery();
            System.out.println("**3333333**");
            if(!(rs.next()))
            { 
          System.out.println("**444444**");
            String strQuery = "insert into frndlist (rfrom,rto,status)values('" + rfrom + "','" + rto + "','" + status + "')";
          System.out.println("**555555**");    
          PreparedStatement ps=DbConnection.getconnection().prepareStatement(strQuery);
            System.out.println("itemName::::: "+strQuery);
            ps.executeUpdate(strQuery);
            System.out.println("**66666666**");
            
            
            out.println("<script type=\"text/javascript\">");
   out.println("alert('Request sent');");
   out.println("location='userhome.jsp';");
   out.println("</script>");
    			
            }else
            {
                
	  out.println("<script type=\"text/javascript\">");
   out.println("alert('Already sent');");
   out.println("location='userhome.jsp';");
   out.println("</script>");
	 //response.sendRedirect("minerpage.jsp");
            }
    }
        
                        catch(Exception e)
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
