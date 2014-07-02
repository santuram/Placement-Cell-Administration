<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>


<html>
  <head>
      <title>Student Dashboard</title>
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
           #position
        {
            padding-top: 250px;
            margin-left: 250px;
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
 #headerimg1{
  
 margin-left: 10%;
margin-top: 2%;

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
      </style>
            <link rel="stylesheet" href="stylesheets/jquery.sidr.dark.css">
      <script  src="jquery/jquery.js" ></script>
      <script  src="jquery/jquery.sidr.min.js"></script>
      
      
                    
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
		/*$(id).css('top',  winH/2-$(id).height()/2);
		$(id).css('left', winW/2-$(id).width()/2);*/
	
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
	/*$('#mask').click(function () {
		$(this).hide();
		$('.window').hide();
	});*/		
	
});

</script>
<script>
$(document).ready(function() {	

		var id = '#dialogOne';
	
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
/*	$('#mask').click(function () {
		$(this).hide();
		$('.window').hide(); 
	});		*/
	
});

</script>

<style type="text/css">
body {
font-family:verdana;
font-size:15px;
}

a {color:blue; text-decoration:none}
a:hover {color:purple; text-decoration:none}

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
  left:250px;
  top:250px;
  width:440px;
  height:200px;
  display:none;
  z-index:9999;
  padding:20px;
}
#boxes #dialog {
  width:375px; 
  height:203px;
  padding:0px;
  background-color:#ffffff;
}
</style>


  </head>
 <body>
     
            <%
                
          try{
              String sessionAccessLevel = session.getAttribute("sessionAccessLevel").toString();
        
          
          if(sessionAccessLevel.equals("1"))
          {
      %>
            
 
  
     
          <%
            try{
             
             //sessionAccessLevel = session.getAttribute("sessionAccessLevel").toString();
                
               String sessionEmailid = session.getAttribute("sessionEmailid").toString();
               String sessionName = session.getAttribute("sessionName").toString();

               String urlUniqueNumber = request.getParameter("urlUniqueNumber"); 
               String urlCompanyName = request.getParameter("urlCompanyName");
               String urlDate = request.getParameter("urlDate"); 
               
              // out.println(urlUniqueNumber);
               
           //   out.println(sessionEmailid + sessionName + urlUniqueNumber + urlCompanyName + urlDate);
                 
                    
         //out.println("00");
         %>
 <div id="header" >
    <header>
      <div id="headerimg1">
 <a href="studentDashboard.jsp" ><img src="home.png"/> </a>
   </div></div>
      <span id="user">
      
         Welcome <%= sessionName %>
          
      </Span>
</header>
  
  <div id="leftPanel"> 
  
  <a id="left-menu" class="LeftPanelButton" href="#sidr-left"><b>Menu</b></a>
  </div>
  
  <div id="place">
           
          <%
                if(urlUniqueNumber != null){
                    
                    //out.println("0");
                    
                    Class.forName("com.mysql.jdbc.Driver").newInstance(); 

                    java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pcadatabase", "root","root"); 


                    Statement stOne= con.createStatement(); 
                //out.println("11");
                //out.println(urlUniqueNumber + urlCompanyName + urlDate + sessionEmailid + sessionName);
                    int i=stOne.executeUpdate("insert into appliedjob values ('"+urlUniqueNumber+"','"+sessionEmailid+"','"+sessionName+"','0','0','"+urlCompanyName+"','"+urlDate+"')"); 
                   // out.println("1");
                    //success modal
                    
                 %>
   

              <div id="boxes">
<div id="dialog" class="window">
  <center><a href="#" class="close" >Close</a></center>
<br>
<br>
<br>
<br>
<br>
<center>Applied Successfully</center>

</div>
<!-- Mask to cover the whole screen -->
<div style="width: 1478px; height: 602px; display: none; opacity: 0.8;" id="mask"></div>

</div>

          <%
                
                }
                else
                {
                   // out.println("2");//verum dashboard
                    
                }
            int i = 1;
            
            String[] company=new String[30];
            String[] uniqueNumber=new String[30];
            String[] shortList=new String[30];
            String[] selected=new String[30];
            String[] date=new String[30];
               
         String emailid = sessionEmailid; //***GET EMAIL FROM SESSION***
            int numberOfCompaniesApplied = 0;
            
            int checkForModal = 0;
            Class.forName("com.mysql.jdbc.Driver"); 

            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pcadatabase","root","root"); 

            Statement st= con.createStatement(); 
            ResultSet rs=st.executeQuery("select * from appliedjob where emailid='"+emailid+"'"); 
            
             while(1==1)
            {
                
            if(rs.next()) 
            { 
          
               uniqueNumber[i] = rs.getString(1);
               company[i] = rs.getString(6);
               shortList[i] = rs.getString(4);
               selected[i] = rs.getString(5);  
               date[i] = rs.getString(7);
               
               i++;
               
                                                //out.println((rs.getString(2)));
            } 
            else{
                
                checkForModal++;
                break;
                    
            }
            
            
            }
             
             if(uniqueNumber[1] == null)
             {
             %>
                
                     <div id="boxes">
<div id="dialog" class="window">
  <center><br>No Jobs Applied </center>
<br>
<br>
<center>Apply Jobs to view them in the Dashboard
<br>
<br>
<a href="studentApplyJob.jsp" >Apply Now</a></center>

</div>
<!-- Mask to cover the whole screen -->
<div style="width: 1478px; height: 602px; display: none; opacity: 0.8;" id="mask"></div>

</div>
                
                <%
             
             }
             
            numberOfCompaniesApplied = i-1;
            int numberOfRow = numberOfCompaniesApplied;
            //numberOfRow = (numberOfCompaniesApplied / 3 ) + 1 ;
            //int numberOfColumn = 0;
            //numberOfColumn = numberOfCompaniesApplied % 3;
            
        %>
        
  
          <table border="1" width="65%">
              
              <tr>
                  <th>Company Name</th>
                  <th>Date</th>
                  <th>Shortlisted</th>
                  <th>Selected</th>
                 
              </tr>
              
              
         
     <%
      int temp = 1;
      do
      {
      
    %>
    
    
    <tr>
        <td><center><%=company[temp]%></center></td>
        <td><center><%=date[temp]%></center></td>
          <%
          if (shortList[temp].equals("1"))
          { 
              %>
          <td><center>Yes</center></td>    
<%
          }
else
          {
          %>
          <td><center>NA</center></td>    
          
          <%}

%>
          
        
          
          <% 
          if(selected[temp].equals("1"))
          {
            
              %>
                <td><center>Yes</center>
                  <script type="text/javascript">
// Popup window code
function newPopup(url) {
	popupWindow = window.open(
		url,'popUpWindow','height=600,width=800,left=10,top=10,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes');
}
</script>
  <center><a href="JavaScript:newPopup('studentOfferLetter.jsp?urlCompanyName=<%=company[temp]%>');">View offer letter</a></center></td>

              
              <%
          }
          else
          {
              %>
              
          <td><center>NA</center></td>    
          <%
          }
          %>
          
          </td>
        
    </tr>
         
            
    <% temp++;
      //out.println(temp);
  }while(temp <= numberOfRow); %>
     
    
     </table>
  
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
  <%
            }
  %>
             <div id="sidr-left" >
                        <div id="size">
                        <ul>
    <li class="active"><a href="studentDashboard.jsp">Dashboard</a></li>
    <li><a href="studentApplyJob.jsp">Apply for companies</a></li>
    <li><a href="#"  id="left-menu-acc" href="#sidr-left-acc">Account</a></li> </ul>
  </div>
  </div>                                                  
  <div id="sidr-left-acc" >
      <div id="size">
      <ul>
        
        <li><a href="studentEditProfile.jsp">View profile</a></li>
        <li><a href="studentChangePassword.jsp">Change password</a></li>
        <li><a href="studentLoggingOut.jsp">Logout</a></li>      </ul>
  </div>
      </div>



 <script>
$(document).ready(function() {
    $('#left-menu').sidr({
      name: 'sidr-left',
      side: 'left' // By default
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
    