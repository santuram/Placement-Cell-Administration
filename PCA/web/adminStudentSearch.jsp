<%-- 
    Document   : adminStudentSearch
    Created on : Aug 25, 2013, 11:58:07 AM
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
        <form method="post" action="adminStudentSearch.jsp">
Search by Name <input type="text" name="nameSearchValue">
<input type="submit">
     </form>
        
        <form method="post" action="adminStudentSearch.jsp">
Search by Department<input type="text" name="departmentSearchValue">
<input type="submit">
     </form>
        <form method="post" action="adminStudentSearch.jsp">
Search by Email<input type="text" name="emailidSearchValue">
<input type="submit">
     </form>
        <%
            String searchValue = request.getParameter("nameSearchValue");
            
            if(searchValue != null)
            {
                
            }
            
            %>
    </body>
</html>
