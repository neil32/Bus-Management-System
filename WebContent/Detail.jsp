<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="model.Bus" %>
    <%@page import="model.BusDAO" %>
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
<%
 
   BusDAO d = new BusDAO();
   List<Bus> mylist;
   mylist=d.searchall();
   
   %>

<div class="maindiv">
   <div class="header">
     <img src="demo2.jpg"/>
   </div>
   <div class="mainbody" >
      <div id="left">
        <h1>Search By Destination</h1>
        <hr>
        <form action="Search1" method="post">
        <table class="table" cellspacing="30" align="center">
         <tr>
           <th>Bus Shift</th>
           <th><select name="shift"><option>1</option><option>2</option></th>
         </tr>
         <tr>
           <th>Destination</th>
           <th><input id="dest" type="text" name="dst" required></th>
         </tr>
         <tr>
           <th></th>
           <th align="left"><input type="submit" value="Submit"/ ></th>
         </tr>

        </table>
           <hr>
      </form>

      <form action="DetailServlet" method="post">

       <table align="center">
        <tr>
             <th></th>
             <th align="left"><input id="searchall" type="submit" value="Search All"/></th>
           </tr>
        </table>
      </form>
      </div>
      <div id="right">
        <h1>Search By Bus Number</h1>
        <hr>
         <form action="Search2" method="post">
        <table  class="table" cellspacing="30" align="center">
          <tr>
            <th>Bus Shift</th>
            <th><select name="shift"><option>1</option><option>2</option></select></th>
          </tr>
         <tr>
           <th>Bus Number</th>
           <th><select name="b"><%for(Bus d2 : mylist){%><option><%=d2.getB_no()%></option><%} %></select></th>
         </tr>
         <tr>
           <th></th>
           <th align="left"><input type="submit" value="Submit"></th>
         </tr>
        </table>
        <hr>
      </form>
      <form action="DetailServlet" method="post">
       <table align="center">
        <tr>
             <th></th>
             <th align="left"><input id="searchall"  type="submit" value="Search All"/></th>
           </tr>
        </table>
      </form>
      </div>
    </div>
   <div class="footer">
     <span>Powered By : Sushila Devi Bansal College Of Technology , Indore(M.P.)</span>
   </div>

</div>
</body>
</html>