<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login </title>
<link href="css/structure.css" rel="stylesheet">
<link href="css/form.css" rel="stylesheet">

<!-- JavaScript -->
<script src="scripts/wufoo.js"></script>
</head>
<body id="public">
<div id="container" class="ltr">
<form id="form2" name="form2" class="wufoo topLabel page" autocomplete="off"  method="post" novalidate
action="login">

<header id="header" class="info">
<h2>Nixal Workshop</h2>
<div></div>
</header>

<ul>



<li id="foli1" class="notranslate      ">
<label class="desc" id="title1" for="Field1">
Email-id
<span id="req_1" class="req">*</span>
</label>
<span>
<input id="Field1" name="Field1" type="text" class="field text fn" value="" maxlength="255" tabindex="1" required />

</span>
<p class="instruct" id="instruct1"><small>Enter Your Email id</small></p>
</li>
<li id="foli6" class="notranslate      ">
<label class="desc" id="title6" for="Field6">
Password
</label>
<div>
<input id="Field6" class="field text medium" name="Field6" tabindex="2" type="password" maxlength="255" value="" /> 
</div>
<p class="instruct" id="instruct6"><small>Enter Password</small></p>
</li> <li class="buttons ">
<div>

                    <input id="saveForm" name="saveForm" class="btTxt submit" 
    type="submit" value="Submit" 
 />
 
 </div>
 </li>
 <li>
 
If not registered register yourself Now ! 

<div>
<br>
	<input type='button' onclick="window.location.href='index.jsp'" value='Register'/>
</div>

</li>
 

</ul>
</form> 

</div><!--container-->




</body>
</html>