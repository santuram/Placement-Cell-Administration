<%-- 
    Document   : adminPopStudent
    Created on : Aug 25, 2013, 11:09:20 AM
    Author     : Mahesh
--%>

<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String modalDisplayCompanyId = request.getParameter("modalDisplayCompanyId");
            out.println(modalDisplayCompanyId);
            
                if(modalDisplayCompanyId != null)
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
ResultSet rs=st.executeQuery("select * from recruiterdetail where companyId='"+modalDisplayCompanyId+"'");

if(rs.next())
{
    %>
   
    <h2> <center> <b> Company Details </b> </center> </h2>
    <center>
    <table>
        <tr> <td> <b>Company Id: </b></td><td><%=rs.getString(1)%></td><br>
        <tr> <td> <b> Company Name:</b></td><td><%=rs.getString(2)%></td><br>   
        <tr> <td>  <b>Address :</b></td><td><%=rs.getString(5)%></td> <br>
        <tr> <td> <b>City :</b></td><td>  <%=rs.getString(6)%></td> <br>
         <tr> <td> <b>State :</b></td><td><%=rs.getString(7)%></td> <br>
         <tr> <td> <b>Pincode :</b></td><td><%=rs.getString(8)%></td> <br>
    </table>
    </center>          
                 
<%
}

}
                
        %>
 
    </body>
</html>
