<%-- 
    Document   : logincheck
    Created on : Aug 24, 2015, 4:50:51 PM
    Author     : Avancer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@include file="dbconnection.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"   />
<title>Untitled Document</title>
</head>

<body>
<%
    System.out.println("00000000000");
String username=request.getParameter("username");
System.out.println("11111111111111");
String password=request.getParameter("password");

//Blob image=null;

System.out.println("222222222222");
%>
<%
try{
    System.out.println("33333333333333");
    if(username.equals("admin")&&password.equals("admin")){
System.out.println("4444444444444444");
response.sendRedirect("adminhome.jsp");
return;
}
   
 else if(!(username.equals(""))&&!(password.equals(""))){
System.out.println("55555555555555555");
 PreparedStatement pst=con.prepareStatement("select * from register where username=? and password=? ");
           System.out.println("666666666666");
           pst.setString(1, username);
            System.out.println("777777777777");
            pst.setString(2, password);
       System.out.println("username"+username); 
           
            ResultSet rs=pst.executeQuery();
            
System.out.println("88888888888888888");
 
            if((rs.next())){
                
            //String groupkey=request.getParameter("groupkey");
System.out.println("99999999999999");
       // String st=rs.getString("groupkey");
        System.out.println("////////////");
       // if(st.equals("groupkey")){
       System.out.println("************");
            String s=rs.getString("username");
            session.setAttribute("username", s);
            session.setAttribute("uid",rs.getString("uid"));
            System.out.println("result:");
                                        System.out.println("result:");    
                                        
                 response.sendRedirect("userhome.jsp");
                 return;
                                     }else{
            
            %>
          
       <%     
           System.out.println("last"+st);
        }%>
          <script language="javascript" type="text/javascript">
alert('Login Failed...User Not Available in the Group');

window.location = "index.jsp";
</script>
        <%     
        }%>
        
          <script language="javascript" type="text/javascript">
alert('Login Failed...');

window.location = "index.jsp";
</script>
            
        
       
    <%
   // response.sendRedirect("index.jsp");

}
catch(Exception e){
           out.println("else"+e);
}






%>
</body>
</html>