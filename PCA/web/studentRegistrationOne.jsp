<%-- 
    Document   : studentRegistrationOne
    Created on : Aug 22, 2013, 11:06:38 AM
    Author     : Mahesh
--%>

<!doctype html>
<html >
<head>
	<meta charset="utf-8">
    <title>Shree College-Sign</title>
	<link href="css/ui-lightness/jquery-ui-1.10.3.custom.css" rel="stylesheet">
	<script src="js/jquery-1.9.1.js"></script>
	<script src="js/jquery-ui-1.10.3.custom.js"></script>
  
    
	<script type="text/javascript">
     function validatesmail()
     {
 var regemail = /^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/ ;
 var email=signup1.Username.value;
 if(regemail.test(email)==true)
 {
  document.getElementById('smail').innerHTML="";
  return true;
 }
 else{
  document.getElementById('smail').innerHTML="Invalid Email ID";
  document.getElementById('smail').style.color="#04709F";
  return false;
 }

     }
     function validatespas()
{

if(signup1.Password.value.trim().length==null || signup1.Password.value.trim().length=="")
{
  document.getElementById('spas').innerHTML="Invalid Password";
  document.getElementById('spas').style.color="#04709F";
  return false;
}
if(signup1.Password.value.trim().length<6 || signup1.Password.value.trim().length>20)
{
  document.getElementById('spas').innerHTML="Invalid Password";
  document.getElementById('spas').style.color="#04709F";
  return false;
}
else{

document.getElementById('spas').innerHTML="";
return true;

}
}
function validatescpas()
{
if(signup1.Cpassword.value==signup1.Password.value)
{
  document.getElementById('scpas').innerHTML="";
  return true;

}
else{
  document.getElementById('scpas').innerHTML="Password Mismatch";
  document.getElementById('scpas').style.color="#04709F";
  return false;
}
}
function validatesmob()
{
var mob=signup1.phone.value;
var mob1=mob.trim();
if (mob1.length!=10) 
{ 
document.getElementById('smob').innerHTML="Enter Valid 10 digit Mobileno.";
document.getElementById('smob').style.color="#04709F";
return false;
}
if(isNaN(mob1))
      {
 document.getElementById('smob').innerHTML="Enter Valid  Mobileno.";
document.getElementById('smob').style.color="#04709F";
return false;
      }
else
{
document.getElementById('smob').innerHTML="";
return true;
}
}
function validatesfname()
{
 var first = signup1.Finame.value;
 var first1=first.trim();
 if(first1.length == null || first1.length=="")
 {
document.getElementById('sfnam').innerHTML="Enter name";
document.getElementById('sfnam').style.color="#04709F";
return false;
 }
 else
 {
  document.getElementById('sfnam').innerHTML="";
return true;
 }
}
function validateslname()
{
 var last  = signup1.Laname.value;
 var last1=last.trim();
 if(last1.length == null || last1.length=="")
 {
document.getElementById('slnam').innerHTML="Enter name";
document.getElementById('slnam').style.color="#04709F";
return false;
 }
 else
 {
  document.getElementById('slnam').innerHTML="";
return true;
 }
}
function validateshname()
{
 var gaurd = signup1.Guname.value;
 var gaurd1=gaurd.trim();
 if(gaurd1.length == null || gaurd1.length=="")
 {
document.getElementById('shnam').innerHTML="Enter name";
document.getElementById('shnam').style.color="#04709F";
return false;
 }
 else
 {
  document.getElementById('shnam').innerHTML="";
return true;
 }
}
function validatesdob()
{
 var da =signup1.Dob.value;
 var da1=da.trim();
 if(da1.length == null || da1.length=="")
 {
document.getElementById('sdob').innerHTML="Enter Date-Of-Birth";
document.getElementById('sdob').style.color="#04709F";
return false;
 }
 else
 {
  document.getElementById('sdob').innerHTML="";
return true;
 }
}
function validatesnat()
{
 var na =signup1.Nationality.value;
 var na1=na.trim();
 if(na1.length == null || na1.length=="")
 {
document.getElementById('snat').innerHTML="Enter Nationality";
document.getElementById('snat').style.color="#04709F";
return false;
 }
 else
 {
  document.getElementById('snat').innerHTML="";
return true;
 }
}
  function validatesmail1()
     {
 var regemail = /^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/ ;
 var email=signup1.Aemail.value;
 if(regemail.test(email)==true)
 {
  document.getElementById('smail1').innerHTML="";
  return true;
 }
 else{
  document.getElementById('smail1').innerHTML="Invalid Email ID";
  document.getElementById('smail1').style.color="#04709F";
  return false;
 }
}
 function validatesph()
{
var mob=signup1.Llno.value;
var mob1=mob.trim();
if (mob1.length!=10) 
{ 
document.getElementById('sph').innerHTML="Enter Valid 10 digit Mobileno.";
document.getElementById('sph').style.color="#04709F";
return false;
}
if(isNaN(mob1))
      {
 document.getElementById('sph').innerHTML="Enter Valid  Mobileno.";
document.getElementById('sph').style.color="#04709F";
return false;
      }
else
{
document.getElementById('sph').innerHTML="";
return true;
}
}
function validatesgen()

