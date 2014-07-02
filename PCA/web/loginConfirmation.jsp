<%-- 
    Document   : loginConfirmation
    Created on : Aug 6, 2013, 10:05:07 PM
    Author     : Mahesh
--%>

    <%-- 
    Document   : loginConfirmation
    Created on : Aug 6, 2013, 10:05:07 PM
    Author     : Mahesh
--%>

    
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<html>
<head>
    <title>Logging In...</title>
    <style type="text/css">
  .LeftPanelButton{
  
          border:0px solid #C9C9C9;
          border-radius: 20px;
          font-size:15px;
          font-family:arial; 
          padding: 4px 4px 4px 4px; 
          text-decoration:none; 
          display:inline-block; 
          color: #D2E7E0;
          background-color: #333333; 
          background-image: -webkit-gradient(linear, left top, left bottom, from(#59A1E0), to(#1189CF));
          background-image: -webkit-linear-gradient(top, #59A1E0, #1189CF);
          background-image: -moz-linear-gradient(top, #59A1E0, #1189CF);
          background-image: -ms-linear-gradient(top, #59A1E0, #1189CF);
          background-image: -o-linear-gradient(top, #59A1E0, #1189CF);
          background-image: linear-gradient(to bottom, #59A1E0, #1189CF);
          padding-top: 50px;
          margin-left: 100px
        }</style>
<script type="text/javascript" src="jquery.js"></script>

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
		$(id).css('top',  winH/2-$(id).height()/2);
		$(id).css('left', winW/2-$(id).width()/2);
	
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
  left:0;
  top:0;
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
</head>

<body>
    
<%
   
String emailid=request.getParameter("emailid"); 
String password=request.getParameter("password"); 

session.setAttribute("sessionEmailid",emailid);




//out.println(password);

Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pcadatabase", "root","root"); 
Statement st= con.createStatement(); 

ResultSet rs=st.executeQuery("select * from userdetail where emailid='"+emailid+"'"); 
if(rs.next()) 
{ 
    if(rs.getString(2).equals(password)){
        
        session.setAttribute("sessionAccessLevel",1);
        
session.setAttribute("sessionName",rs.getString(3));
            

//session.putValue("session")
        
      %>
       
     
      <div id="boxes">
<div id="dialog" class="window">
Logging In ...
<br>
<br>
<br>
<br>
<br>
<center> Login Successful </center>

</div>
<!-- Mask to cover the whole screen -->
<div style="width: 1478px; height: 602px; display: dnslknvkldsznlkznvl; opacity: 0.8;" id="mask"></div>

</div> 
      
<META http-equiv="refresh" content="1 ;URL=studentDashboard.jsp"  >

<%
    
    }
    
    else{
    
        %>
        
          
      <div id="boxes">
<div id="dialog" class="window">
<center>Log In Error ...</center>
<br>
<br>
<center> The user name and password does not match.Please try again
<br>
<br><a href="index.jsp"><b>Go back</b></a>
</center>

</div>
<!-- Mask to cover the whole screen -->
<div style="width: 1478px; height: 602px; display: dnslknvkldsznlkznvl; opacity: 0.8;" id="mask"></div>

</div>

        <%
        
        //out.println("BAD BOY  \n" + rs.getString(1));
        
    }
//out.println((rs.getString(2)));
} 
else
{
    
//check for companies
    
    
ResultSet rsCompany=st.executeQuery("select * from recruiterdetail where companyid='"+emailid+"'"); 
if(rsCompany.next()) 
{ 
    if(rsCompany.getString(3).equals(password)){

     session.setAttribute("sessionAccessLevel",2);
     session.setAttribute("sessionName",rsCompany.getString(2));

      %>
      
      <div id="boxes">
<div id="dialog" class="window">
Logging In ...
<br>
<br>
<br>
<br>
<br>
<center> Login Successful </center>

</div>
<!-- Mask to cover the whole screen -->
<div style="width: 1478px; height: 602px; display: dnslknvkldsznlkznvl; opacity: 0.8;" id="mask"></div>

</div> 
      
<META http-equiv="refresh" content="1 ;URL=companyDashboard.jsp"  >

<%
    }
    
    else{
    
        
        %>
         <div id="boxes">
<div id="dialog" class="window">
<center>Log In Error ...</center>
<br>
<br>
<center> The user name and password does not match.Please try again
<br>
<br><a href="index.jsp"><b>Go back</b></a>
</center>

</div>
<!-- Mask to cover the whole screen -->
<div style="width: 1478px; height: 602px; display: dnslknvkldsznlkznvl; opacity: 0.8;" id="mask"></div>

</div>

        <%
        //out.println("Sorry... The username & password doesn't match...");
        
    }
//out.println((rsCompany.getString(2)));
} 
else
{
    
    if(emailid.equals("admin@admin.com") && password.equals("admin")) 
    {
    
         session.setAttribute("sessionAccessLevel",3);
         
session.setAttribute("sessionEmailid","admin@admin.com");

session.setAttribute("sessionName","admin");


   //  out.println("admin");
     
     
     %>
       
     
      <div id="boxes">
<div id="dialog" class="window">
Logging In ...
<br>
<br>
<br>
<br>
<br>
<center> Login Successful </center>

</div>
<!-- Mask to cover the whole screen -->
<div style="width: 1478px; height: 602px; display: dnslknvkldsznlkznvl; opacity: 0.8;" id="mask"></div>

</div> 
      
     
<META http-equiv="refresh" content="1 ;URL=adminDashboard.jsp"  >

<%
        
    }
    else if(emailid.equals("admin@admin.com"))
    {
        
        %>
        
     <div id="boxes">
<div id="dialog" class="window">
<center>Log In Error ...</center>
<br>
<br>
<center> The user name and password does not match.Please try again
<br>
<br><a href="index.jsp"><b>Go back</b></a>
</center>

</div>
<!-- Mask to cover the whole screen -->
<div style="width: 1478px; height: 602px; display: dnslknvkldsznlkznvl; opacity: 0.8;" id="mask"></div>

</div>   
        <%
        
        
    }
    else
    {
        %>
 <div id="boxes">
<div id="dialog" class="window">
<center>Log In Error ...</center>
<br>
<br>
<center> The user name and password does not match.Please try again
<br>
<br><a href="index.jsp"><b>Go back</b></a>
</center>

</div>
<!-- Mask to cover the whole screen -->
<div style="width: 1478px; height: 602px; display: dnslknvkldsznlkznvl; opacity: 0.8;" id="mask"></div>

</div>


<%
        //out.println("Check Login Credentials");
        
    }
        
}


}

%>

      



</body>
</html>
