<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="model.Bus" %>
    <%@page import="model.Driver" %>
    <%@page import="model.Route" %>
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
      height: 950px;

   }
   .main{
     height: 760px;
   }
   .header{
     margin: 0px;
     height: 200px;
     background: #00FF7F;

   }
   .mainbody{
     height: 600px;
     background: #00FF7F;
     width: 1350px;
   }
     #left{
       height: 600px;
       width: 450px;
       background: #00FF7F;
       float: left;
        text-align: center;
     }
     #center{
       height: 580px;
       width: 450px;
       background: #00FF7F;
       text-align: center;
       float: left;
     }
     #right{
       height: 600px;
       width: 450px;
       background: #00FF7F;
       float: left;
        text-align: center;
     }
   .footer{
     margin: 0;
     height: 150px;
     width: 1350px;
     text-align: center;
     background: #00FF7F;
   }
   #footer1{
     height: 75px;
   }
   #footer2{
     height: 75px;
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

table{
  background: #DCDCDC;
  border: 0;

}
input{
    border-radius: 4px;
    background-color: white;

}
input[type=submit]{
  text-align: center;
  margin: 0px 0px;
  background-color: #4CAF50;
    border: none;
    color: white;
    padding: 10px 20px;

}
hr{
  margin: 0px;
  color: darkgreen;
}
button {

    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 15px 80px;
    text-align: center;
    margin: 7px;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;}
   </style>
</head>
<body>

<form action="Log" method="post">
   <div class="maindiv">

     <div class="header">
     <img src="demo2.jpg"/>
     </div>
     <div class="mainbody">
     <div id="left">
       <h1>Bus Info</h1>
       <table border="2" cellspacing="3" cellpadding="3" align="center"  width="200" bgcolor="#ececec">
 <tr>
 <th>Bus Number</th><th>Number Plate</th>
 </tr>
 
 <%
   Bus d = new Bus();
   List<Bus> mylist;
   
   mylist=(List<Bus>)request.getAttribute("bus");

   for(Bus d2 : mylist) {
	   
	   %>
	   <tr>
	   <th><%out.println(d2.getB_no()); %></th>
	   <th><% out.println(d2.getNumber_plate()); %></th>
	   
	   </tr>
	   <% 
		}
	   %>
 
 
 </table>
      </div>
     <div id="center">
       <h1>Driver Info</h1>
       <table border="2" cellspacing="3" cellpadding="3" align="center"  width="200" bgcolor="#DCDCDC">
 <tr>
 <th>Driver Id</th><th>Driver Name</th>
 </tr>
 
 <%
   Driver b = new Driver();
   List<Driver> mylist1;
  
   mylist1=(List<Driver>)request.getAttribute("driver");

   for(Driver b2 : mylist1) {
	   
	   %>
	   <tr>
	   <th><%out.println(b2.getD_id()); %></th>
	   <th><% out.println(b2.getD_name()); %></th>
	   
	   </tr>
	   <% 
		}
	   %>
 
 
 </table>
     </div>
     <div id="right">
       <h1>Route Info</h1>
       <table border="2" cellspacing="3" cellpadding="3" align="center"  width="200" bgcolor="#DCDCDC">
 <tr>
 <th>Route Id</th><th>Checkpoints</th>
 </tr>
 
 <%
   Route r = new Route();
   List<Route> mylist2;
  
   mylist2=(List<Route>)request.getAttribute("route");

   for(Route r2 : mylist2) {
	   
	   %>
	   <tr>
	   <th><%out.println(r2.getRoute_id()); %></th>
	   <th><% out.println(r2.getCheckpoints()); %></th>
	   
	   </tr>
	   <% 
		}
	   %>
 
 
 </table>
     </div>
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
 </form>

</body>
</html>