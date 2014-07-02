<%-- 
    Document   : studentChangePassword
    Created on : Aug 10, 2013, 4:22:56 AM
    Author     : Mahesh
--%>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>

<%@page import="java.util.Random"%>

<html>
  <head>
      <title>Shree College</title>
          <link rel="stylesheet" type="text/css" media="all" href="SignUp.css">
      <style type="text/css">
         html { 
background: url(image/bg.png) no-repeat center center fixed; 
-webkit-background-size: cover;
-moz-background-size: cover;
-o-background-size: cover;
background-size: cover;
color :grey;
font-family:Segoe UI;
font-variant: small-caps; 
}
          
          
        #header {
width:105%;
position: relative;
margin:10px auto 10px;
height: 50px;
border-radius: 0px;
border:1px solid transparent;
padding-top: 0px;
margin-top: -10px;
margin-left: -10px;
margin-left: 0px;
background-color: transparent;
}
          #user{
            
            display: block;
            margin-left: 65%;
          font-variant: small-caps;
          font-weight: bolder;
         color:black;
            top: -8%;
        }
 #headerimg1{
  
 margin-left: 10%;
margin-top: 2%;

}
        #place {
          padding-top: 50px;
          margin-left: 100px
        }
        #size
        {
         margin-top: 100%;
        }
       #leftPanel
        {
          position: fixed;
          top:0%;
          right:30%;
        }
