/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fb;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Avancer Java
 */
@WebServlet(name = "profile", urlPatterns = {"/profile"})
public class profile extends HttpServlet {

      String username,password,email,country,sex,phoneno,uid;
    PreparedStatement ps;
    Connection con;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
         try (PrintWriter out = response.getWriter()) {
                System.out.println("00000000");
             username=request.getParameter("username");
                System.out.println("111111111"+username);
            password=request.getParameter("password");
               System.out.println("2222222"+password);
            email=request.getParameter("email");
               System.out.println("33333333333"+email);
            country=request.getParameter("country");
               System.out.println("4444444444"+country);
            sex=request.getParameter("sex");
               System.out.println("55555555"+sex);
            phoneno=request.getParameter("phoneno");
               System.out.println("6666666"+phoneno);
           uid=request.getParameter("uid");
              System.out.println("77777777"+uid);
            //attitude=request.getParameter("attitude");
           //  status=request.getParameter("status");
        
            try{
               System.out.println("9999999999");
               //con=fb.DbConnection.getconnection();
                  System.out.println("/////");
                       String Qu="update register set username='"+username+"',password='"+password+"',email='"+email+"',gender='"+sex+"',country='"+country+"',phoneno='"+phoneno+"' where uid='"+uid+"' ";
                 System.out.println("**********");
                 PreparedStatement ps = DbConnection.getconnection().prepareStatement(Qu);
                       System.out.println("88888888"+ps);
                  ps.executeUpdate();
               //  ps.executeQuery(Qu);
             
                System.out.println("1111111111111"+ps);
               out.println("<script type=\"text/javascript\">");
   out.println("alert('Updated Successfully');");                
   out.println("location='userhome.jsp';");
   out.println("</script>");        
   
            }catch(Exception e){
                
            }
           
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
