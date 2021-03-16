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
                       
                          <br></br><form action="frndrequest" method="post">
                       <table align="center" width="506"  style="border: 5px solid #000; height:400px;width:400px ;padding-left: 10px;padding-top: 10px">
                        
                    <%
                    String user=session.getAttribute("username").toString();
                    System.out.println("11111111111"+user);
                    try{
String username=request.getParameter("username");  
System.out.println("11111111111"+username);
PreparedStatement ps =con.prepareStatement("select * from register where username='"+username+"' and username!='"+user+"' ");
ResultSet rs2 = ps.executeQuery();
System.out.println("3333333333"+username);

while(rs2.next()){
       System.out.println("222222222222"+user);
          
             
           
      %>
<tr><td align="center">&nbsp;&nbsp; <td algin="center"> <input type="hidden" name="rfrom" value="<%=user%>" /></td></tr>
<tr><td align="center"> User Name: &nbsp;&nbsp;</td><td algin="center"><input type="text" name="rto" value="<%=rs2.getString(2)%>"   placeholder="" readonly="true"/></td></tr>
<tr><td align="center">Email:&nbsp;&nbsp;</td><td algin="center"><input type="text" name="email" value="<%=rs2.getString("email")%>"   placeholder="" readonly="true"/></td></tr>
<tr><td align="center">Gender&nbsp;&nbsp;</td><td algin="center"><input type="text" name="gender" value="<%=rs2.getString("gender")%>"   placeholder="" readonly="true"/>   </td></tr>
<tr><td align="center">Country: &nbsp;&nbsp;</td><td algin="center"><input type="text" name="country" value="<%=rs2.getString("country")%>"   placeholder="" readonly="true"/></td></tr>
<tr><td align="center"></td><td algin="center"> <input type="hidden" name="status" value="Waiting" /></td></tr>
         
<%
           }
 
      }catch(Exception e){
         out.println(e);
      }%>                                      
          
      
      <center>  <tr><td align="center"> <input type="submit" value="Send Request"/></td><td algin="center"></td></tr></center> 
           
            
						
                  
          
         
                   
<!--              <input type="reset" name="reset" value="Reset"  id="submit"/>-->
                       </table>
                              </form>  
                        
                        
                        
	  	 
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