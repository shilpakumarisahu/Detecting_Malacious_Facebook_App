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
                    <h1 class="grid2">
                        <span class="label label-info">View All Applications</span></h1>
                        <br>
                        
                        
                            
                        
                          
 <form>
   <table align="center" width="800"  style="border: 0px solid #000; height:500px;width:1200px ;padding-left: 10px;padding-top: 10px">
      
       <tr>
         
             <td align="center"><div class="panel panel-warning">
            <div class="panel-heading">
              <h5 class="panel-title"><b>AppNo</b></h5></td>
            <td align="center"><div class="panel panel-warning">
            <div class="panel-heading">
              <h5 class="panel-title"><b>Username</b></h5></td>
            <br>
            <td align="center"><div class="panel panel-warning">
            <div class="panel-heading">
              <h5 class="panel-title"><b>AppID</b></h5></td>
            <bR>
            <td align="center"><div class="panel panel-warning">
            <div class="panel-heading">
              <h5 class="panel-title"><b>App Name</b></h5></td>
            <td align="center"><div class="panel panel-warning">
            <div class="panel-heading">
              <h5 class="panel-title"><b>AccessToken</b></h5></td>
          <td align="center"><div class="panel panel-warning">
            <div class="panel-heading">
              <h5 class="panel-title"><b>App Url</b></h5></td>
             <td align="center"><div class="panel panel-warning">
            <div class="panel-heading">
              <h5 class="panel-title"><b>Status</b></h5></td>
           <td align="center"><div class="panel panel-warning">
            <div class="panel-heading">
                <h5 class="panel-title"><b>App Icon</b></h5></td>
        </tr>
        <%
Statement st=null;
//String status=request.getParameter("status");
//String datauser=session.getAttribute("user2").toString();
String Query = "Select * from app ";

st=con.createStatement();
ResultSet rs = st.executeQuery(Query);
while(rs.next())
    {
//String fname=rs.getString(2);
%>
<tr>
                                    
                                    <td align="center"><%=rs.getString("aid")%> </td>
                                    <td align="center"><%=rs.getString("username")%> </td>
                                    <td align="center"><%=rs.getString("appid")%></td>
                                    <td align="center"><%=rs.getString("appname")%></td>
                                  
                                    <td align="center"><%=rs.getString("licenseno")%> </td>
                                     <td align="center"><%=rs.getString("appurl")%> </td>
                                     <td align="center"><b><%=rs.getString("status")%></b> </td>
                                     <td> <img src="apps/<%=rs.getString("appicon")%>" width="100" height="100"/></td>
                            
      
                            
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