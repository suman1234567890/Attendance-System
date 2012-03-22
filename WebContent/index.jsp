<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<title>
Nixal Workshop
</title>

<!-- Meta Tags -->
<meta charset="utf-8">


<!-- CSS -->
<link href="css/structure.css" rel="stylesheet">
<link href="css/form.css" rel="stylesheet">

<!-- JavaScript -->
<script src="scripts/wufoo.js"></script>

<!--[if lt IE 10]>
<script src="https://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
</head>

<body id="public">
<div id="container" class="ltr">


<form id="form2" name="form2" class="wufoo topLabel page" autocomplete="off"  method="post" novalidate
action="register">

<header id="header" class="info">
<h2>Nixal Workshop</h2>
<div></div>
</header>

<ul>

<li id="foli1" class="notranslate      ">
<label class="desc" id="title1" for="Field1">
Name
<span id="req_1" class="req">*</span>
</label>
<span>
<input id="Field1" name="Field1" type="text" class="field text fn" value="" size="8" tabindex="1" required />
<label for="Field1">First</label>
</span>
<span>
<input id="Field2" name="Field2" type="text" class="field text ln" value="" size="14" tabindex="2" required />
<label for="Field2">Last</label>
</span>
<p class="instruct" id="instruct1"><small>Enter Your Name</small></p>
</li>
<li id="foli6" class="notranslate      ">
<label class="desc" id="title6" for="Field6">
Phone Number
</label>
<div>
<input id="Field6" class="field text medium" name="Field6" tabindex="3" type="tel" maxlength="255" value="" /> 
</div>
<p class="instruct" id="instruct6"><small>Enter Your Phone Number</small></p>
</li><li id="foli7" class="notranslate      ">
<label class="desc" id="title7" for="Field7">
WBUT Roll Number
</label>
<div>
<input id="Field7" name="Field7" type="text" class="field text medium" value="" maxlength="255" tabindex="4" onkeyup="" />
</div>
</li><li id="foli11" class="notranslate       ">
<label class="desc" id="title11" for="Field11">
Year
</label>
<div>
<select id="Field11" name="Field11" class="field select medium" tabindex="5" > 
<option value="First" selected="selected">
First
</option>
<option value="Second" >
Second
</option>
<option value="Third" >
Third
</option>
<option value="fourth" >
fourth
</option>
</select>
</div>
</li>
<li id="foli5" class="notranslate      ">
<label class="desc" id="title5" for="Field5">
Email
</label>
<div>
<input id="Field5" name="Field5" type="email" spellcheck="false" class="field text medium" value="" maxlength="255" tabindex="6" /> 
</div>
<p class="instruct" id="instruct5"><small>Enter Your Email Address.</small></p>
</li>
<li id="foli8" class="notranslate      ">
<label class="desc" id="title8" for="Field8">
Password
</label>
<div>
<input id="Field8" name="Field8" type="password" class="field text medium" value="" maxlength="255" tabindex="7" onkeyup="" />
</div>
</li><li id="foli9" class="notranslate      ">
<label class="desc" id="title9" for="Field9">
Confirm password
</label>
<div>
<input id="Field9" name="Field9" type="password" class="field text medium" value="" maxlength="255" tabindex="8" onkeyup="" />
</div>
</li><li id="foli12" class="notranslate       ">
<label class="desc" id="title12" for="Field12">
Select a Choice
</label>
<div>
<select id="Field12" name="Field12" class="field select medium" tabindex="9" > 
<option value="CSE" selected="selected">
CSE
</option>
<option value="IT" >
IT
</option>
<option value="Others" >
Others
</option>
</select>
</div>
</li> <li class="buttons ">
<div>

                    <input id="saveForm" name="saveForm" class="btTxt submit" 
    type="submit" value="Submit" 
 /></div>
</li>
<% if(request.getParameter("message")!=null){%>

<li class="show">
<label for="comment"><%=request.getParameter("message").toString() %></label>


</li>
<%} %>
</ul>
</form> 

</div><!--container-->


</body>
</html>