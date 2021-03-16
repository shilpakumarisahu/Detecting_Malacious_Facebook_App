<%--@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"--%>
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
					    <li><a href="adminhome.jsp" class="active hvr-sweep-to-bottom">Home</a></li> 
						<li><a class="hvr-sweep-to-bottom" href="frappe.jsp">FRAppe Verification</a></li>  
						<li><a class="hvr-sweep-to-bottom" href="users.jsp">View Users</a></li>
                                                <li><a class="hvr-sweep-to-bottom" href="apps.jsp">View Application</a></li>
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
                        <center> 
	<div class="container">
	
				<h3>Application Detail</h3>
				
			</div>
                    
 
                            <br><br>
                    
                    
                    <table align="center" width="606"  style="border: 2px solid #000; height:640px;width:650px ;padding-left: 20px;padding-top: 10px">
			
                        
                        
                         <%
Statement st=null;
String appid=request.getParameter("appid");
//String datauser=session.getAttribute("user2").toString();
String Query = "Select * from app where appid='"+appid+"' ";

st=con.createStatement();
ResultSet rs = st.executeQuery(Query);
while(rs.next())
    {
        
String appname=rs.getString(3);
appid=rs.getString(2);
String appicon=rs.getString(7);

                        %>
                    
                        <form action="verify" method="post">
                            
                          <input type="hidden" name="aid" value="<%=rs.getString("aid")%>" readonly="true"/>
                                    
                    <tr>    <td align="center"><b>App ID</b></td>               <td align="center"><%=rs.getString("appid")%> </td>
                                  <tr> <td align="center"><b>Username</b></td>    <td align="center"><%=rs.getString("username")%> </td> </tr>   
                                 <tr>  <td align="center"><b>App Name</b></td>    <td align="center"><%=rs.getString("appname")%></td> </tr>   
                                <input type="hidden" value="ApLi<%= (int) (Math.random() * 10000) %>no" name="licenseno" />
                                    
                                 <tr><td align="center"><b>App URL</b></td>    <td align="center"><input type="text" name="appurl" value="<%=rs.getString("appurl")%>" readonly="true"/> </td> </tr>   
                                   <tr> <td align="center"><b>App Icon</b></td>  <td align="center"><img src="apps/<%=rs.getString("appicon")%>"   width="300" height="200"/></td> </tr>   
     <input type="hidden" name="status" value="<%=rs.getString("status")%>" readonly="true"/>
                                  <tr> <td align="center"></td>   <td align="center">  <input type="submit" value="FRAppE Verification"/></td>
                                      </tr>  
                        
                        </form>
                <%
                }
                %>
             
              
                    </table>
             <div class="clearfix"> </div>
             </div>
		</div>
	</div>
</div>
                        <link rel="stylesheet" href="css/swipebox.css">
	<script src="js/jquery.swipebox.min.js"></script> 
	    <script type="text/javascript">
			jQuery(function($) {
				$(".swipebox").swipebox();
			});
</script>
                        </center>
                        
               
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