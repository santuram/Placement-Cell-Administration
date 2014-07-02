<%-- 
    Document   : adminRegistrationApproval
    Created on : Aug 5, 2013, 2:25:34 AM
    Author     : Mahesh
--%>

   
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>

<html>
  <head>
      <title>Registration Approval</title>
      <link rel="stylesheet" type="text/css" media="all" href="SignUp.css">
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
 
       #headerimg1{
  
 margin-left: 10%;
margin-top: 2%;

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
      <script >
      function validateForm()
      {
         var pass=addCompany.Password.value;
         var cpass=addCompany.Cpassword.value;

        if (pass!=cpass)
          {
            alert("Password doesn't match");
            return false;
          }
      }
      </script>
      
      
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
      
      
      
      
  </head>
  <body > 
      
  <div id="header" >
  <header>
     <div id="headerimg1">
 <a href="adminDashboard.jsp" ><img src="home.png"/> </a>
   </div></div>
      <span id="user">
       Welcome Admin
          
      </Span>
</header>
 
  <div id="leftPanel"> 
  <a id="left-menu" class="LeftPanelButton" href="#sidr-left"><b>Menu</b></a>
  </div>
  </div>
  <div id="place"><div id="place">

      
       <%
           
          try{
              String sessionAccessLevel = session.getAttribute("sessionAccessLevel").toString();
        
          if(sessionAccessLevel.equals("3"))
          {
              
           String checkBoxValue[]= request.getParameterValues("checkBoxValue");
           
           if(checkBoxValue != null)
           {
                Class.forName("com.mysql.jdbc.Driver").newInstance(); 

           java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pcadatabase", "root","root"); 
           Statement st= con.createStatement(); 
           ResultSet rs; 
            

            
           for(int i = 0; i<checkBoxValue.length;i++)
           {
           
          // out.println(checkBoxValue[i]);
           int j = st.executeUpdate("UPDATE USERDETAIL SET ifapproved=1 WHERE emailid='"+checkBoxValue[i]+"'"); 
  
           
           
           
           } //UPDATE scores SET Num=0 WHERE Name="Richard";
           
            %>


              <div id="boxes">
<div id="dialog" class="window">
<center> <a href="#" class="close" >Close</a></center>
<br>
<br>
<br>
<br>
<center> Student(s) approved </center>

</div>
<!-- Mask to cover the whole screen -->
<div style="width: 1478px; height: 602px; display: none; opacity: 0.8;" id="mask"></div>

</div>


            <%
          
          
           }
           
              
              
          %>
      
          <FORM action="adminRegistrationApproval.jsp" method="post">
        <table border="1" width="70%" align="Left">
            
            <tr>
                <th>Name</th>
                
               
                <th>E Mail ID</th>
                
                
                <th>Date of Birth</th>
                
                <th>Branch</th>
                <th>Degree</th>
                <th>Contact Number</th>
                <th>Approve</th>
            </tr>
        <%
            Class.forName("com.mysql.jdbc.Driver"); 

            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pcadatabase", "root","root"); 

            Statement st= con.createStatement(); 
            ResultSet rs=st.executeQuery("select * from userdetail where ifapproved='0'"); 
            
            boolean trueOrFalse = true;
            
             while(1==1)
             {
                 
                 if(rs.next()) 
                    { 
                        %>
                        
                       
                            <tr>
                                <td><center><%=rs.getString(3)%> <%=rs.getString(4)%></center></td>
                               
                                <td><center><%=rs.getString(1)%></center></td>
                                
                               
                                <td><center><%=rs.getString(8)%></center></td>
                               
                                <td><center><%=rs.getString(16)%></center></td>
                                <td><center><%=rs.getString(17)%></center></td>
                                <td><center><%=rs.getString(19)%></center></td>
                                <td><center><input type="checkbox" name="checkBoxValue" value="<%=rs.getString(1)%>"></center></td>  
                            </tr>
                        
                        
                        <%
                                           //out.println((rs.getString(2)));  // success??? over
                    } 
                    else{
                       
                        break;
                    }
            
             }
            
             
                    %>
                    
                   
                    
        </table>
                    <table width="70%" border="0" cellspacing ="20" cellpadding="20" width="80%" align="Left" >
                        <tr><td><center><input class="LeftPanelButton" type="submit" value="Approve"></center></td></tr></table>
      
        
          </form>
      
      
     </div></div>
                        <div id="sidr-left" >
                        <div id="size">
                        <ul>
    <li><a href="#"  id="left-menu-comp" href = "#sidr-left-comp">Update Companies</a></li>
    <li class="active"><a href="#"  id="left-menu-stud" href = "#sidr-left-stud">Update Students</a></li>
    <li><a href="#"  id="left-menu-reports" href = "#sidr-left-reports">Reports</a></li>
    <li><a href="#"  id="left-menu-acc" href = "#sidr-left-acc">Account</a></li> </ul>
  </div>
  </div>
<div id="sidr-left-comp" >
      <div id="size"> 
      <ul>
        
        <li><a href="adminAddCompany.jsp">Add Companies</a></li>
        <li><a href="adminRemoveCompany.jsp">Remove Companies</a></li>
      
      </ul>
  </div>
  </div>

<div id="sidr-left-stud" >
    <div id="size">
      <ul>
        
        <li class="active"><a href="adminRegistrationApproval.jsp">Approve Students</a></li>
        <li><a href="adminRemoveStudent.jsp">Remove Students</a></li>
         <li><a href="adminShortlist.jsp">Shortlist Students</a></li>
        <li><a href="adminSelect.jsp">Select Students</a></li>
         
      
      </ul>
  </div>
</div>
  <div id="sidr-left-reports" >
      <div id="size">
      <ul>
        
        <li><a href="adminCompanyStudentEligible.jsp">Eligible Students</a></li>
        <li><a href="adminCompanyStudentApplied.jsp">Students who have applied</a></li>
        <li><a href="adminCompanyPlacedStudent.jsp">Placed Students</a></li>
      
      </ul>
      </div>
  </div>
      
                             
  <div id="sidr-left-acc" >
      <div id="size">
      <ul>
        
        
       
        <li><a href="studentLoggingOut.jsp">Logout</a></li>      </ul>
  </div>
      </div>



 <script>
$(document).ready(function() {
    $('#left-menu').sidr({
      name: 'sidr-left',
      side: 'left' // By default
    });
    $('#left-menu-comp').sidr({
      name: 'sidr-left-comp',
      side: 'left'
    });
    $('#left-menu-stud').sidr({
      name: 'sidr-left-stud',
      side: 'left'
    });
    $('#left-menu-reports').sidr({
      name: 'sidr-left-reports',
      side: 'left'
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
          else{
          
           %>


              <div id="boxes">
<div id="dialog" class="window">
Access Privilege  Conflict | <a href="index.jsp" >Go to Home Page</a>
<br>
<br>
<br>
<br>
<br>
<center> Access Denied </center>

</div>
<!-- Mask to cover the whole screen -->
<div style="width: 1478px; height: 602px; display: none; opacity: 0.8;" id="mask"></div>

</div>


            <%
          
          
          
          
          
          }
}
          catch(Exception ee)
          {
          
          
              %>


              <div id="boxes">
<div id="dialog" class="window">
Error | <a href="adminRegistrationApproval.jsp" >Go to Home Page</a>
<br>
<br>
<br>
<br>
<br>
<center> Oops!There was an error.Please try again </center>

</div>
<!-- Mask to cover the whole screen -->
<div style="width: 1478px; height: 602px; display: none; opacity: 0.8;" id="mask"></div>

</div>


            <%
          
          
          }

%>


  </body>

</html>