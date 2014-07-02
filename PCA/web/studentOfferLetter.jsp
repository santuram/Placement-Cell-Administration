<%-- 
    Document   : studentOfferLetter
    Created on : 29 Aug, 2013, 12:00:57 PM
    Author     : Nivedita
--%>

<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
                
          try{
              String sessionAccessLevel = session.getAttribute("sessionAccessLevel").toString(); 
              String sessionName = session.getAttribute("sessionName").toString();
              String urlCompanyName = request.getParameter("urlCompanyName");
          
          if(sessionAccessLevel.equals("1"))
          {
      %>
            
 
  
     
          <%
            try{
             
             //sessionAccessLevel = session.getAttribute("sessionAccessLevel").toString();
                
               String sessionEmailid = session.getAttribute("sessionEmailid").toString();
              // String sessionName = session.getAttribute("sessionName").toString();

               String urlUniqueNumber = request.getParameter("urlUniqueNumber"); 
              // String urlCompanyName = request.getParameter("urlCompanyName");
               String urlDate = request.getParameter("urlDate"); 
         %>
         
        <h1><center>Offer Letter</center></h1>
        <p>Name:<%= sessionName %>
<br>Address: 
<br>Dear Mr./Miss <%= sessionName %> <br>
<br>Congratulations! We are pleased to confirm you have been selected to work for 
<%=urlCompanyName%>.<br>  We trust that your knowledge and skills will be among our most valuable assets.<br>
We are delighted to offer you this job.
<br>Please take a print and sign the enclosed copy of this letter and return it to your placement cell to indicate your 
acceptance of this offer. 
<br>We are confident you will be able to make a significant contribution to the success of our 
company and look forward to working with you. 
<br>Sincerely, 
<br>
<%=urlCompanyName%> team<br>
__________________________________________________________________________________

<br>I accept the offer as outlined above. 

<br>______________________________
<br>(Signature above)
<br>Name:
<br>Date:
            </p>
            
  <% }
            catch(Exception ex)
            {
  
  
  
  %>
  <div id="boxes">
<div id="dialog" class="window">
    <center><a href="studentDashboard.jsp">Close</a></center>
<br>
<br>
<center>Oops! There has been an error. Please try again
<br>
<br>
</center>

</div>
<!-- Mask to cover the whole screen -->
<div style="width: 1478px; height: 602px; display: dnslknvkldsznlkznvl; opacity: 0.8;" id="mask"></div>

</div>

      </div>
  </div>
         <%   }
          }
          }
          
            
          catch(Exception ee)
          {
          
              
  
  %>
  
 <div id="boxes">
      
          <div id="dialog" class="window" style="margin-left: 250px;">
   <center><a href="index.jsp">Please Login</a></center>
<br>
<br>
<center> Access Privilege Conflict 
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
