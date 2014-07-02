<%-- 
    Document   : studentEditProfile
    Created on : Aug 9, 2013, 12:14:42 AM
    Author     : Mahesh
--%>

<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>


<html>
  <head>
      <title>View Profile</title>
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
margin-right: 0px;
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
                table
{
    border-spacing:1px;
    border-style:solid;
    border-width:2px;
    border-color:#333;
    font:14px Georgia, serif;
    padding:0;
    box-shadow:0px 0px #000000;
    border-radius:10px;
}
 
th
{
    color:#FFFFFF;
    background:#333;
    border-style:solid;
    border-width:1px;
    border-color:#333;
    font-weight:bold;
    padding:5px;
    text-align:center;
    vertical-align:top;
}
 
tr
{
    color:#000;
    font-weight:normal;
}
 
tr:hover td
{
    color:#fff;
    background-color: #333;
}
 
td
{
    padding:8px 5px;
    text-align:left;
    vertical-align:top;
}
 
th:first-child
{
    border-top-left-radius:10px;
}
 
th:last-child
{
    border-top-right-radius:10px;
}
 
tr:last-child td:first-child
{
    border-bottom-left-radius:10px;
}
 
tr:last-child td:last-child
{
    border-bottom-right-radius:10px;
}

#personal{
    
    
    float:left;
    margin-right: 5%;
    
}
#edu{
    float:left;
    
   
}
#contact{
    margin-right: 5%;
    float :left;
    }
    #main{
        
        margin-left: 0%;
        margin-top: 0%;
    }
      </style>
      
      <link rel="stylesheet" href="stylesheets/jquery.sidr.dark.css">
      <script  src="jquery/jquery.js" ></script>
      <script  src="jquery/jquery.sidr.min.js"></script>
      
  </head>
   <body>
       <%
          try{
              String sessionAccessLevel = session.getAttribute("sessionAccessLevel").toString();
        
          
          if(sessionAccessLevel.equals("1"))
          {
            String sessionName = session.getAttribute("sessionName").toString();
     %>
  <div id="header" >
    <header>
      <div id="headerimg1">
 <a href="studentDashboard.jsp" ><img src="home.png"/> </a>
   </div></div>
      <span id="user">
      
         Welcome <%= sessionName %>
          
      </Span>
</header>
  
  <div id="leftPanel"> 
  
  <a id="left-menu" class="LeftPanelButton" href="#sidr-left"><b>Menu</b></a>
  </div>
  
  <div id="place">
  
      
     
     
       <%
           String sessionEmailid = session.getAttribute("sessionEmailid").toString();
           
           //out.println(sessionAccessLevel);
  
          if(sessionAccessLevel.equals("1"))
          {
              
            Class.forName("com.mysql.jdbc.Driver"); 

            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pcadatabase","root","root"); 

            Statement st= con.createStatement(); 
            ResultSet rs=st.executeQuery("select * from userdetail where emailid='"+sessionEmailid+"'"); 
            
            if(rs.next())
            {
          %>
          
   <div id="formborder">
  <header>
    <h2 style="font-variant: small-caps;">Profile</h2>

  </header>
       <div id="main">
           <span id="personal">
               <h3>Personal Details</h3>
               <table cellspacing="5" cellpadding="15">
       <form id="editprofile" name="editProfile" action="studentEditProfile.jsp" method="post">
           
           <tr><td><label for="firstName">First Name </label></td>
               <td><%=rs.getString(3)%></td></tr>
           <tr><td><label for="lastName">Last Name</label></td>
               <td><%=rs.getString(4)%></td></tr>
           <tr><td><label for="fathername">Father/Husband Name   </label></td>
               <td><%=rs.getString(5)%></td></tr>
           <tr><td><label for="nationality">Nationality </label></td>
               <td><%=rs.getString(6)%></td></tr>
           <tr><td><label for="gender">Gender </label></td>
               <td><%=rs.getString(7)%></td></tr>
           <tr><td><label for="dob">Date of birth </label></td>
               <td><%=rs.getString(8)%></td></tr>
       </form>
               </table>
           </span>
       
           <span id="contact">
               <h3>Contact Details</h3>
           <form id="editprofile" name="editProfile" action="studentEditProfile.jsp" method="post">
           <table cellspacing="5" cellpadding="15">
           <tr><td><label for="addrline1">Address Line 1 </label></td>
               <td><%=rs.getString(9)%></td></tr>
           <tr><td><label for="addrline2">Address Line 2 </label></td>
               <td><%=rs.getString(10)%></td></tr>
           <tr><td><label for="addrline3">Address Line 3 </label></td>
               <td><%=rs.getString(11)%></td></tr>
           <tr><td><label for="city">City </label></td>
               <td><%=rs.getString(12)%></td></tr>
           <tr><td><label for="state">State </label></td>
               <td><%=rs.getString(13)%></td></tr>
           <tr><td><label for="country">Country </label></td>
               <td><%=rs.getString(14)%></td></tr>
           </table>
           </form>
           </span>
           
           
           <span  id="edu">
                <h3>Education Details</h3>
                <form id="editprofile" name="editProfile" action="studentEditProfile.jsp" method="post">
                    <table cellspacing="5" cellpadding="15">
           <tr><td><label for="qualification">Qualification </label></td>
               <td><%=rs.getString(15)%></td></tr>
           <tr><td><label for="branch">Branch </label></td>
               <td><%=rs.getString(16)%></td></tr>
           <tr><td><label for="interest">Area of Interest </label></td>
               <td><%=rs.getString(17)%></td></tr>
           <tr><td><label for="achievements">Achievements </label></td>
               <td><%=rs.getString(18)%></td></tr>
           <tr><td><label for="cgpa">CGPA </label></td>
               <td><%=rs.getString(19)%></td></tr>
           <tr><td><label for="degree">Degree </label></td>
               <td><%=rs.getString(21)%></td></tr>
           <tr><td><label for="predegree">Pre Degree </label></td>
               <td><%=rs.getString(22)%></td></tr>
                    </table>
             </form>
           
  </span>
               </div>
<%          
            }
            else
            {
            out.println("No data available");
            }
}
          else
          {
              out.println("Access Privilages Clash");
          }
          

%>
  </div>
                        <div id="sidr-left" >
                        <div id="size">
                        <ul>
    <li ><a href="studentDashboard.jsp">Dashboard</a></li>
    <li><a href="studentApplyJob.jsp">Apply for companies</a></li>
    <li class="active"><a href="#"  id="left-menu-acc" href="#sidr-left-acc">Account</a></li> </ul>
  </div>
  </div>                                                  
  <div id="sidr-left-acc" >
      <div id="size">
      <ul>
        
          <li class="active"><a href="studentEditProfile.jsp">View profile</a></li>
        <li><a href="studentChangePassword.jsp">Change password</a></li>
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
      
<div id="dialog" class="window" style="margin-left: 250px;">
   <center><a href="index.jsp">Please Login</a></center>
<br>
<br>
<center> Access Privilege Conflict 
<br>
<br>
</center>

</div>
  
<!-- Mask to cover the whole screen -->
<div style="width: 1478px; height: 602px; display: dnslknvkldsznlkznvl; opacity: 0.8;" id="mask"></div>

</div>

<%
          }

%>
 



  </body>

</html>   
    