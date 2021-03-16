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
					    <li><a href="adminhome.jsp" class="active hvr-sweep-to-bottom">Malicious</a></li> 
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
 
	
	  	<div class="about-top">
	  		<h3>View All Users</h3>
                        <br>
                     
  
                            
                        
                          
 <form>
   <table align="center" width="800"  style="border: 0px solid #000; height:500px;width:1000px ;padding-left: 10px;padding-top: 10px">
      
       <tr>
         
      <td align="center">  <div class="panel panel-danger">
            <div class="panel-heading">
              <h5 class="panel-title">  <b>User ID</b></h5></td>
            <td align="center"><div class="panel panel-danger">
            <div class="panel-heading">
              <h5 class="panel-title"><b>Username</b></td>
            <br>
            <td align="center"><div class="panel panel-danger">
            <div class="panel-heading">
              <h5 class="panel-title"><b>Password</b></td>
            <bR>
            <td align="center"><div class="panel panel-danger">
            <div class="panel-heading">
              <h5 class="panel-title"><b>Email</b></td>
            <td align="center"><div class="panel panel-danger">
            <div class="panel-heading">
              <h5 class="panel-title"><b>Gender</b></td>
          <td align="center"><div class="panel panel-danger">
            <div class="panel-heading">
              <h5 class="panel-title"><b>Country</b></td>
             <td align="center"><div class="panel panel-danger">
            <div class="panel-heading">
              <h5 class="panel-title"><b>Phone no</b></td>
        
        </tr>
        <%
Statement st=null;
//String status=request.getParameter("status");
//String datauser=session.getAttribute("user2").toString();
String Query = "Select * from register ";

st=con.createStatement();
ResultSet rs = st.executeQuery(Query);
while(rs.next())
    {
//String fname=rs.getString(2);
%>
<tr>
                                    
                                    <td align="center"><%=rs.getString("uid")%> </td>
                                    <td align="center"><%=rs.getString("username")%> </td>
                                    <td align="center"><%=rs.getString("password")%></td>
                                    <td align="center"><%=rs.getString("email")%></td>
                                  
                                    <td align="center"><%=rs.getString("gender")%> </td>
                                     <td align="center"><%=rs.getString("country")%> </td>
                                     <td align="center"><%=rs.getString("phoneno")%> </td>
                                     
                            
      
                            
                                </tr>
                                <%
                                            }

                                %>
                            </table>
              </form>            
    
                            <br>
                            <br>
    
    
                        
                        
                        
                        
                        
                        
                        
                        
                        
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