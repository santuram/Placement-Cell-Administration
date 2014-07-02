<%-- 
    Document   : studentLoggingOut
    Created on : Aug 9, 2013, 12:15:59 AM
    Author     : Mahesh
--%>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>

<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Logging out...</title>

<script type="text/javascript" src="jquery.js"></script>

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
		var winH = $(window).height();
		var winW = $(window).width();
              
		//Set the popup window to center
		$(id).css('top',  winH/2-$(id).height()/2);
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
body {
font-family:verdana;
font-size:15px;
}

a {color:#333; text-decoration:none}
a:hover {color:#ccc; text-decoration:none}

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
</head>

  <body>
            <%
          try{
                String sessionAccessLevel = session.getAttribute("sessionAccessLevel").toString();
                String sessionEmailid = session.getAttribute("sessionEmailid").toString();
                String sessionName = session.getAttribute("sessionName").toString();
                             
                session.removeAttribute("sessionAccessLevel");
                session.removeAttribute("sessionEmailid");
                session.removeAttribute("sessionName");
                %> 
                
<div id="boxes">
<div style="top: 199.5px; left: 551.5px; display: none;" id="dialog" class="window">
    <center><br><br><br><br>Logging Out.... | Please wait...</center>
</div>
<!-- Mask to cover the whole screen -->
<div style="width: 1478px; height: 602px; display: none; opacity: 0.8;" id="mask"></div>
</div>
                
                <meta http-equiv="refresh" content="1; url=index.jsp">

<%
                
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
    