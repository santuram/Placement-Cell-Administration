<html>
  <head>
    
    <title>Shree College</title>
    
    <style>
#input_box { background-color:#eeeeee; color:#202020;}
</style>

 <style type="text/css">

   html { 
  background: url(path.png) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  font-size: 20;
  }
  #SignInButton
  {
    position: fixed;
    top:365px;
    left:700px;


  }
   #SignUpButton
  {
    position: fixed;
    top:365px;
    left:850px;


  }
    .SignIn{
  
border:0px solid #C9C9C9;
-webkit-border-radius: 8px; 
-moz-border-radius: 8px;
border-radius: 8px;
font-size:19px;
font-family:arial; 
padding: 8px 8px 8px 8px; 
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
    .SignIn1{
  
border:0px solid #C9C9C9;
-webkit-border-radius: 8px; 
-moz-border-radius: 8px;
border-radius: 8px;
font-size:19px;
font-family:arial; 
padding: 8px 8px 8px 8px; 
text-decoration:none; 
display:inline-block; 
color: #333;
 background-color: #333333; 
 background-image: -webkit-gradient(linear, left top, left bottom, from(#FFF59F), to(#F7E033));
 background-image: -webkit-linear-gradient(top, #FFF59F, #F7E033);
 background-image: -moz-linear-gradient(top, #FFF59F, #F7E033);
 background-image: -ms-linear-gradient(top, #FFF59F, #F7E033);
 background-image: -o-linear-gradient(top, #FFF59F, #F7E033);
 background-image: linear-gradient(to bottom, #FFF59F, #F7E033);
}
.SignIn2{
  width: 100%;
border:0px solid #C9C9C9;
-webkit-border-radius: 8px; 
-moz-border-radius: 8px;
border-radius: 8px;
font-size:19px;
font-family:arial; 
padding: 8px 8px 8px 8px; 
text-decoration:none; 
display:inline-block; 


}
#align{
    
    margin-top: 100%;
}

#signinform { /* no default styles */ }

#signinform label { display: block ; font-size: 60px; font-weight: 900; color: #ffffff; margin-top: 25px;}
#signinform a { display: block;margin-top: 15px; }
 </style>

    
    <link rel="stylesheet" href="stylesheets/jquery.sidr.dark.css">
    
    <script  src="jquery.js" ></script>
    
    <script  src="jquery.sidr.min.js"></script>
  
<link rel="stylesheet" type="text/css" media="all" href="SignUp.css">
  </head>
  


  <body >
    
  <div id="SignInButton"> 
  <a id="left-menu" class="SignIn" href="#sidr-left"><b>Sign In</b></a>
  </div>
  <div id="SignUpButton"> 
  <a  class="SignIn" href="studentRegistrationOne.jsp"><b>Sign Up</b></a>
  </div>

     
 
   
                          <div id="sidr-left" >
                      
                         <form   action="loginConfirmation.jsp" method="post">
                             <div id="align">






                                 <div id="align">


<label for="email"> Email Id </label>
<input type="email" placeholder="" class="sutxtfield" autofocus  name="emailid" id="input_box" required  />  

<label for="password"> Password </label>
<input type="password" placeholder="" class="sutxtfield"  name="password" id="input_box" required/>       
<!--a href="http://www.facebook.com"><font color="#2fb587">Forgot Password?</font></a--> 
           
<input class="SignIn2" type="submit" value="SignIn">
                       
                             </div>
                        </div>
                         </form>
                         </div> 
                             






 <script>
$(document).ready(function() {
    $('#left-menu').sidr({
      name: 'sidr-left',
      side: 'left' // By default
    });
    $('#right-menu').sidr({
      name: 'sidr-right',
      side: 'right'
    });
});
</script>
 

  </body>

</html>