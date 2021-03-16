/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fb;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "sendmsg", urlPatterns = {"/sendmsg"})
public class sendmsg extends HttpServlet {

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
              List<String> ms = new ArrayList<String>();
            String finalimage = "";
            boolean isMultipart = ServletFileUpload.isMultipartContent(
                    request);
            List<String> m = new ArrayList<String>();
            File savedFile;
             System.out.println("111111111");
           if (!isMultipart) {
              } else {
                FileItemFactory factory = new DiskFileItemFactory();
                ServletFileUpload upload = new ServletFileUpload(factory);
                List items = null;

                try {
                     System.out.println("2222222222222");
                    items = upload.parseRequest(request);
                    } catch (FileUploadException e) {
                    e.printStackTrace();
                }
                Iterator itr = items.iterator();
                while (itr.hasNext()) {
                     System.out.println("33333333333333");
                    List<String> al = new ArrayList<String>();

                    String sss = "";
                    FileItem item = (FileItem) itr.next();
                    String value = "";
                    String a[];
                    if (item.isFormField()) {
                         System.out.println("4444444444444");
                        String name = item.getFieldName();
                        value = item.getString();
                       al.add(value);
                        for (int i = 0; i < al.size(); i++) {
                            sss += al.get(i);
                            System.out.println("is thios image" + sss);
 System.out.println("55555555555555555");
                      }

                        a = sss.split("-");
                        for (int i = 0; i < a.length; i++) {

                            String am = a[i];
                            System.out.println("aaaaaaaaaaaaaaaa" + a[i]);
                            m.add(a[i]);
                        }
                    } else {
String itemName = item.getName();
                        Random generator = new Random();
                        int r = Math.abs(generator.nextInt());
 System.out.println("6666666666666");
                        String reg = "[.*]";
                        String replacingtext = "";
                        Pattern pattern = Pattern.compile(reg);
                        Matcher matcher = pattern.matcher(itemName);
                        StringBuffer buffer = new StringBuffer();
 System.out.println("7777777777777777");
                        while (matcher.find()) {
                            matcher.appendReplacement(buffer, replacingtext);
                        }
                        int IndexOf = itemName.indexOf(".");
                        int Indexf = itemName.indexOf(".");
                        String domainName = itemName.substring(IndexOf);

                       finalimage =buffer.toString()+ domainName;
                        System.out.println("Final Image===" + finalimage);
                        ms.add(finalimage);
                        System.out.println("55454");
                       System.out.println("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
                        savedFile = new File("D:\\final project\\detecting malicious facebook applications\\SOURCE CODE\\Facebookapps\\web\\messages//" + finalimage);
                        item.write(savedFile);
                        System.out.println("/////--------/////");

                    }
                }
            }
        
            
            DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
            System.out.println("^^^^^^");
     String strQuery ="";
            HttpSession hs = request.getSession();

                 PreparedStatement ps=DbConnection.getconnection().prepareStatement(strQuery);
                  System.out.println("-----------");
                  
         strQuery = "insert into message (msgfrom,msgto,msg,file)values('" + m.get(0) + "','" + m.get(1) + "','" + m.get(2) + "','" + ms.get(0) + "')";
          System.out.println("9999999999");
          System.out.println("itemName::::: "+strQuery);
            ps.executeUpdate(strQuery);
           
           out.println("<script type=\"text/javascript\">");
   out.println("alert('Sent Successfully');");
   out.println("location='message.jsp';");
   out.println("</script>"); 
                // response.sendRedirect("AddProducts.jsp"); 
            
            
        }catch(Exception e)
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