.LeftPanelButton{
  
          border:0px solid #C9C9C9;
          border-radius: 0px;
          font-size:15px;
          font-family:arial; 
          padding: 10px 24px 10px 24px; 
          text-decoration:none; 
          display:inline-block; 
          color: #D2E7E0;
          background-color: #333333; 
          background-image: -webkit-gradient(linear, left top, left bottom, from(#5C5656), to(#545050));
          background-image: -webkit-linear-gradient(top, #5C5656, #545050);
          background-image: -moz-linear-gradient(top, #5C5656, #545050);
          background-image: -ms-linear-gradient(top, #5C5656, #545050);
          background-image: -o-linear-gradient(top, #5C5656, #545050);
          background-image: linear-gradient(to bottom, #5C5656, #545050);
        }
      </style>
           <script >
      function validateForm()
      {
         var pass=changePassword.password.value;
         var cpass=changePassword.cpassword.value;
         var oldpass=changePassword.oldPassword.value;

        if (pass!==cpass)
          {
            alert("Passwords do not match");
            return false;
          }
          if (oldpass===pass)
          {
            alert("Enter a new password");
            return false;
          }
      }
      </script>
      <link rel="stylesheet" href="stylesheets/jquery.sidr.dark.css">
      <script  src="jquery.js" ></script>
      <script  src="jquery.sidr.min.js"></script>
  </head>
   <body>
      <%
          try{
              String sessionAccessLevel = session.getAttribute("sessionAccessLevel").toString();
        
          
          if(sessionAccessLevel.equals("3") || sessionAccessLevel.equals("2") || sessionAccessLevel.equals("1"))
          {
              String sessionName = session.getAttribute("sessionName").toString();
          %>
  <div id="header" >
    <header>
      <div id="headerimg1">
 <a href="studentDashboard.jsp" ><img src="home.png"/> </a>
   </div>
      <span id="user">
Welcome <%= sessionName %>          
      </Span>
</header>
 
  <div id="leftPanel"> 
  <a id="left-menu" class="LeftPanelButton" href="#sidr-left"><b>Menu</b></a>
  </div>
  </div>
  <div id="place">
   <div id="formborder">
  <header>
    <h2 style="font-variant: small-caps;">Change Password</h2>

  </header>
       <form id="changepass" name="changePassword" action="studentChangePassword.jsp" method="post">
    

  <label for="studname">Old Password </label>
  <INPUT TYPE= "password" required class="sutxtfield"  pattern="^[a-zA-Z0-9~@#$^*()_+=[\]{}|\\,.?: -]{8,20}$"  tabindex="1"    NAME= "oldPassword" >
  <label for="regis">New Password</label>
  <INPUT TYPE= "password" required class="sutxtfield" pattern="^[a-zA-Z0-9~@#$^*()_+=[\]{}|\\,.?: -]{8,20}$" title="8-20 characters of Alphabets,Special characters"tabindex="2" NAME= "password" >
  <label for="companyname">Re-Type New Password </label>
  <input type="password" required class="sutxtfield" title="Should Match Password" NAME= "cpassword" tabindex="3" required />
  <div id="SignUpBtn">    <input class="LeftPanelButton" type="submit" value="Change Password" onClick=" return validateForm();"> </div>
  </form>

     
 </div>
  </div>
      
  
      <%
          
          try{
                
                sessionAccessLevel = session.getAttribute("sessionAccessLevel").toString();
                String sessionEmailid = session.getAttribute("sessionEmailid").toString();
                
                String oldPassword = request.getParameter("oldPassword").toString();
                String password = request.getParameter("password").toString();
                
                if( ( sessionAccessLevel.equals("1") || sessionAccessLevel.equals("2") || sessionAccessLevel.equals("3")) && oldPassword != null && password !=null)
                {
                    
    
Class.forName("com.mysql.jdbc.Driver"); 

java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pcadatabase", "root","root"); 

Statement st= con.createStatement(); 

ResultSet rs=st.executeQuery("select password from userdetail where emailid='"+sessionEmailid+"'"); 
if(rs.next())
{
    if(rs.getString("password").equals(oldPassword))
    {
    Statement stOne= con.createStatement(); 
ResultSet rsOne; 
int i=stOne.executeUpdate("UPDATE userdetail SET password='"+password+"' WHERE emailid='"+sessionEmailid+"'"); 
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
<center><a href="#" class="close" >Close</a></center>
<br>
<br>
<br>
<br>
<center>Password changed Successfully</center>

</div>
<!-- Mask to cover the whole screen -->
<div style="width: 2000px; height: 602px; display: none; opacity: 0.8;" id="mask"></div>

</div>

    <%
    
    }
    else
    {
        
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
<center><a href="#" class="close" >Close</a></center>
<br>
<br>
<br>
<br>
<center>Oops! There was an error.<br> Your old password did not match </center>

</div>
<!-- Mask to cover the whole screen -->
<div style="width: 1478px; height: 602px; display: none; opacity: 0.8;" id="mask"></div>

</div>    
       
      <%
    }
}

                }
                 
                
          }
          catch(Exception ex)
          {
          }
%>
                        <div id="sidr-left" >
                        <div id="size">
                        <ul>
    <li><a href="studentDashboard.jsp">Dashboard</a></li>
    <li><a href="studentApplyJob.jsp">Apply for companies</a></li>
    <li class="active"><a href="#"  id="left-menu-acc" href="#sidr-left-acc">Account</a></li> </ul>
  </div>
  </div>                             
                          
  <div id="sidr-left-acc" >
      <div id="size">
      <ul>
        
        <li><a href="studentEditProfile.jsp">View profile</a></li>
        <li class="active"><a href="studentChangePassword.jsp">Change password</a></li>
        <li><a href="studentLoggingOut.jsp">Logout</a></li>      </ul>
  </div>
      </div>

 <script>
$(document).ready(function() {
    $('#left-menu').sidr({
      name: 'sidr-left',
      side: 'left' // By default
    });
    $('#left-menu-acc').sidr({
      name: 'sidr-left-acc',
      side: 'left'
    });
    

$('#left-menu').click();



});

</script>
 
 
<%
                }
}
          catch(Exception ee)
          {
          
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
      <div id="position">
<div id="dialog" class="window" style="margin-left: 250px;">
   <center><a href="studentDashboard.jsp">Please Login</a></center>
<br>
<br>
<center> Access Privilege Conflict 
<br>
<br>
</center>

</div>
  </div>
<!-- Mask to cover the whole screen -->
<div style="width: 1478px; height: 602px; display: dnslknvkldsznlkznvl; opacity: 0.8;" id="mask"></div>

</div>

          <%
          
          }

%>


  </body>

</html>   
    
