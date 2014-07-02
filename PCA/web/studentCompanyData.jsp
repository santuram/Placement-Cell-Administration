<%-- 
    Document   : studentCompanyData
    Created on : Aug 5, 2013, 12:12:41 AM
    Author     : Mahesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
              <%
          try{
              String sessionAccessLevel = session.getAttribute("sessionAccessLevel").toString();
        
          
          if(sessionAccessLevel.equals("3"))
          {
          %>
        <h1>Hello World!</h1>
        
<%
                }
}
          catch(Exception ee)
          {}

%>
    </body>
</html>
