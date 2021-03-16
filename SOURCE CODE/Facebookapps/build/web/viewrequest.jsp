<%@include file="dbconnection.jsp" %>
<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>Detecting Malicious Facebook Applications</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-1.11.0.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Treks Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--script-->
<script src="js/menu_jquery.js"></script>
</head>
<body>
<!--banner start here-->
<div class="banner-two">
  <div class="header">
	<div class="container">
		 <div class="header-main">
				<div class="logo">
					<h1><a href="index.jsp">Detection</a></h1>
				</div>
				<div class="header-right">
					<div class="head-top">
					<div class="top-nav-right">
						
			         <div class="clearfix"> </div>
				   </div>
				   <div class="ph-numb"><h4>Ph:+1285 656 5555</h4></div>
				 </div>
				 <div class="top-nav">
						<span class="menu"> <img src="images/icon.png" alt=""/></span>
					<ul class="res" >
					    <li><a href="userhome.jsp" class="active hvr-sweep-to-bottom">Home</a></li> 
						<li><a class="hvr-sweep-to-bottom" href="addapp.jsp">Add Application</a></li>  
						<li><a class="hvr-sweep-to-bottom" href="friend.jsp">Add friends</a></li>
						<li><a class="hvr-sweep-to-bottom" href="sendmsg.jsp">Message</a></li> 
						<li><a class="hvr-sweep-to-bottom" href="index.jsp">Log out</a></li> 
					 </ul>
                        <div class="clearfix"> </div>
					<!-- script-for-menu -->
						 <script>
						   $( "span.menu" ).click(function() {
							 $( "ul.res" ).slideToggle( 300, function() {
							 // Animation complete.
							  });
							 });
						</script>
		        <!-- /script-for-menu -->
				</div>
		    </div>
		 <div class="clearfix"> </div>
	  </div>
	 </div>
 </div>
</div>
<!--banner start here-->
<!--about start here-->
<div class="about">
  <div class="container">
	  <div class="about-main">
	  	<div class="about-top">
	  		
                        <br>
                          <div class="container">
                        <div class="panel panel-info">
            <div class="panel-heading">
              <h3 class="panel-title">Friends Request</h3>
            </div>
            <div class="panel-body">
                        
                <br><br>
                
                 <%
        try{
              String user=session.getAttribute("username").toString();
        if(request.getParameter("yes").equals("ok")){%>
        <h3>Accepting Request</h3>
        <form action="frndaccept" method="post" >
     <table align="center" width="506"  style="border: 5px solid #000; height:340px;width:400px ;padding-left: 20px;padding-top: 10px">
                         <%
                             
                         String rfrom=request.getParameter("rfrom");
                         String Query2="Select * from frndlist where rfrom='"+rfrom+"' and rto='"+user+"' ";
                                      PreparedStatement ps2=con.prepareStatement(Query2);
                                      System.out.println("1111111111"+Query2);
                                      ResultSet rs2=ps2.executeQuery();
                                      while(rs2.next())
                                      {
                                                   %>

            <tr><td>User</td> <td><input  name="rfrom"  value="<%=rs2.getString("rfrom")%>" /></td></tr>
              <tr><td>Status</td> <td><select name="status" id="status" tabindex="6" style="width: 75px" >
						<option id="status" name="status" selected="selected">Select</option>
                                                <option id="status" name="status" >Accept</option>
						<option id="status" name="status" >Reject</option>
                                                </select>&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
          
            <tr><td colspan="2">
                    <input type="submit"  value="Submit" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<!--              <input type="reset" name="reset" value="Reset"  id="submit"/>-->
                </td>   </tr>
        </table>

     </form>
 <%
               }}}catch(Exception e){System.out.println(e.getMessage());}
                    %>
                    
                    <br>
                    <br>
<h3>Requested User Details</h3>
   <table align="center" width="506"  style="border: 2px solid #000; height:340px;width:800px ;padding-left: 20px;padding-top: 10px">
        <tr>
            
            
            <td align="center"><b>Request From</b></td>
           
          
            <td align="center"><b>status</b></td>
           
           
            
        </tr>
        <%   String user=session.getAttribute("username").toString();
Statement st=null;
String Query = "Select * from frndlist where rto='"+user+"'";
System.out.println("11111111"+user);
st=con.createStatement();
ResultSet rs = st.executeQuery(Query);
while(rs.next())
    {
String key=rs.getString("rfrom");
%>
<tr>
                                    
                        
    <td align="center">  <%=rs.getString("rfrom")%> </td> 
   
    <td align="center"><a href="viewrequest.jsp?yes=ok&rfrom=<%=key %>" ><%=rs.getString("status")%></a></td>  
   
    
    
   
       </tr>
       <%
      }
         %>
   </table>
                
                
                
                
                      </div>
          </div>    
                        
	  	</div>
	  	 
	  </div>
  </div>
</div>
</div>

</div>
<!--about end here-->
<!--footer star here-->
<div class="footer">
  <div class="container">
	  <div class="footer-main">
		<div class="footer-top">
		
			
			<div class="clearfix"> </div>
		</div>
	  <div class="clearfix"> </div>
		</div>
		<div class="copyright">
				<p>© 2015 ASKU . All rights reserved | Design by  <a href="" target="_blank"> ASku </a></p>
		</div>
	</div>
</div>
<!--footer end here-->
</body>
</html>