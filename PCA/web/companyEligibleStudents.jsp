



<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>



<html>
  <head>
      <title>Eligible Students</title>
      <style>
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
</style>
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
      
      <link rel="stylesheet" href="stylesheets/jquery.sidr.dark.css">
      <script  src="jquery.js" ></script>
      <script  src="jquery.sidr.min.js"></script>
      
  </head>
  <body>
       <%
          try{
              String sessionAccessLevel = session.getAttribute("sessionAccessLevel").toString();
        String sessionName = session.getAttribute("sessionName").toString();
          String sessionEmailid = session.getAttribute("sessionEmailid").toString();
          int checkVariable = 0;
          if(sessionAccessLevel.equals("2"))
          {
          %>
  <div id="header" >
   <header>
     <div id="headerimg1">
 <a href="companyDashboard.jsp" ><img src="home.png"/> </a>
   </div>
      <span id="user">
      Welcome <%=sessionName%>  
          
      </Span>
</header>
 
  <div id="leftPanel"> 
  <a id="left-menu" class="LeftPanelButton" href="#sidr-left"><b>Menu</b></a>
  </div>
  </div>
  <div id="place">
  <div id="place">
 
      <form action="companyEligibleStudents.jsp" method="post">
          
          <table width="65%" cellpadding="20" cellspacing="20">
          <tr>
              <td>Enter the Eligible Criteria (CGPA)</td>
              <td>From <input type="number" min="0" max="10" step="0.1" name="fromNumber"></td>
             <!-- <td>To <input type="number" name="toNumber"></td>-->
              <td><input class="LeftPanelButton" type="submit" name="List"></td>
          </tr>
      </table>
      
      </form>
      
<%
              
              String fromNumber = request.getParameter("fromNumber");
            //  String toNumber = request.getParameter("toNumber");
              
    if(fromNumber!=null)
    {
        
   String[] emailList=new String[30];
    
   String[] nameList=new String[30];
   String[] registerNumber =new String[30];
   String[] branch=new String[30];
   String[] cgpa=new String[30];
   
   int i = 1;
   
Class.forName("com.mysql.jdbc.Driver"); 

java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pcadatabase", "root","root"); 

Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from userdetail where cgpa >= '"+fromNumber+"' ");
%>


<%
while(1==1)
{    
if(rs.next()) 
{ 
   
     emailList[i] = rs.getString(1);
     
     nameList[i] = rs.getString(3);

      
      branch[i] = rs.getString(16);
      cgpa[i] = rs.getString(19);
   i++; 
}
else
{break;}

}


if(emailList[1] == null)
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
  left:0;
  top:0;
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
<center>No Students Selected | <a href="index.jsp" class='close'>Close</a></center>
<br>
<br>
<center> No students selected
<br>
<br>
</center>
</div>

<!-- Mask to cover the whole screen -->
<div style="width: 1478px; height: 602px; display: dnslknvkldsznlkznvl; opacity: 0.8;" id="mask"></div>

</div>

      
              
              <%
    
    checkVariable = 1;
    


}


if(checkVariable != 1){
%>

<table border="1" width="65%">
<tr><th>S. No.</th><th>Name</th> <th>Branch</th> <th>CGPA</th> <th>e-mail</th> </tr>

<%for(int j = 1; j < i ; j++ ) // i is one more than the no. of records
{ %>


<tr>
     <td><center><%=j%></center></td>
    <td><center><%=nameList[j]%></center></td>
<td><center><%=branch[j]%></center></td>
<td><center><%=cgpa[j]%></center></td>
<td><center><%=emailList[j]%></center></td>
</tr>


<%

} 
%>

</table>
      
      <% } 
    }
      
    else{
        //print nothing
    }
      
      %>
      
  </div>      
  </div>            

                        <div id="sidr-left" >
                        <div id="size">
                        <ul>
    <li><a href="companyCreateJob.jsp">Schedule an Interview</a></li>
   
  <li class="active"><a href="#"  id="left-menu-rep" href="#sidr-left-rep">Reports</a></li>
   <li><a href="#"  id="left-menu-acc" href="#sidr-left-acc">Account</a></li> </ul>
  </div>
  </div>                             
<div id="sidr-left-rep" >
      <div id="size">
      <ul>
        
        <li class="active"><a href="companyEligibleStudents.jsp">Eligible Candidates </a></li>
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
        <li><a href="companyLoggingOut.jsp">Logout</a></li>      </ul>
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
		//var winH = $(window).height();
		var winW = $(window).width();
              
		//Set the popup window to center
		//$(id).css('top',  winH/2-$(id).height()/2);
		$(id).css('left', winW/2-$(id).width()/2);
	
		//transition effect
		$(id).fadeIn(2000); 	
	
	//if close button is clicked
	/* $('.window .close').click(function (e) {
		//Cancel the link behavior
		e.preventDefault();
		
		$('#mask').hide();
		$('.window').hide();
	}); */		
	
	//if mask is clicked
	/* $('#mask').click(function () {
		$(this).hide();
		$('.window').hide();
	});
        */
	
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
  left:0;
  top:0;
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
<center>Access Privilege Conflict | <a href="index.jsp">Please Login</a></center>
<br>
<br>
<center> You are not allowed inside Company's Page
<br>
<br>
</center>
</div>

<!-- Mask to cover the whole screen -->
<div style="width: 1478px; height: 602px; display: dnslknvkldsznlkznvl; opacity: 0.8;" id="mask"></div>

</div>

      
              
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
		//var winH = $(window).height();
		var winW = $(window).width();
              
		//Set the popup window to center
		//$(id).css('top',  winH/2-$(id).height()/2);
		$(id).css('left', winW/2-$(id).width()/2);
	
		//transition effect
		$(id).fadeIn(2000); 	
	
	//if close button is clicked
	/* $('.window .close').click(function (e) {
		//Cancel the link behavior
		e.preventDefault();
		
		$('#mask').hide();
		$('.window').hide();
	}); */		
	
	//if mask is clicked
	/* $('#mask').click(function () {
		$(this).hide();
		$('.window').hide();
	});
        */
	
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
  left:0;
  top:0;
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
<center>Access Privilege Conflict | <a href="index.jsp">Please Login</a></center>
<br>
<br>
<center> You are not allowed inside Company's Page
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
	