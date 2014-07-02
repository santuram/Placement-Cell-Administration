<%-- 
    Document   : adminCompanyStudentApplied
    Created on : Aug 9, 2013, 3:44:36 AM
    Author     : Mahesh
--%>



<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>


<html>
  <head>
      <title>Admin Selection</title>
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
  </head>
  <body>
 <%
     String sessionAccessLevel = "";
          try{
              sessionAccessLevel = session.getAttribute("sessionAccessLevel").toString();
             // String sessionName = session.getAttribute("sessionName").toString();
             // String sessionEmailid = session.getAttribute("sessionEmailid").toString();
          }
          catch(Exception eeee)
          {
          }
          String selectValue = request.getParameter("selectValue");
          String[] selectValueTwo = request.getParameterValues("selectValueTwo");
          
         if(sessionAccessLevel.equals("3"))
         {
                    
           %>
 
      
      <div id="header" >
   <header>
     <div id="headerimg1">
 <a href="adminDashboard.jsp" ><img src="home.png"/> </a>
   </div>
      <span id="user">
       Welcome Admin
      </Span>
</header>
 
  <div id="leftPanel"> 
  <a id="left-menu" class="LeftPanelButton" href="#sidr-left"><b>Menu</b></a>
  </div>
  </div>
  <div id="place">
      
     <% Class.forName("com.mysql.jdbc.Driver"); 
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pcadatabase", "root","root"); 
            Statement stOne = con.createStatement(); 
            
            ResultSet rsOne = stOne.executeQuery("select * from jobtable");
       %>
              
      <br><br>
              <form action = "adminSelect.jsp" method ="POST" >
                    <center>  <table cellspacing ="20" cellpadding="20" width="65%" align="Left">
                          <tr>
                              <td><center>
                                  <select name="selectValue">
                                      <% 
                                            String tempOne = "";
                                            String tempTwo = "";
                                        
                                            while(rsOne.next())
                                            {
                                            tempOne = rsOne.getString(4);
                                            tempTwo = rsOne.getString(1);
                                            
                                            String companyDateString = tempOne + " - " + tempTwo;
                                           // out.println(companyDateString);
                                      %>
                                      
                                      <option value=<%=tempTwo%>> <%=companyDateString%></option>
                                      
                                      <% } %>
                                      
                                  </select>
                                  </center>
                              </td>
                              <td><input type="submit" class="LeftPanelButton"></td>
                          </tr>
                      </table>
                    </center>
                      </form>
              
 <%
                                            
if(selectValue != null && selectValueTwo == null)
{
    
    session.setAttribute("sessionTempUniqueNumber", selectValue);
            String[] emailidOne = new String[30];
            String[] nameOne = new String[30];
            String tempSelectValue = selectValue;
            int i = 1;
            int j = 1;
            Statement st = con.createStatement(); 
            
            ResultSet rs = stOne.executeQuery("select * from appliedjob where uniquenumber='"+selectValue+"' and selected='0' and shortlist='1'");
            
            while(1==1)
            {
            if(rs.next())
            {
                emailidOne[i] = rs.getString(2);
                nameOne[i] = rs.getString(3); 
                i++;
            }
            else
                break;
            }
            
            int numberOfRow = i-1;
            %>
            <form action="adminSelect.jsp" method="post">
            <table width="65%">
                <tr>
                    <th>
                        Email ID
                    </th>
                    <th>
                        Name
                    </th>
                    <th>
                        Select
                    </th>
                </tr>
                <%
                        while(numberOfRow > 0)
                        {
                %>
                        <tr>
                            <td>
                                <%=emailidOne[j]%>
                            </td>
                            <td>
                                <%=nameOne[j]%>
                            </td>
                            <td>
                                <input type="checkbox" value="<%=emailidOne[j]%>" name="selectValueTwo">
                            </td>
                        </tr>
                        
                <%
                        numberOfRow--; j++;
                        }
                %>
            </table>
            <table width="65%">
                <tr><td><center><input class="LeftPanelButton" type="submit"></center></td></tr></table>
            </form>
            
            <%                                               
}     
try{

   // Class.forName("com.mysql.jdbc.Driver"); 
            //java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pcadatabase", "root","root"); 
            
    
String sessionTempUniqueNumber = session.getAttribute("sessionTempUniqueNumber").toString();
////////////////////////////////////////////////////////////out.println(sessionTempUniqueNumber);

//String[] selectValueTwo = request.getParameterValues("selectValueTwo");

if(selectValueTwo != null)
{
            Statement st = con.createStatement(); 
            int jj = 0;
           // out.println("dfs");
            for(int ii = 0; ii<selectValueTwo.length;ii++)
            {
               jj = st.executeUpdate("UPDATE APPLIEDJOB SET SELECTED = 1 WHERE emailid='"+selectValueTwo[ii].toString()+"' and uniquenumber='"+sessionTempUniqueNumber+"'");
             //  out.println(selectValueTwo[ii]);
            }
}
}
catch(Exception eee)
{
}
%>
            
      
  </div>
        
                        <div id="sidr-left" >
                        <div id="size">
                        <ul>
    <li><a href="#"  id="left-menu-comp" href = "#sidr-left-comp">Update Companies</a></li>
    <li><a href="#"  id="left-menu-stud" href = "#sidr-left-stud">Update Students</a></li>
    <li class="active"><a href="#"  id="left-menu-reports" href = "#sidr-left-reports">Reports</a></li>
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
        
        <li><a href="adminRegistrationApproval.jsp">Approve Students</a></li>
        <li><a href="adminRemoveStudent.jsp">Remove Students</a></li>
         <li><a href="adminShortlist.jsp">Shortlist Students</a></li>
        <li class="active"><a href="adminSelect.jsp">Select Students</a></li>
         
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
          else
         {
         //logged in as another level%>
1111111111
<%
         }
  
%>
  </body>

</html>