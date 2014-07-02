<%-- 
    Document   : signupModal
    Created on : 29 Aug, 2013, 1:52:27 PM
    Author     : Nivedita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
                            
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
