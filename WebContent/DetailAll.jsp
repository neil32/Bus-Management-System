<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="model.Daily" %>
    <%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Detail Page</title>
<style>
 img{
  margin: 0px;
  height: 140px;
  width: 1350px;
 }
.maindiv{
   height: 750px;
   width: 1350px;
}
.header{
   margin: 0px;
   height: 200px;
   background: red;
 }
 .body{
   height: 400px;
   background: #00FF7F;
   width: 1350px;
 }
.footer{
   margin: 0;
   height: 150px;
   width: 1350px;
   text-align: center;
   background: #00FF7F;
 }
 body{
   margin: 0;
 }
 span{
   color: darkgreen;
}
</style>
</head>
<body>

<div class="maindiv">
 <div class="header">
 <img src="demo2.jpg">
 </div>
 <div class="body">
 
 <table border="2" cellspacing="3" cellpadding="3" align="center"  width="400" bgcolor="#ececec">
 <tr>
 <th>Bus Number</th><th>Driver Name</th><th>Checkpoint</th><th>Shift</th>
 </tr>
 
 <%
   Daily d = new Daily();
   List<Daily> mylist;
   Object[] b = null;
   mylist=(List<Daily>)request.getAttribute("list");

   for(Daily d2 : mylist) {
	   
	   %>
	   <tr>
	   <th><%out.println(d2.getB_no()); %></th>
	   <th><% out.println(d2.getD_name()); %></th>
	   <th><% out.println(d2.getCheckpoint());%></th>
	   <th><% out.println(d2.getShift());%></th>
	   </tr>
	   <% 
		}
	   %>
 
 
 </table>
 
 
 
 
 </div>
 <div class="footer">
 <a href="Detail.jsp">Details</a><hr><br>
 <span>Powered By : Sushila Devi Bansal College Of Technology , Indore(M.P.)</span>
 </div>






</div>

</body>
</html>