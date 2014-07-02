<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->



<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String companyName=request.getParameter("companyName"); 
//session.putValue("userid",registerNumber); 
String companyId=request.getParameter("companyId"); 
String username=request.getParameter("username"); 
String password=request.getParameter("password"); 
String emailid=request.getParameter("emailid"); 

String address=request.getParameter("address"); 
String city=request.getParameter("city"); 
String state=request.getParameter("state"); 
String pinCode=request.getParameter("pinCode"); 


String contactNumber=request.getParameter("contactNumber"); 


Class.forName("com.mysql.jdbc.Driver").newInstance(); 

java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pcadatabase", "root","root"); 
Statement st= con.createStatement(); 
ResultSet rs; 
int i=st.executeUpdate("insert into recruiterdetail values ('"+companyId+"','"+companyName+"','"+username+"','"+password+"','"+emailid+"','"+address+"','"+city+"','"+state+"','"+pinCode+"','"+contactNumber+"')"); 


%>

<meta http-equiv="refresh" content="0; url=successPage.html"> 