<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="database.dbConnect"%>
<html>
<head>
<style>
<!--
body {
	background-color: #FFFFFF;
}
.style2 {font-family: "Times New Roman", Times, serif; font-weight: bold; font-size: 36px; color: #F4AE0B;}
.style3 {
	font-size: 24px;
	color: #000099;
}
.style5 {font-size: 24px; color: #FF0000; }
.style6 {
	color: #C10000;
	font-size: 24px;
}
-->
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to Nixal Workshop</title>
</head>
<body>
<%
 HttpSession hs= request.getSession();
	if(hs.getAttribute("uid")==null)
	{
		response.sendRedirect("../login.jsp");
	
	}
	else
	{
		dbConnect db= new dbConnect();
		db.insertQueryString("insert into attlogin values("+hs.getAttribute("uid").toString()+",current_date,current_time)");
	}
%>
<input type='button' onClick="window.location.href='../logout'" value='Logout'/>

<div>
<div align="center" class="style2">N I X A L </div>
 <p align="center"><img src="tux.jpg" width="300" height="300" /></p>
 <p align="left"><em><span class="style3">Congratulations ! You have successfully registered for NIXAL !</span></em></p>
 <p align="left" class="style3">Take a look at today's schedule.</p>
  <p align="left" class="style5">Date : 22nd March,2012</p>
 <table align="center" width="1000" border="1">
   <tr>
     <td width="164" height="54"><div align="center"><span class="style5">Time</span></div></td>
     <td width="458"><div align="center" class="style5">Topic</div></td>
     <td width="356" class="style6"><div align="center" class="style5">Speaker</div></td>
   </tr>
   <tr>
     <td height="77"><div align="center"><span class="style3">2:30PM to 3:15PM </span></div></td>
     <td class="style3"><div align="center">From Learning to Earning-<br>
       or how to build you career around FOSS</div></td>
     <td class="style3"><div align="center">Indranil Das Gupta<br>
     </div></td>
   </tr>
   <tr>
     <td height="76"><div align="center"><span class="style3">3:15PM to 3:30PM </span></div></td>
     <td><div align="center" class="style3">Discussion </div></td>
     <td><div align="center" class="style3">Indranil Das Gupta</div></td>
   </tr>
   <tr>
     <td height="91"><div align="center"><span class="style3">3:30PM to 5:30PM </span></div></td>
     <td><div align="center" class="style3">Qt Workshop </div></td>
     <td><div align="center" class="style3">Tirtha Chatterjee</div></td>
   </tr>
 </table>
 <p align="left" class="style5">&nbsp;</p>
 </div>
</body>
</html>