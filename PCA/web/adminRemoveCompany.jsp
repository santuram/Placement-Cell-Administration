<%-- 
    Document   : adminRemoveCompany
    Created on : Aug 9, 2013, 3:43:37 AM
    Author     : Mahesh
--%>



<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>


<html>
  <head>
      <title>Shree College</title>
      <link rel="stylesheet" type="text/css" media="all" href="SignUp.css">
      
      <link rel="stylesheet" href="stylesheets/jquery.sidr.dark.css">
      <script  src="jquery.js" ></script>
      <script  src="jquery.sidr.min.js"></script>
  
      
    <link rel="stylesheet" href="modaljquery/jquery-ui.css" />
    <script src="modaljquery/jquery.min.js" type="text/javascript"></script>
    <script src="modaljquery/jquery-ui.min.js" type="text/javascript"></script>
      
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
     
      <style>
			* {
				margin:0; 
				padding:0;
			}

			#overlay {
				position:fixed; 
				top:0;
				left:0;
				width:100%;
				height:100%;
				background:#000;
				opacity:0.5;
				filter:alpha(opacity=50);
			}

			#modal {
				position:absolute;
				background:url(tint20.png) 0 0 repeat;
				background:rgba(0,0,0,0.2);
				border-radius:14px;
				padding:8px;
			}

			#content {
				border-radius:8px;
				background:#fff;
				padding:20px;
			}

			#close {
				position:absolute;
				background:url(close.png) 0 0 no-repeat;
				width:24px;
				height:27px;
				display:block;
				text-indent:-9999px;
				top:-7px;
				right:-7px;
			}
		</style>
		
		<script>
			var modal = (function(){
				var 
				method = {},
				$overlay,
				$modal,
				$content,
				$close;

				// Center the modal in the viewport
				method.center = function () {
					var top, left;

					top = Math.max($(window).height() - $modal.outerHeight(), 0) / 2;
					left = Math.max($(window).width() - $modal.outerWidth(), 0) / 2;

					$modal.css({
						top:top + $(window).scrollTop(), 
						left:left + $(window).scrollLeft()
					});
				};

				// Open the modal
				method.open = function (settings) {
					$content.empty().append(settings.content);

					$modal.css({
						width: settings.width || 'auto', 
						height: settings.height || 'auto'
					});

					method.center();
					$(window).bind('resize.modal', method.center);
					$modal.show();
					$overlay.show();
				};

				// Close the modal
				method.close = function () {
					$modal.hide();
					$overlay.hide();
					$content.empty();
					$(window).unbind('resize.modal');
				};

				// Generate the HTML and add it to the document
				$overlay = $('<div id="overlay"></div>');
				$modal = $('<div id="modal"></div>');
				$content = $('<div id="content"></div>');
				$close = $('<a id="close" href="#">close</a>');

				$modal.hide();
				$overlay.hide();
				$modal.append($content, $close);

				$(document).ready(function(){
					$('body').append($overlay, $modal);						
				});

				$close.click(function(e){
					e.preventDefault();
					method.close();
				});

				return method;
			}());

			// Wait until the DOM has loaded before querying the document
			$(document).ready(function(){

				$.get('ajax.html', function(data){
					modal.open({content: data});
				});

				$('a#howdy').click(function(e){
					modal.open({content: "Yet to program"});
					e.preventDefault();
				});
			});
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
      
      
      
 
      
       <%
          try{
              String sessionAccessLevel = session.getAttribute("sessionAccessLevel").toString();
        
          
          if(sessionAccessLevel.equals("3"))
          {
          %>
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
  <div id="place">
 <div id="place">
     
     
 
      <%
          
              
              
   String searchValue = request.getParameter("searchValue");
              
String companyName=request.getParameter("companyName"); 
session.putValue("userid","hi"); 

String companyId=request.getParameter("companyId"); 
String username=request.getParameter("username"); 
String password=request.getParameter("password"); 
String emailid=request.getParameter("emailid"); 

String address=request.getParameter("address"); 
String city=request.getParameter("city"); 
String state=request.getParameter("state"); 
String pinCode=request.getParameter("pinCode"); 

String contactNumber=request.getParameter("contactNumber"); 


if(searchValue != null)
{


 
   String[] companyIdTwo=new String[30];
   String[] companyNameTwo=new String[30];
   String[] emailidTwo =new String[30];
   String[] addressTwo=new String[30];
   String[] cityTwo=new String[30];
   String[] stateTwo =new String[30];
   String[] pincodeTwo=new String[30];
   String[] contactNumberTwo =new String[30];
   
  
Class.forName("com.mysql.jdbc.Driver"); 

java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pcadatabase", "root","root"); 

Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from recruiterdetail where companyName='"+searchValue+"'");

if(rs.next())
{
    %>
    <form action="adminDashboard.jsp" method="post">
<table width="70%">
    <tr>
        <th>
           Company Id
        </th>
        <th>
          Company Name
        </th>
        <th>
           Address
        </th>
        <th>
          City  
        </th>
        <th>
           State
        </th>
        <th>
            Pincode
        </th>
        <th>
            Contact Number
        </th>
        <th>
            Select
        </th>
        <th>
            Remove
        </th>
    </tr>
    <tr>
        <td> <%=rs.getString(1)%></td>
         <td> <%=rs.getString(2)%></td>
          <td> <%=rs.getString(5)%></td>
           <td> <%=rs.getString(6)%></td>
            <td> <%=rs.getString(7)%></td>
             <td> <%=rs.getString(8)%></td>
              <td> <%=rs.getString(9)%></td>
              <td><input type="radio" value="<%=rs.getString(1)%>" name="radioValue"></td>
              <td><input type="submit"></td>
    </tr>
</table>
<%
}

}

if(companyName != null || companyId != null || emailid != null || password != null )
{
}
          

 
   String[] companyIdOne=new String[30];
   String[] companyNameOne=new String[30];
   String[] emailidOne =new String[30];
   String[] addressOne=new String[30];
   String[] cityOne=new String[30];
   String[] stateOne =new String[30];
   String[] pincodeOne=new String[30];
   String[] contactNumberOne=new String[30];
   
  
Class.forName("com.mysql.jdbc.Driver"); 

java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pcadatabase", "root","root"); 

Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from recruiterdetail");

int i = 1;


while(1==1)
{    
if(rs.next()) 
{ 
   
     companyIdOne[i] = rs.getString(1);
     companyNameOne[i] = rs.getString(2);
     emailidOne[i] = rs.getString(4);
     addressOne[i] = rs.getString(5);
     cityOne[i] = rs.getString(6);
     stateOne[i] = rs.getString(7);
     pincodeOne[i] = rs.getString(8);
     contactNumberOne[i] = rs.getString(9);
      
   i++; 
}
else
{break;}

}

%>

<form name ="deleteForm" action ="adminDashboard.jsp" method="post">
    
<table border="1" width="70%" align="Left">
    <tr>
        
         <th>Company ID</th> <th>Company Name</th> 
        <th>E Mail ID</th> 
        <!--<th>Contact Number</th>-->
        <th>Select</th> 
    <th>More info</th>
    </tr>

<%for(int j = 1; j < i ; j++ ) // i is one more than the no. of records
{ %>


<tr>
    <td><center><%=companyIdOne[j]%></center></td>
    
<td><center><%=companyNameOne[j]%></center></td>
<td><center><%=emailidOne[j]%></center></td>

 <!-- <td><center><%=addressOne[j] + "\n" + cityOne[j] + "\n" + stateOne[j] + "\n" + pincodeOne[j]%></center></td> -->
 <!--<td><center><%=contactNumberOne[j]%></center></td> -->




<td><center><input type="radio" name="radioValue" value="<%=companyIdOne[j]%>" ></center></td>  

<td><center><a id='howdy' href='#'>More Info</a></center></td> <!-- <input type="button" id='howdy' name="hr" value="<%=companyIdOne[j]%>" href='#'>-->

</tr>


<%

} 

%>

</table>
<table cellspacing ="20" cellpadding="20" width="70%">
<tr><center><td><center><input type="submit" value="Delete" id="left-menu" class="LeftPanelButton" ></center></td></center></tr>
</table>


      
  </form>   
  </div>
 </div>


    <div id="sidr-left" >
    <div id="size">
    <ul>
    <li class="active"><a href="#"  id="left-menu-comp" href="#sidr-left-comp">Update Companies</a></li>
    <li><a href="#"  id="left-menu-stud" href="#sidr-left-stud">Update Students</a></li>
    <li><a href="#"  id="left-menu-reports" href="#sidr-left-reports">Reports</a></li>
    <li><a href="#"  id="left-menu-acc" href="#sidr-left-acc">Account</a></li> </ul>
    </div>
    </div>
<div id="sidr-left-comp" >
      <div id="size"> 
      <ul>
        
        <li><a href="adminAddCompany.jsp">Add Companies</a></li>
        <li class="active"><a href="adminRemoveCompany.jsp">Remove Companies</a></li>
      
      </ul>
  </div>
  </div>

<div id="sidr-left-stud" >
    <div id="size">
      <ul>
        
        <li><a href="adminRegistrationApproval.jsp">Approve Students</a></li>
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
      
                             
  <div id="sidr-left" >
      <div id="size">
      <ul>
        
        
        
        <li><a href="studentLoggingOut.jsp">Logout</a></li>      </ul>
  </div>
      </div>

 <script type="text/javascript">

     
      
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
          else
          {
          
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

%>

  </body>
  
</html>
