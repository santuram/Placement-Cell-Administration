


<%-- 
    Document   : studentRegistration
    Created on : Jul 31, 2013, 9:44:58 PM
    Author     : Mahesh
--%>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>

<html>
     <head>
     </head>
     <body>

<%
String registerNumber=request.getParameter("registerNumber"); 
session.putValue("userid",registerNumber); 
String password=request.getParameter("Password"); 
String firstName=request.getParameter("Finame"); 
String lastName=request.getParameter("Laname"); 
String emailid=request.getParameter("Username"); 

String fatherName=request.getParameter("Guname"); 
String nationality=request.getParameter("nationality"); 
String gender=request.getParameter("gender"); 
String dateOfBirth=request.getParameter("Dob"); 


String addressLineOne=request.getParameter("Address1"); 
String addressLineTwo=request.getParameter("Address2"); 
String addressLineThree=request.getParameter("Address3"); 
String city=request.getParameter("City");



String state=request.getParameter("State"); 
String country=request.getParameter("Country"); 
String qualification=request.getParameter("qualification"); 
String branch=request.getParameter("Branch");


String degree=request.getParameter("Degree"); 
String preDegreePercentage=request.getParameter("preDegreePercentage"); 

String zipCode=request.getParameter("Pincode"); 
String contactNumber=request.getParameter("phone"); 




String areaOfInterest=request.getParameter("Interests"); 
String specialAchievement=request.getParameter("Achievements"); 
//String contactNumber=request.getParameter("contactNumber"); 

String cgpa=request.getParameter("cgpa");  

Class.forName("com.mysql.jdbc.Driver").newInstance(); 

java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pcadatabase", "root","root"); 
Statement st= con.createStatement(); 
ResultSet rs; 
int i=st.executeUpdate("insert into userdetail values ('"+emailid+"','"+password+"','"+firstName+"','"+lastName+"','"+fatherName+"','"+nationality+"','"+gender+"','"+dateOfBirth+"','"+addressLineOne+"','"+addressLineTwo+"','"+addressLineThree+"','"+city+"','"+state+"','"+country+"','"+qualification+"','"+branch+"','"+areaOfInterest+"','"+specialAchievement+"','"+cgpa+"','0','"+degree+"','"+preDegreePercentage+"')"); 


%>

 <!-- modal start -->

<script type="text/javascript">
$(document).ready(function() {	

		var id = '#dialog';
	
		//Get the screen height and width
		var maskHeight = $(document).height();
		var maskWidth = $(window).width();
	
		//Set heigth and width to mask to fill up the whole screen
		$('#mask').css({'width':maskWidth,'height':maskHeight});
		
		//transition effect		
		$('#mask').fadeIn(1000);	
		$('#mask').fadeTo("slow",0.8);	
	
		//Get the window height and width
		var winH = $(window).height();
		var winW = $(window).width();
              
		//Set the popup window to center
		/*$(id).css('top',  winH/2-$(id).height()/2);
		$(id).css('left', winW/2-$(id).width()/2);*/
	
		//transition effect
		$(id).fadeIn(2000); 	
	
	//if close button is clicked
	$('.window .close').click(function (e) {
		//Cancel the link behavior
		e.preventDefault();
		
		$('#mask').hide();
		$('.window').hide();
	});		
	
	//if mask is clicked
	/*$('#mask').click(function () {
		$(this).hide();
		$('.window').hide();
	});*/		
	
});

</script>

<style type="text/css">
body {
font-family:verdana;
font-size:15px;
}

a {color:#333; text-decoration:none}
a:hover {color:#ccc; text-decoration:none}

#mask {
  position:absolute;
  left:0;
  top:0;
  z-index:9000;
  background-color:#000;
  display:none;
}  
#boxes .window {
  position:absolute;
  left:250px;
  top:250px;
  width:440px;
  height:200px;
  display:none;
  z-index:9999;
  padding:20px;
}
#boxes #dialog {
  width:375px; 
  height:203px;
  padding:10px;
  background-color:#ffffff;
}
</style>
       <!-- modal end --> 
<div id="boxes">
<div id="dialog" class="window">
<center><a href="index.jsp" class="close" >Close</a></center>
<br>
<br>
<br>
<br>
<center>Registration Successful</center>

</div>
<!-- Mask to cover the whole screen -->
<div style="width: 2000px; height: 602px; display: none; opacity: 0.8;" id="mask"></div>

</div>


<meta http-equiv="refresh" content="0; url=index.jsp"> 
     </body>
 </html>
 