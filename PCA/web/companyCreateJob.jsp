
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>


	<html>
  <head>
      <title>Create JOB</title>
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
.SignIn{
  width: 20%;
border:0px solid #C9C9C9;
-webkit-border-radius: 8px; 
-moz-border-radius: 8px;
border-radius: 8px;
font-size:13px;
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
        #place {
        	padding-top: 50px;
        	margin-left: 100px
        }             
        
         #headerimg1{
  
 margin-left: 10%;
margin-top: 2%;

}
        #size
        {
         margin-top: 100%;
        }
       
        .mywidth{
    width: 100px;   
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

        #formborder{
  
margin-left: 30%;
}

#formborder label{
   display: block;
   margin-bottom: 1%;
   font-size: 15;
   font-variant: small-caps;
   font-weight: bolder;        
 }
      </style>
      <script type="text/javascript">
    function validateForm()
{
var cg=ScheduleInterview.cgpa.value;
var cg1=cg.trim();


    if (cg1==null || cg1=="")
      {
         alert("Please enter a CGPA");
         return false;
      }       

 
}
   </script>
      <link rel="stylesheet" href="stylesheets/jquery.sidr.dark.css">
      <script  src="jquery.js" ></script>
      <script  src="jquery.sidr.min.js"></script>
  </head>
  <body >
   
      
          <%

                 String sessionName ="";
                 String sessionAccessLevel = "";
                         String sessionEmailid = "";
          try{
             
          sessionAccessLevel = session.getAttribute("sessionAccessLevel").toString();
          sessionName = session.getAttribute("sessionName").toString();
          sessionEmailid = session.getAttribute("sessionEmailid").toString();
          
          
      %>
  <div id="header" >
 <header>
 <a href="companyDashboard.jsp" ><img src="home.png"/> </a>
  
      <span id="user">    
Welcome <%=sessionName%>
      </Span>
  </header>
  <div id="leftPanel"> 
  <a id="left-menu" class="LeftPanelButton" href="#sidr-left"><b>Menu</b></a>
  </div>
  </div>
  <div id="place">
      
      <%
          try{
       
        // out.println(sessionAccessLevel + sessionName + sessionEmailid);
          
        String date = request.getParameter("date");
        
         // String salary = " ";
       //   salary = request.getParameter("salary");
          
          String description = request.getParameter("description");
          String cgpa = request.getParameter("cgpa");
          
         //  out.println(date + salary + description + cgpa);
        // out.println(date + salary + description + cgpa);
          
          
           if(sessionAccessLevel.equals("2") && date != null && description != null )
                {
                   
Class.forName("com.mysql.jdbc.Driver"); 

java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pcadatabase", "root","root"); 

Statement stOne= con.createStatement(); 
ResultSet rsOne; 

int i=stOne.executeUpdate("insert into jobtable values ('"+date+"','"+date+"','"+sessionEmailid+"','"+sessionName+"','"+description+"','"+cgpa+"')"); 

//int i=stOne.executeUpdate("UPDATE jobtable SET date='"+date+"', uniquenumber='"+date+"', companyid='"+sessionEmailid+"', companyname='"+sessionName+"',salary='"+salary+"', description='"+description+"', cgpa='"+cgpa+"'   WHERE emailid='"+sessionEmailid+"'"); 
  
   %> 
    
   <!--<div id="footer" style="background-color:gainsboro;clear:both;text-align:center;text-decoration-color: whitesmoke">
Update Successful</div> -->
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
		//var winH = $(window).height();
		var winW = $(window).width();
              
		//Set the popup window to center
		//$(id).css('top',  winH/2-$(id).height()/2);
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
	$('#mask').click(function () {
		$(this).hide();
		$('.window').hide();
	});		
	
});

</script>

<style type="text/css">

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
  padding:0px;
}
#boxes #dialog {
  width:375px; 
  height:203px;
  padding:0px;
  background-color:#ffffff;
}
</style>
      
      
       <!-- modal end -->
         <div id="boxes">
<div id="dialog" class="window">
<center>SUCCESS </center>
<br>
<br>
<center> Event Posted Successfully !
<br>
<br><a href="companyDashboard.jsp"><b>Go back to Dashboard</b></a>
</center>

</div>
<!-- Mask to cover the whole screen -->
<div style="width: 1478px; height: 602px; display: dnslknvkldsznlkznvl; opacity: 0.8;" id="mask"></div>

</div>

      </div>
 
      
  
    <%
    
   }
           
}
          catch(Exception ex)
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
		//var winH = $(window).height();
		var winW = $(window).width();
              
		//Set the popup window to center
		//$(id).css('top',  winH/2-$(id).height()/2);
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
	$('#mask').click(function () {
		$(this).hide();
		$('.window').hide();
	});		
	
});