{
if ( ( signup2.gender[0].checked == false ) && ( signup2.gender[1].checked == false ) ) 

{
document.getElementById('sgen').innerHTML="Select Gender";
document.getElementById('sgen').style.color="#04709F";
return false;
}
{
document.getElementById('sgen').innerHTML="";
return true;
}
}
function validatesdeg()

{
  var deg=signup1.Degree.value;
  var deg1=deg.trim();
if ( deg1.length=="" || deg1.length== null) 

{
document.getElementById('sdeg').innerHTML="Select Degree";
document.getElementById('sdeg').style.color="#04709F";
return false;
}
else{
document.getElementById('sdeg').innerHTML="";
return true;
}
}
function validatesbra()

{
  var deg=signup1.Branch.value;
  var deg1=deg.trim();
if ( deg1.length=="" || deg1.length== null) 

{
document.getElementById('sbra').innerHTML="Select Branch";
document.getElementById('sbra').style.color="#04709F";
return false;
}
else{
document.getElementById('sbra').innerHTML="";
return true;
}
}
function validatesyoc()

{
  var deg=signup1.Year.value;
  var deg1=deg.trim();
if ( deg1.length=="" || deg1.length== null) 

{
document.getElementById('syoc').innerHTML="Enter Year of Completion";
document.getElementById('syoc').style.color="#04709F";
return false;
}
if(isNaN(deg1))
      {
 document.getElementById('syoc').innerHTML="Enter Valid  Year";
document.getElementById('syoc').style.color="#04709F";
return false;
      }
else{
document.getElementById('syoc').innerHTML="";
return true;
}
}
function validatescgpa()

{
  var deg=signup1.cgpa.value;
  var deg1=deg.trim();
if ( deg1.length=="" || deg1.length== null) 

{
document.getElementById('scgpa').innerHTML="Enter CGPA";
document.getElementById('scgpa').style.color="#04709F";
return false;
}
if(isNaN(deg1))
      {
 document.getElementById('scgpa').innerHTML="Enter Valid  CGPA";
document.getElementById('scgpa').style.color="#04709F";
return false;
      }
else{
document.getElementById('scgpa').innerHTML="";
return true;
}
}
function validatesten()

{
  var deg=signup1.Tenth.value;
  var deg1=deg.trim();
if ( deg1.length=="" || deg1.length== null) 

{
document.getElementById('sten').innerHTML="Enter Tenth Marks";
document.getElementById('sten').style.color="#04709F";
return false;
}if(isNaN(deg1))
      {
 document.getElementById('sten').innerHTML="Enter Valid  Tenth Marks";
document.getElementById('sten').style.color="#04709F";
return false;
      }

else{
document.getElementById('sten').innerHTML="";
return true;
}
}
function validatestwe()

{
  var deg=signup1.Twelfth.value;
  var deg1=deg.trim();
  var deg2=signup1.Diploma.value;
  var deg3=deg2.trim();
if ( (deg1.length=="" || deg1.length== null) && (deg3.length=="" || deg3.length== null)) 

{
document.getElementById('stwe').innerHTML="Enter 12,Diploma marks";
document.getElementById('stwe').style.color="#04709F";
return false;
}
if(isNaN(deg1))
      {
 document.getElementById('stwe').innerHTML="Enter Valid Marks";
document.getElementById('stwe').style.color="#04709F";
return false;
      }
else{
document.getElementById('stwe').innerHTML="";
return true;
}
}
function validatesadd1()

