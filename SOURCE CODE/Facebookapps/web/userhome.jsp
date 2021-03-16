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
	  		<h3>User home</h3>
                        <br>
                        
                        
                                
                     <%
Statement st=null; 
// String status=request.getParameter("status");
String username=session.getAttribute("username").toString();
String Query = "Select * from register where username='"+username+"' ";

st=con.createStatement();
ResultSet rs = st.executeQuery(Query);
while(rs.next())
    {
//String file=rs.getString(4);
%>
                        		<div class="get-left">
                                            <div class="get-right">	
                                        
						
								
                                                <fieldset id ="body">		
						 
                                                <form action="profile" method="post">
                                   <table align="center" width="500"  style="border: 1px solid #000; height:540px;width:500px ;padding-left: 20px;padding-top: 10px">				
                                    
            
                                               
  <tr><td align="center"></td><fieldset> <td align="center"> <input type="hidden" name="uid" value="<%=rs.getString(1)%>" /></td></tr><br>
           <tr><td align="center"><b>Username</b></td> <td align="center"> <input type="text" name="username" value="<%=rs.getString(2)%>" readonly="true"/></td></tr>
           <tr><td align="center"><b>Password</b></td> <td align="center"> <input type="password" name="password"  value="<%=rs.getString(3)%>"/> </td></tr>
           <tr><td align="center"><b>Email</b></td>   <td align="center">   <input type="text" name="email" value="<%=rs.getString(4)%>"/> </td></tr>
           <tr><td align="center"><b>Gender</b></td>     <td align="center">  <input type="text" name="sex" value="<%=rs.getString(5)%>"/> </td></tr>
           <tr><td align="center"><b>Country</b></td> <td align="center">  <input type="text" name="country" value="<%=rs.getString(6)%>"/> </td></tr>
       <tr><td align="center"><b>Phone no</b></td> <td align="center">   <input type="text" name="phoneno" value=" <%=rs.getString(7)%>"/></td></tr>
      
       <tr><td align="center"><b>Profile Pic</b></td><td align="center">  <img src="Profile/<%=rs.getString("file")%>" width="100" height="100"/></td></tr>
       <tr><td align="center"><b> Update Profile </b></td> <td align="center">   <input type="submit" value="Update"/></td></tr>   
                                            </table>
                                                </form>
       
                                   
                           
                              
                                                </fieldset>
									 
								
								
									 <!--
									<div class="send">
											<a href="#">SEND</a>
									</div>
									-->
								
						
				</div></div>
                        
                        
                        
                        
                        
                        
                        
                           <%
                                            }

                                %>
                        
					
                            
                        
                        
                        
                        
                        
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