</script>

<style type="text/css">

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
  padding:0px;
}
#boxes #dialog {
  width:375px; 
  height:203px;
  padding:0px;
  background-color:#ffffff;
}
</style>
      
      
       <!-- modal end -->
      
              <div id="boxes">
<div id="dialog" class="window">
<center>Denied</center>
<br>
<br>
<center> There is an Interview Scheduled already in this particular date!<br>
    Please choose another date.
<br>
<br><a href="companyCreateJob.jsp"><b>Go back</b></a>
</center>

</div>
<!-- Mask to cover the whole screen -->
<div style="width: 1478px; height: 602px; display: dnslknvkldsznlkznvl; opacity: 0.8;" id="mask"></div>

</div>

      
              
              <%
         // out.println("Access Denied");
          }
          
%>
  <div id="formborder">
  <header>
    <h1 style="font-variant: small-caps;">Create Event</h1>

  </header>
      
      <form name="ScheduleInterview" action="companyCreateJob.jsp" method="post"> 
	<div>
	
  
  <label for="date">Date of the event</label>
  <input type="date" min="2013-09-10"  class="sutxtfield" tabindex="2" placeholder="YYYY-MM-DD" name="date" required />
  <h3 style="font-variant: small-caps;">Eligible CGPA Criteria</h3>
  
  
  <div id="elig">
  <div id="eligcse">
 
  <div style="font-variant: small-caps;">
  
      <input type="number" min="1" max="10" name="cgpa" step="0.1" class="sutxtfield" required>
  </div><br>
 
  </div>
      
      
 <!-- <label for="sal">Salary Package</label>
  <INPUT TYPE= "text" pattern="^[0-9]*$"  required class="sutxtfield" tabindex="5" title="Strictly Numbers"   NAME= "salary" >-->
  
  <label for="address">Interview Process and Instructions </label>
  <TEXTAREA NAME= "description" class="sutxtfield" required cols= "70" tabindex="7" rows= "10"></TEXTAREA>
	
   <div id="SignUpBtn">    <input class="SignIn" type="submit" onClick=" validateForm()" value="Post the Schedule">    </div>                       
	 
	            </div>
	        </div>
          </form>
          
  </div>
                       

                        <div id="sidr-left" >
                        <div id="size">
                        <ul>
    <li class="active"><a href="companyCreateJob.jsp">Schedule an Interview</a></li>
   
  <li><a href="#"  id="left-menu-rep" href="#sidr-left-rep">Reports</a></li>
   <li><a href="#"  id="left-menu-acc" href="#sidr-left-acc">Account</a></li> </ul>
  </div>
  </div>                             
<div id="sidr-left-rep" >
      <div id="size">
      <ul>
        
       <li><a href="companyEligibleStudents.jsp">Eligible Candidates </a></li>
        <li><a href="companyStudentsApplied.jsp">Candidates who have Applied</a></li>
        <li><a href="companyShortlistedStudents.jsp">Shortlisted Candidates</a></li>
         <li><a href="companySelectedStudents.jsp">Selected Candidates</a></li>
       </ul>
  </div>
      </div>

<div id="sidr-left-acc" >
    <div id="size">
      <ul>
        
        
        <li><a href="companyChangePassword.jsp">Change password</a></li>
        <li><a href="studentLoggingOut.jsp">Logout</a></li>      </ul>
  </div>
</div>




 <script>
$(document).ready(function() {
    $('#left-menu').sidr({
      name: 'sidr-left',
      side: 'left' // By default
    });
    $('#left-menu-rep').sidr({
      name: 'sidr-left-rep',
      side: 'left'
    }); $('#left-menu-acc').sidr({
      name: 'sidr-left-acc',
      side: 'left'
    });$('#left-menu').click();
});
</script>
<%
          }
          
     catch(Exception ey)
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
		//var winH = $(window).height();
		var winW = $(window).width();
              
		//Set the popup window to center
		//$(id).css('top',  winH/2-$(id).height()/2);
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
	$('#mask').click(function () {
		$(this).hide();
		$('.window').hide();
	});		
	
});

</script>

<style type="text/css">

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
  padding:0px;
}
#boxes #dialog {
  width:375px; 
  height:203px;
  padding:0px;
  background-color:#ffffff;
}
</style>
      
      
       <!-- modal end -->
      
       
              <div id="boxes">
<div id="dialog" class="window">
<center><a href="index.jsp">Please Login</a></center>
<br>
<br>
<center>Access Privilege Conflict
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
	