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
@WebServlet(name = "frndaccept", urlPatterns = {"/frndaccept"})
public class frndaccept extends HttpServlet {

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
            System.out.println("Hello");
            /* TODO output your page here. You may use following sample code. */
                System.out.println("0000000000000000");
              HttpSession session=request.getSession();
              String username=session.getAttribute("username").toString();
                System.out.println("1111111111111"+username);
              Statement st=null;

                String rfrom=request.getParameter("rfrom");
                    System.out.println("222222222"+rfrom);
               
            String status=request.getParameter("status");
                            
              System.out.println("*/*/*/*"+status);
             PreparedStatement ps1=DbConnection.getconnection().prepareStatement("Update frndlist set status='"+status+"' where rto='"+username+"' and rfrom='"+rfrom+"' ");
             System.out.println("--**-*-*-*");   
             ps1.executeUpdate(); 
             
             System.out.println("1111111111111"+ps1);
            
            
         PreparedStatement pst=DbConnection.getconnection().prepareStatement("select * from frndlist where rto=? and rfrom=? ");
         System.out.println("*11111****");   
         pst.setString(1, rfrom);
         pst.setString(2, username);
         System.out.println("**2222222**");
            ResultSet rs=pst.executeQuery();
            System.out.println("**3333333**");
            if(!(rs.next()))
            { 
          PreparedStatement ps=con.prepareStatement("insert into frndlist(rfrom,rto,status) values('"+username+"','"+rfrom+"','"+status+"')");
                ps.executeUpdate(); 
                System.out.println("1111111111111"+ps);
               out.println("<script type=\"text/javascript\">");
   out.println("alert('Accepeted Successfully');");
   out.println("location='userhome.jsp';");
   out.println("</script>"); 
    }else {
                 out.println("<script type=\"text/javascript\">");
   out.println("alert('Done Successfully');");
   out.println("location='userhome.jsp';");
   out.println("</script>");
            }
        }
        catch(Exception e){
        System.out.println(e.getMessage());
        }
         finally {            
            System.out.close();        }
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