{
  var deg=signup1.Address1.value;
  var deg1=deg.trim();
if ( deg1.length=="" || deg1.length== null) 

{
document.getElementById('sadd1').innerHTML="Enter H-No,st. name";
document.getElementById('sadd1').style.color="#04709F";
return false;
}
else{
document.getElementById('sadd1').innerHTML="";

return true;
}
}
function validatesadd2()

{
  var deg=signup1.Address3.value;
  var deg1=deg.trim();
if ( deg1.length=="" || deg1.length== null) 

{
document.getElementById('sadd2').innerHTML="Enter Area name";
document.getElementById('sadd2').style.color="#04709F";
return false;
}
else{
document.getElementById('sadd2').innerHTML="";

return true;
}
}
function validatescity()

{
  var deg=signup1.City.value;
  var deg1=deg.trim();
if ( deg1.length=="" || deg1.length== null) 

{
document.getElementById('scity').innerHTML="Enter City name";
document.getElementById('scity').style.color="#04709F";
return false;
}
else{
document.getElementById('scity').innerHTML="";

return true;
}
}
function validatesst()

{
  var deg=signup1.State.value;
  var deg1=deg.trim();
if ( deg1.length=="" || deg1.length== null) 

{
document.getElementById('sst').innerHTML="Enter State name";
document.getElementById('sst').style.color="#04709F";
return false;
}
else{
document.getElementById('sst').innerHTML="";

return true;
}
}
function validatesco()

{
  var deg=signup1.Country.value;
  var deg1=deg.trim();
if ( deg1.length=="" || deg1.length== null) 

{
document.getElementById('sco').innerHTML="Enter Country name";
document.getElementById('sco').style.color="#04709F";
return false;
}
else{
document.getElementById('sco').innerHTML="";

return true;
}
}
function validatespin()

