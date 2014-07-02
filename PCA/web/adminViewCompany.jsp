<%-- 
    Document   : adminViewCompany
    Created on : Aug 9, 2013, 2:46:36 PM
    Author     : Mahesh
--%>

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
     
  </head>
  <body>
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
 
      <%
          
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

if(companyName != null && companyId != null && emailid != null && password != null )
{
Class.forName("com.mysql.jdbc.Driver").newInstance(); 

java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pcadatabase", "root","root"); 
Statement st= con.createStatement(); 
ResultSet rs; 
int i=st.executeUpdate("insert into recruiterdetail values ('"+companyId+"','"+companyName+"','"+password+"','"+emailid+"','"+address+"','"+city+"','"+state+"','"+pinCode+"','"+contactNumber+"')"); 
out.println("Company Added Successfully...");
}
else if(companyId != null)
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
%>


<%
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

<table cellspacing ="20" cellpadding="20">
    <tr><td>Company ID</td> <td>Company Name</td> <td>E Mail ID</td> <!-- <td>Address</td>--><td>Contact Number</td> </tr>

<%for(int j = 1; j < i ; j++ ) // i is one more than the no. of records
{ %>


<tr>
    <td><center><%=companyIdOne[j]%></center></td>
<td><center><%=companyNameOne[j]%></center></td>
<td><center><%=emailidOne[j]%></center></td>
 <!-- <td><center><%=addressOne[j] + "\n" + cityOne[j] + "\n" + stateOne[j] + "\n" + pincodeOne[j]%></center></td> -->
<td><center><%=contactNumberOne[j]%></center></td>
</tr>


<%

} %>

</table>
      
          
 

     
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
        <li><a href="adminRemoveCompany.jsp">Remove Companies</a></li>
      
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
}
          catch(Exception ee)
          {}

%>


  </body>

</html>
