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
                        <center>  <div class="gallery">
	<div class="container">
		<div class="gallery-main">
			<div class="gallery-top">
				<h3>Applications</h3>
				<p>The list of applications and games in our website.</p>
			</div>
                    
                    
                    
                          <%
        try{
            System.out.println("@@@@@");
        if(request.getParameter("yes").equals("ok"))
    System.out.println("@0000000000@");  {%>
        <h3></h3>
       
    
                         <%
            
                          System.out.println("@1111111111@");   
                         String appid=request.getParameter("appid");
                          System.out.println("@99999999@");
                               String username=session.getAttribute("username").toString();
                         System.out.println("@222222222@");  
                         String Query2="Select * from app where appid='"+appid+"' ";
                         System.out.println("@33333333333333333333@");  
                                      PreparedStatement ps2=con.prepareStatement(Query2);
                                      System.out.println("@444444444444@");  
                                      ResultSet rs2=ps2.executeQuery();
                                      System.out.println("@5555555555@");  
                                      while(rs2.next())
                                      {
                                          System.out.println("6666666666666");
    String Request=rs2.getString("status");
        String appname=rs2.getString("appname");
            String licenseno=rs2.getString("licenseno");
                String appurl=rs2.getString("appurl");
                    String appicon=rs2.getString("appicon");
    System.out.println("77777777777");
    if(Request.equals("Licensed")){
        System.out.println(Request);
        System.out.println("888888888");
                                          System.out.println("@666666@"); 

String st = "insert into proapp(username,appid,appname,licenseno,appurl,appicon)values('"+username+"','"+appid+"','"+appname+"','"+licenseno+"','"+appurl+"','"+appicon+"')";
           PreparedStatement ps = con.prepareStatement(st);
            System.out.print("3333333");
            ps.executeUpdate();
           System.out.print("44444");

                                                   %>
 

     </form>
 <%
 System.out.println("@77777777777777@");  
 %>
 <script language="javascript" type="text/javascript">
alert('Added Successfully');

window.location = "viewapp.jsp";
</script>
     <%
    } else{%>
    
     <script language="javascript" type="text/javascript">
alert('Detected as Malicious Application');

window.location = "viewapp.jsp";
</script>

             <%          }
                                      }}}catch(Exception e){System.out.println(e.getMessage());}
                    %>
       
                    
                    
                    
			
                         <%
Statement st=null;
//String status=request.getParameter("status");
//String datauser=session.getAttribute("user2").toString();
String Query = "Select * from app ";

st=con.createStatement();
ResultSet rs = st.executeQuery(Query);
while(rs.next())
    {
        
String appname=rs.getString(3);
String appid=rs.getString(2);
String appicon=rs.getString(7);

                        %>
                      <div class="gallery-bottom">
			   <div class="col-md-4 view view-seventh">
                               <a href="apps/<%=appicon%>" class="b-link-stripe b-animate-go  swipebox" width="100" height="100"  title="Image Title"></a><img src="apps/<%=appicon%>" alt="" width="100" height="100" class="img-responsive">
                    <div class="mask">
                        <h2><%=appname%></h2>
                      
                        <br><br>
                   <span class="gall"> <a href="viewapp.jsp?yes=ok&appid=<%=appid%>">Add To My Profile</a></span>
                  
                   <br><br>
                   </div>
                           </div></div>
                <%
                }
                %>
             
              
                
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