{
  var deg=signup1.Pincode.value;
  var deg1=deg.trim();
if ( deg1.length=="" || deg1.length== null) 

{
document.getElementById('spin').innerHTML="Enter Pincode";
document.getElementById('spin').style.color="#04709F";
return false;
}
if(deg1.length!=6) 

{
document.getElementById('spin').innerHTML="Enter valid Pincode";
document.getElementById('spin').style.color="#04709F";
return false;
}
if(isNaN(deg1))
      {
 document.getElementById('smob').innerHTML="Enter Valid  Pincode";
document.getElementById('smob').style.color="#04709F";
return false;
      }
else{
document.getElementById('spin').innerHTML="";

return true;
}
}
function validateall()
     {
 var regemail = /^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/ ;
 var email=signup1.Username.value;
 if(regemail.test(email)==true)
 {
  document.getElementById('errormsgs').innerHTML="";
  return true;
 }
 else{
  document.getElementById('errormsgs').innerHTML="Invalid Email ID";
  document.getElementById('errormsgs').style.color="#04709F";
  return false;
 }

     
if(signup1.Password.value.trim().length==null || signup1.Password.value.trim().length=="")
{
  document.getElementById('errormsgs').innerHTML="Invalid Password";
  document.getElementById('errormsgs').style.color="#04709F";
  return false;
}
if(signup1.Password.value.trim().length<6 || signup1.Password.value.trim().length>20)
{
  document.getElementById('errormsgs').innerHTML="Invalid Password";
  document.getElementById('errormsgs').style.color="#04709F";
  return false;
}
else{

document.getElementById('errormsgs').innerHTML="";
return true;

}
if(signup1.Cpassword.value==signup1.Password.value)
{
  document.getElementById('errormsgs').innerHTML="";
  return true;

}
else{
  document.getElementById('errormsgs').innerHTML="Password Mismatch";
  document.getElementById('errormsgs').style.color="#04709F";
  return false;
}
var mob=signup1.phone.value;
var mob1=mob.trim();
if (mob1.length!=10) 
{ 
document.getElementById('errormsgs').innerHTML="Enter Valid 10 digit Mobileno.";
document.getElementById('errormsgs').style.color="#04709F";
return false;
}
if(isNaN(mob1))
      {
 document.getElementById('errormsgs').innerHTML="Enter Valid  Mobileno.";
document.getElementById('errormsgs').style.color="#04709F";
return false;
      }
else
{
document.getElementById('errormsgs').innerHTML="";
return true;
}

 var first = signup1.Finame.value;
 var first1=first.trim();
 if(first1.length == null || first1.length=="")
 {
document.getElementById('errormsgs').innerHTML="Enter name";
document.getElementById('errormsgs').style.color="#04709F";
return false;
 }
 else
 {
  document.getElementById('errormsgs').innerHTML="";
return true;
 }

 var last  = signup1.Laname.value;
 var last1=last.trim();
 if(last1.length == null || last1.length=="")
 {
document.getElementById('errormsgs').innerHTML="Enter name";
document.getElementById('errormsgs').style.color="#04709F";
return false;
 }
 else
 {
  document.getElementById('errormsgs').innerHTML="";
return true;
 }

 var gaurd = signup1.Guname.value;
 var gaurd1=gaurd.trim();
 if(gaurd1.length == null || gaurd1.length=="")
 {
document.getElementById('errormsgs').innerHTML="Enter name";
document.getElementById('errormsgs').style.color="#04709F";
return false;
 }
 else
 {
  document.getElementById('errormsgs').innerHTML="";
return true;
 }

 var da =signup1.Dob.value;
 var da1=da.trim();
 if(da1.length == null || da1.length=="")
 {
document.getElementById('errormsgs').innerHTML="Enter Date-Of-Birth";
document.getElementById('errormsgs').style.color="#04709F";
return false;
 }
 else
 {
  document.getElementById('errormsgs').innerHTML="";
return true;
 }
 var regemail1 = /^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/ ;
 var email1=signup1.Aemail.value;
 if(regemail1.test(email1)==true)
 {
  document.getElementById('errormsgs').innerHTML="";
  return true;
 }
 else{
  document.getElementById('errormsgs').innerHTML="Invalid Email ID";
  document.getElementById('errormsgs').style.color="#04709F";
  return false;
 }

var mobe=signup1.Llno.value;
var mobe1=mobe.trim();
if (mobe1.length!=10) 
{ 
document.getElementById('errormsgs').innerHTML="Enter Valid 10 digit Mobileno.";
document.getElementById('errormsgs').style.color="#04709F";
return false;
}
if(isNaN(mobe1))
      {
 document.getElementById('errormsgs').innerHTML="Enter Valid  Mobileno.";
document.getElementById('errormsgs').style.color="#04709F";
return false;
      }
else
{
document.getElementById('errormsgs').innerHTML="";
return true;
}

  var deg=signup1.Degree.value;
  var deg1=deg.trim();
if ( deg1.length=="" || deg1.length== null) 

{
document.getElementById('errormsgs').innerHTML="Select Degree";
document.getElementById('errormsgs').style.color="#04709F";
return false;
}
else{
document.getElementById('errormsgs').innerHTML="";
return true;
}

  var deg1=signup1.Branch.value;
  var deg11=deg1.trim();
if ( deg11.length=="" || deg11.length== null) 

{
document.getElementById('errormsgs').innerHTML="Select Branch";
document.getElementById('errormsgs').style.color="#04709F";
return false;
}
else{
document.getElementById('errormsgs').innerHTML="";
return true;
}

  var deg2=signup1.Year.value;
  var deg12=deg2.trim();
if ( deg12.length=="" || deg12.length== null) 

{
document.getElementById('errormsgs').innerHTML="Enter Year of Completion";
document.getElementById('errormsgs').style.color="#04709F";
return false;
}
if(isNaN(deg12))
      {
 document.getElementById('errormsgs').innerHTML="Enter Valid  Year";
document.getElementById('errormsgs').style.color="#04709F";
return false;
      }
else{
document.getElementById('errormsgs').innerHTML="";
return true;
}

  var deg3=signup1.cgpa.value;
  var deg13=deg3.trim();
if ( deg13.length=="" || deg13.length== null) 

{
document.getElementById('errormsgs').innerHTML="Enter CGPA";
document.getElementById('errormsgs').style.color="#04709F";
return false;
}
if(isNaN(deg13))
      {
 document.getElementById('errormsgs').innerHTML="Enter Valid  CGPA";
document.getElementById('errormsgs').style.color="#04709F";
return false;
      }
else{
document.getElementById('errormsgs').innerHTML="";
return true;
}

  var deg4=signup1.Tenth.value;
  var deg14=deg4.trim();
if ( deg14.length=="" || deg14.length== null) 

{
document.getElementById('errormsgs').innerHTML="Enter Tenth Marks";
document.getElementById('errormsgs').style.color="#04709F";
return false;
}if(isNaN(deg14))
      {
 document.getElementById('errormsgs').innerHTML="Enter Valid  Tenth Marks";
document.getElementById('errormsgs').style.color="#04709F";
return false;
      }

else{
document.getElementById('errormsgs').innerHTML="";
return true;
}

  var deg5=signup1.Twelfth.value;
  var deg15=deg5.trim();
  var deg25=signup15.Diploma.value;
  var deg35=deg25.trim();
if ( (deg15.length=="" || deg15.length== null) && (deg35.length=="" || deg35.length== null)) 

{
document.getElementById('errormsgs').innerHTML="Enter 12,Diploma marks";
document.getElementById('errormsgs').style.color="#04709F";
return false;
}
if(isNaN(deg15))
      {
 document.getElementById('errormsgs').innerHTML="Enter Valid Marks";
document.getElementById('errormsgs').style.color="#04709F";
return false;
      }
else{
document.getElementById('errormsgs').innerHTML="";
return true;
}

  var deg6=signup1.Address1.value;
  var deg16=deg6.trim();
if ( deg16.length=="" || deg16.length== null) 

{
document.getElementById('errormsgs').innerHTML="Enter H-No,st. name";
document.getElementById('errormsgs').style.color="#04709F";
return false;
}
else{
document.getElementById('errormsgs').innerHTML="";
5
return true;
}

  var deg7=signup1.Address3.value;
  var deg17=deg7.trim();
if ( deg17.length=="" || deg17.length== null) 

{
document.getElementById('errormsgs').innerHTML="Enter Area name";
document.getElementById('errormsgs').style.color="#04709F";
return false;
}
else{
document.getElementById('sadd2').innerHTML="";

return true;
}

  var deg8=signup1.City.value;
  var deg18=deg8.trim();
if ( deg18.length=="" || deg18.length== null) 

{
document.getElementById('errormsgs').innerHTML="Enter City name";
document.getElementById('errormsgs').style.color="#04709F";
return false;
}
else{
document.getElementById('scity').innerHTML="";

return true;
}

  var deg9=signup1.State.value;
  var deg19=deg9.trim();
if ( deg19.length=="" || deg19.length== null) 

{
document.getElementById('errormsgs').innerHTML="Enter State name";
document.getElementById('errormsgs').style.color="#04709F";
return false;
}
else{
document.getElementById('errormsgs').innerHTML="";

return true;
}

  var deg11=signup1.Country.value;
  var deg111=deg11.trim();
if ( deg111.length=="" || deg111.length== null) 

{
document.getElementById('errormsgs').innerHTML="Enter Country name";
document.getElementById('errormsgs').style.color="#04709F";
return false;
}
else{
document.getElementById('errormsgs').innerHTML="";

return true;
}

  var deg12=signup1.Pincode.value;
  var deg112=deg12.trim();
if ( deg112.length=="" || deg112.length== null) 

{
document.getElementById('errormsgs').innerHTML="Enter Pincode";
document.getElementById('errormsgs').style.color="#04709F";
return false;
}
if(deg112.length!=6) 

{
document.getElementById('errormsgs').innerHTML="Enter valid Pincode";
document.getElementById('errormsgs').style.color="#04709F";
return false;
}
if(isNaN(deg112))
      {
 document.getElementById('errormsgs').innerHTML="Enter Valid  Pincode";
document.getElementById('errormsgs').style.color="#04709F";
return false;
      }
else{
document.getElementById('errormsgs').innerHTML="";

return true;
}
}

	$(function() {


		var availableTags1 = [
			"B.E",
			"B.Tech",
			
			
		];
		var availableTags2 = [
			"Computer Science And Engineering",
			"Mechanical Engineering",
			"Information Technology",
			" Electronics and Communication Engineering",
		];
      var availableTags3 = [
      "2014",
      "2013"
       ];
		$( "#autocomplete1" ).autocomplete({
			source: availableTags1
		});
		$( "#autocomplete2" ).autocomplete({
			source: availableTags2
		});
    $( "#autocomplete3" ).autocomplete({
      source: availableTags3
    });
		$( "#accordion" ).accordion({
      heightStyle: "content"
    });
	    $( "#radioset" ).buttonset();


	    
	});

