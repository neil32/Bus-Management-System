<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="model.Bus" %>
    <%@page import="model.BusDAO" %>
    <%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
   background: #00FF7F;

 }
 .mainbody{
   height: 400px;
   background: #00FF7F;
   width: 1350px;
 }
 #left{
   height: 380px;
   width: 450px;
   background: #ececec;
   float: left;
   margin-left: 200px;

 }

 #right{
   height: 380px;
   width: 450px;
   background: #ececec;
   margin-left: 25px;
   float: left;
 }

 .footer{
   margin: 0;
   height: 150px;
   width: 1350px;
   text-align: center;
   background: #00FF7F;
 }
 span{
   color: darkgreen;
}
 body{
   margin: 0;
 }

 select{
   width: 173px;
 }

 .table{
   margin-top: 3px;
 }

 input[type=submit]{
   text-align: center;
   margin: 0px 5px;
   background-color: #4CAF50;
     border: none;
     color: white;
     padding: 10px 20px;

 }
 h1{
   text-align: center;
 }
#searchall{
  text-align: center;
  margin-left: 0px;
  background-color: #4CAF50;
    border: none;
    color: white;
    padding: 10px 10px;

}
hr1{
  margin-bottom: 50px;
}
select:focus{
   border: 2px solid green;
}
select{
  width: 200px;
  font-size: 12px;
  outline: none;
    border-radius: 4px;
    background-color: white;
padding: 4px 0px 2px 20px;

}
#dest{
  width: 200px;
}
</style>
</head>
<body>
<div class="maindiv">
 <div class="header">
 <img src="demo2.jpg">
 </div>
 <div class="body">
 
 <form action="EditBusServlet" method="post">
 <table border="2" cellspacing="3" cellpadding="3" align="center"  width="400" bgcolor="#ececec">
 <tr>
 <th>Bus Number</th><th>Number Plate</th>
 </tr>
 
 <%
 int a = Integer.parseInt(request.getParameter("x"));
   BusDAO d = new BusDAO();
   List<Bus> mylist;
   mylist=d.search(a);

 for(Bus d2 : mylist) {
	   
	   %>
	   <tr>
	   <th><input type="text" readonly value="<%out.println(d2.getB_no()); %>" name="b1"></th>
	   <th><input type="text" value="<%out.println(d2.getNumber_plate()); %>" name="n1"></th>
	   <th><input type="submit" value="Submit"></th>
	   </tr>
	   <% 
		}
	   %>
 
 </table>
 </form>
 
 </div>
 <div class="footer">
        <div id="footer1">
           <hr>
           <span><a href="Menu1.jsp">Menu</a>
             </span>
        </div>
        <div id="footer2">
          <hr><br/>
            <span>Powered By : Sushila Devi Bansal College Of Technology , Indore(M.P.)</span>
        </div>

     </div>

</div>

</body>
</html>