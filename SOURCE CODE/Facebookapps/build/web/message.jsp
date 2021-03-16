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
	  	  <h3 >Message</h3>
                        <br>
                        
                       
                      
                
                            <table align="center" width="506"  style="border: 2px solid #000; height:340px;width:400px ;padding-left: 20px;padding-top: 10px">
    <form action="sendmsg" method="post" enctype="multipart/form-data" >
              <%
      String      user=session.getAttribute("username").toString();
            %>
            
            <tr> <td align="center">   Name &nbsp;</td><td align="center"><input type="text" name="msgfrom" value="<%=user%>" readonly="true"/></td></tr>
          <tr> <td align="center">   Friend&nbsp;</td><td align="center"><select name="rto">
        <%
Statement st=null;
  user=session.getAttribute("username").toString(); 
String Query2 = "Select * from frndlist where rto='"+user+"'";
System.out.println("11111111"+user);

 PreparedStatement ps2=con.prepareStatement(Query2);
System.out.println("1111111111"+Query2);
ResultSet rs=ps2.executeQuery();
System.out.println("1111111111");

while(rs.next())
    {
        String status=rs.getString(4);
System.out.println("11111111"+status);
        System.out.println("4444444444");
String key=rs.getString("rfrom");
System.out.println("555555555555");

%>
          
                      <% if(status.equals("Accept")){ 
     System.out.println("6666666666666"); 

%>  <option>
                          
                            <%=key%>
                           
                        </option> 
 
          
          
                 <% 
         
                            
                            
                            }else{ 
 out.println("<script type=\"text/javascript\">");
   out.println("alert('You Dont Have any friends to Message');");

   out.println("</script>"); 
}}
            %>
                   </select></td></tr>
           
            
            <tr> <td align="center">    Message&nbsp;</td><td align="center"><input type="text" name="msg" placeholder="Enter Your msg"/></td></tr>
           <tr> <td align="center">    Select Image&nbsp;</td><td align="center"><input type="file" name="file"/></td></tr>
          <tr> <td align="center">  </td> <td align="center"> <input type="submit" value="send"/></td></tr>
         
          </form>
                </table>
 
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