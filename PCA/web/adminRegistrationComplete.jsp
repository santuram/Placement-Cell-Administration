<%-- 
    Document   : adminRegistrationComplete
    Created on : Aug 5, 2013, 3:08:59 AM
    Author     : Mahesh
--%>

   
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>


<html>
    <head>
        <title>Admin - Registration Approval</title> 
    </head>
    
    
    <body>
        
       <%
           String checkBoxValue[]= request.getParameterValues("checkBoxValue");
           
           
              Class.forName("com.mysql.jdbc.Driver").newInstance(); 

           java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pcadatabase", "root","root"); 
           Statement st= con.createStatement(); 
           ResultSet rs; 
            

            
           for(int i = 0; i<checkBoxValue.length;i++)
           {
           
           out.println(checkBoxValue[i]);
           int j = st.executeUpdate("UPDATE USERDETAIL SET ifapproved=1 WHERE emailid='"+checkBoxValue[i]+"'"); 
     
           } //UPDATE scores SET Num=0 WHERE Name="Richard";
           
           
          

        %>
        
    </body>
</html>