</script>
<link rel="stylesheet" type="text/css" media="all" href="SignUp1.css">
<style type="text/css">
	#acc{
        margin-left: 10%;
        margin-top: 5%;
		width: 80%;


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
    #formalign{
	
		}
     #formalign label{
              margin-top: 5%;
             
              position: relative;
              margin-left: 5%;
              display: block;
     }
     #formalign input,textarea{
        margin-top: -5%;
     	
     	
     	margin-left: 35%;
     	overflow-x:hidden;
     	overflow-y:auto;  
     }
        #formalign textarea{
        margin-top: 0%;
     	
     	
     	margin-left: 35%;
     	overflow-x:hidden;
     	overflow-y:auto;  
     }
   #gender{
               margin-right: 47%;
               float: right;
        
   }
   /* gender label*/
    #g{
   	
   	float: left;
   	margin-right: 22%;
   	margin-left: 5%;
   }
 /* predegree %'s ==pd*/
#pd{

	margin-top: 2%;
	margin-left: 35%;
}
span{
  margin-left: 60%;
  
}
/*Sign up button */
.SignIn2{
	
	margin-left: 10%;
  width: 80%;
border:0px solid #C9C9C9;
-webkit-border-radius: 8px; 
-moz-border-radius: 8px;
border-radius: 8px;
font-size:19px;
font-family:arial; 
padding: 8px 8px 8px 8px; 
text-decoration:none; 
display:inline-block; 
color: white;
 background-color: #333333; 
 background-image: -webkit-gradient(linear, left top, left bottom, from(#727171), to(#1E1A1A));
 background-image: -webkit-linear-gradient(top, #727171, #1E1A1A);
 background-image: -moz-linear-gradient(top, #727171, #1E1A1A);
 background-image: -ms-linear-gradient(top, #727171, #1E1A1A);
 background-image: -o-linear-gradient(top, #727171, #1E1A1A);
 background-image: linear-gradient(to bottom, #727171, #1E1A1A);
}
.SignIn2:hover{
color: black;
	margin-left: 0%;
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

 background-color: #333333; 
 background-image: -webkit-gradient(linear, left top, left bottom, from(#228DC3), to(#06496A));
 background-image: -webkit-linear-gradient(top, #228DC3, #06496A);
 background-image: -moz-linear-gradient(top, #228DC3, #06496A);
 background-image: -ms-linear-gradient(top, #228DC3, #06496A);
 background-image: -o-linear-gradient(top, #228DC3, #06496A);
 background-image: linear-gradient(to bottom, #228DC3, #06496A);
}
/*for acc button's */
.SignIn3{
margin-left: 45%;
width: 15%;
border:0px solid #C9C9C9;
-webkit-border-radius: 8px; 
-moz-border-radius: 8px;
border-radius: 8px;
font-size:19px;
font-family:arial; 
padding: 8px 8px 8px 8px; 
text-decoration:none; 
display:inline-block; 
color: white;
 background-color: #333333; 
 background-image: -webkit-gradient(linear, left top, left bottom, from(#727171), to(#1E1A1A));
 background-image: -webkit-linear-gradient(top, #727171, #1E1A1A);
 background-image: -moz-linear-gradient(top, #727171, #1E1A1A);
 background-image: -ms-linear-gradient(top, #727171, #1E1A1A);
 background-image: -o-linear-gradient(top, #727171, #1E1A1A);
 background-image: linear-gradient(to bottom, #727171, #1E1A1A);
}
.SignIn3:hover{
color: black;
	margin-left: 45%;
  width: 15%;
border:0px solid #C9C9C9;
-webkit-border-radius: 8px; 
-moz-border-radius: 8px;
border-radius: 8px;
font-size:19px;
font-family:arial; 
padding: 8px 8px 8px 8px; 
text-decoration:none; 
display:inline-block; 

 background-color: #333333; 
 background-image: -webkit-gradient(linear, left top, left bottom, from(#228DC3), to(#06496A));
 background-image: -webkit-linear-gradient(top, #228DC3, #06496A);
 background-image: -moz-linear-gradient(top, #228DC3, #06496A);
 background-image: -ms-linear-gradient(top, #228DC3, #06496A);
 background-image: -o-linear-gradient(top, #228DC3, #06496A);
 background-image: linear-gradient(to bottom, #228DC3, #06496A);
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
#msg{
 color:#cd0a0a;
 margin-left: 10%;
 
 
}
    #headerimg1{
  
 margin-left: 10%;
margin-top: 2%;

}
/* scroll bar effect*/
::-webkit-scrollbar {
    width: 8px;
}
 

::-webkit-scrollbar-track {
    -webkit-box-shadow: inset 0 0 6px rgba(66,65,62,0.4); 
    -webkit-border-radius: 10px;
    border-radius: 10px;
}
 

::-webkit-scrollbar-thumb {
    -webkit-border-radius: 10px;
    border-radius: 10px;
    background: rgba(66,65,62,0.8); 
    -webkit-box-shadow: inset 0 0 6px rgba(66,65,62,0.8); 
}
::-webkit-scrollbar-thumb:window-inactive {
	background: rgba(66,65,62,0.4); 
}
/* scroll bar effect*/
</style>
</head>
<body>
<header>
      <div id="headerimg1">
 <a href="index.jsp" ><img src="home.png"/> </a>
   </div>
      
</header>
    
<form id="signupform1" action="studentRegistration.jsp" name="signup1" method="post"> 
<div id="acc">
<div id="accordion">
 
	<h3>Account Details</h3>
	<div>
		
	    <div id="formalign">
	    <label for="emailid">Email Id</label>                  
	    <input type="email" placeholder="xyz@abc.com" onblur="validatesmail();" class="sutxtfield" name="Username" tabindex="1" required /><span id="smail"></span>
	    <label for="password">Password </label>               
	    <input type="password" name="Password" onKeyup="validatespas();" class="sutxtfield" tabindex="2" required/><span id="spas"></span>  
        <label for="confirmpassword">Confirm Password</label>          
        <input type="password"  tabindex="3" class="sutxtfield" onkeyup="validatescpas();" title="password should match" name="Cpassword" required/><span id="scpas"></span>
       <label for="mob"> Contact No (Mobile)       </label>
        <input type="text" tabindex="4" name="phone"  onkeyup="validatesmob();" class="sutxtfield"    required /><span id="smob"></span>
      
       
        
        </div>
        
     
     </div><!-- content division start signIn-->
	

	<!-- content division end -->
	<h3>Personal Details</h3>
	<div>
	

	   
	    <div id="formalign">
        <label for="firstname">First Name</label>                  
        <input type="text" tabindex="1" onblur="validatesfname()" class="sutxtfield" name="Finame" required/><span id="sfnam"></span>
        <label for="lastname">Last Name</label>                                 
        <input type="text" tabindex="2" onkeyup="validateslname()" class="sutxtfield" name="Laname" required/><span id="slnam"></span>
        <label for="fathername">Father's/Husband Name</label>    
        <input type="text" tabindex="3" onkeyup="validateshname()" class="sutxtfield" name="Guname" required/><span id="shnam"></span>
        <label for="dob">Date-Of-Birth</label>       
        <input type="date" tabindex="4" min="1990-12-01" onkeyup="validatesdob()" max="1994-01-31" class="sutxtfield" placeholder="YYYY-MM-DD"  name="Dob" /><span id="sdob"></span>
        <label for="nationality">nationality</label>    
        <input type="text" tabindex="5" onkeyup="validatesnat()" class="sutxtfield" name="Nationality" required/><span id="snat"></span>
        <label  for="alt"> Alternative E-Mail ID     </label>
	      <input type="email" tabindex="6"  class="sutxtfield" name="Aemail" onkeyup="validatesmail1()" /><span id="smail1"></span>
        <label for="mob"> Contact No        </label>
        <input type="text" tabindex="7" class="sutxtfield" onkeyup="validatesph()" name="Llno" /><span id="sph"></span>
        <br><br><br>
        </div>
        <label for="gen" id="g"> Gender </label>
        <div id="gender"  > 
        <label for="male">Male</label>  
        <input type="radio" tabindex="7" id="male" name="gender">
        <label for="female">Female</label>
        <input type="radio"  tabindex="8" id="female" name="gender">
        <span id="sgen"></span>
         </div>
         

       
        
    </div>
	<h3>Educational Details</h3>
	<div>

	    <div id="formalign">
	    <label id="degree">Degree                    </label>
	    <input id="autocomplete1" tabindex="1" onblur="validatesdeg()" class="sutxtfield" title="type degree" name="Degree" /><span id="sdeg"></span>
        <label for="branch"> Branch                    </label>
        <input id="autocomplete2" tabindex="2" onkeyup="validatesbra()" class="sutxtfield" title="type your Branch" name="Branch" /><span id="sbra"></span>
        <label  for="yoc"> Year Of Completion        </label>
        <input type="text" id="autocomplete3" tabindex="3" onkeyup="validatesyoc()"  maxlength="4"   class="sutxtfield" name="Year" /><span id="syoc"></span>
        <label for="cgpa">CGPA</label>
        <input type="text" class="sutxtfield" tabindex="4" onkeyup="validatescgpa()" name="cgpa" maxlength="5"  /><span id="scgpa"></span>
        <label for="predegree">Pre Degree Percentages    </label>
        </div>
        <div id="pd">
        <input type="text" class="sutxtfield" tabindex="5" onkeyup="validatesten()" placeholder="Tenth" size="5px" maxlength="5" name="Tenth" /><span id="sten"></span>
        <input type="text" class="sutxtfield" tabindex="6" placeholder="Twelfth" onkeyup="validatestwe()" size="6px" maxlength="5" name="Twelfth"/><span id="stwe"></span>
        <input type="text" class="sutxtfield" tabindex="7" placeholder="Diploma" size="7px" maxlength="5" name="Diploma" />
        
        </div><br>
        

	</div>
	<h3>Accolades and Awards</h3>
	<div>

	<div id="formalign">
	<label for="interests"> Area Of Interest          </label>      
    <textarea name="Interests" class="sutxtfield" tabindex="1"  rows="4" cols="38"></textarea>
    <label for="achievements">Special Achievements</label>
    <textarea name="Achievements" class="sutxtfield" tabindex="2" rows="4" cols="38"></textarea>
    </div>
    

	</div>
	<h3>Contact Details</h3>
	<div>

         <div id="formalign">
 
        
        <label for="address1"> Address-Line1             </label>
        <input type="text" class="sutxtfield" onblur="validatesadd1()"  tabindex="1" placeholder="H-No.,StreetName" name="Address1"/><span id="sadd1"></span>
        <label for="address2"> Address-Line2             </label>
        <input type="text" class="sutxtfield" tabindex="2" placeholder="Secondary St.Name" name="Address2" />
        <label for="address3"> Address-Line3             </label>
        <input type="text" class="sutxtfield" onkeyup="validatesadd2()" tabindex="3"  placeholder="Area Name" name="Address3"  /><span id="sadd2"></span>
        <label for="city"> City                      </label>
        <input type="text"  class="sutxtfield" onkeyup="validatescity()" tabindex="4" name="City" /><span id="scity"></span>
        <label for="state"> State                     </label>
        <input type="text"  class="sutxtfield" tabindex="5" onkeyup="validatesst()" name="State"  /><span id="sst"></span>            
        <label for="country"> Country                   </label>
        <input type="text"  class="sutxtfield" tabindex="6" onkeyup="validatesco()" name="Country" /><span id="sco"></span>
        <label for="pincode">Pincode                  </label>
        <input type="text"  class="sutxtfield" tabindex="7" onkeyup="validatespin()" name="Pincode" /><span id="spin"></span><br><br>
                     </div>
    

                     
	</div>

   </div>

</div>
  </div>
                        
  <div id="signupbtn"><input type="submit" onsubmit="return validateall();" class="SignIn3" value="SignUp" /></div>
  <span id="errormsgs"></span>
</form>               
</body>
</html>