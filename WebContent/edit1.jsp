<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="model.Daily" %>
    <%@page import="model.DailyDAO" %>
    <%@page import="model.Driver" %>
    <%@page import="model.DriverDAO" %>
    <%@page import="model.Bus" %>
    <%@page import="model.BusDAO" %>
    <%@page import="model.Route" %>
    <%@page import="model.RouteDAO" %>
    <%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit</title>
<style>

#slt{
		width: 100px;
	}
	#slt option{
		width: 10px;
	}

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
   background: #00FF7F;
   float: left;
   margin-left: 200px;

 }

 #right{
   height: 380px;
   width: 450px;
   background: #00FF7F;
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
   background: #00FF7F;
 }
 .body{
 	background: #00FF7F;
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
 <div class="body" bgcolor="#00FF7F">
 
 <form action="Edit1Servlet" method="post" bgcolor="#00FF7F">
 <table border="2" cellspacing="3" cellpadding="3" align="center"  width="400" bgcolor="#ececec">
 <tr>
 <th>Bus Number</th><th>Driver Name</th><th>Checkpoint</th><th>Shift</th>
 </tr>
 
 <%
 int a = Integer.parseInt(request.getParameter("x"));
   DailyDAO d = new DailyDAO();
   List<Daily> mylist;
   mylist=d.search(a);
   
   DriverDAO d1 = new DriverDAO();
   List<Driver> mylistd;
   mylistd=d1.searchall();
   
   RouteDAO d3 = new RouteDAO();
   List<Route> mylistr;
   mylistr=d3.searchall();

 for(Daily d2 : mylist) {
	   
	   %>
	   <tr>
	   <th><input type="text" readonly value="<%out.println(d2.getB_no()); %>" name="b1"></th>
	   <th><select name="d1"><%for(Driver c1 : mylistd){%><option><%=c1.getD_name()%></option><%}%></select></th>
	   <th><select name="c1" id="slt"><%for(Route c3 : mylistr){%><option><%=c3.getCheckpoints()%></option><%}%></select></th>
	   <th><select name="s1"><option>1</option><option>2</option></select></th>
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
           <span><a href="Menu.jsp">Menu</a>
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