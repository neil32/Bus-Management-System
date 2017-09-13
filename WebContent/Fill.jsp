<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<title>Fill Page</title>

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
      height: 850px;

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
     height: 500px;
     background: #00FF7F;
     width: 1350px;
   }
     #left{
       height: 400px;
       width: 425px;
       background: #00FF7F;
       float: left;

     }
     #center{
       height: 490px;
       width: 500px;
       background: #ececec;
       text-align: center;
         border-radius: 5px;
       box-shadow: 5px 3px grey;
        float: left;
     }
     #right{
       height: 400px;
       width: 425px;
       background: #00FF7F;
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
      text-align: bottom;

    }
   body{
     margin: 0;
   }


table{
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
input[type=text]{
  font-size: 12px;
  outline: none;
    border-radius: 4px;
    background-color: white;
   background-image: url('user.svg');
   background-position: 10px 10px;
   background-repeat: no-repeat;
   padding: 10px 20px 12px 40px;

}
input[type=password]{
  font-size: 12px;
  outline: none;
    border-radius: 4px;
    background-color: white;
   background-image: url('lock.png');
   background-position: 10px 10px;
   background-repeat: no-repeat;
   padding: 10px 20px 12px 40px;
}
input[type=text]:focus {
    border: 2px solid green;

}
input[type=password]:focus{
  border: 2px solid green;
}

input[type=submit]:focus{
  border: 2px solid green;

}
input[type=submit]:focus:hover {
    background-color: #4CAF50; /* Green */
    color: white;
}

   </style>
</head>
<body>
<%
 
   DriverDAO d1 = new DriverDAO();
   List<Driver> mylistd;
   mylistd=d1.searchall();
   
   BusDAO d2 = new BusDAO();
   List<Bus> mylistb;
   mylistb=d2.searchall();
   
   RouteDAO d3 = new RouteDAO();
   List<Route> mylistr;
   mylistr=d3.searchall();
   
   %>
<form action="FillServlet" method="post">
   <div class="maindiv">

     <div class="header">
     <img src="demo2.jpg"/>
     </div>
     <div class="mainbody">
     <div id="left">
      </div>
     <div id="center">
       <h1>Fill Data</h1>
       <hr>
       <table cellspacing="30" align="center">
        <tr>
          <th>check</th>
          <th>Bus No</th>
          <th>Driver</th>
          <th>Shift</th>
          <th>Checkpoints</th>
        </tr>
        <tr>
           <th><input type="checkbox" name="ck1"></th>
           <th><select name="b1"><%for(Bus c2 : mylistb){%><option><%=c2.getB_no()%></option><%}%></select></th>
           <th><select name="d1"><%for(Driver c1 : mylistd){%><option><%=c1.getD_name()%></option><%}%></select></th>
           <th><select name="s1"><option>1</option><option>2</option></select></th>
           <th><select name="c1" id="slt"><%for(Route c3 : mylistr){%><option><%=c3.getCheckpoints()%></option><%}%></select></th>
        </tr>
        <tr>
           <th><input type="checkbox" name="ck2"></th>
           <th><select name="b2"><%for(Bus c2 : mylistb){%><option><%=c2.getB_no()%></option><%}%></select></th>
           <th><select name="d2"><%for(Driver c1 : mylistd){%><option><%=c1.getD_name()%></option><%}%></select></th>
           <th><select name="s2"><option>1</option><option>2</option></select></th>
           <th><select name="c2" id="slt"><%for(Route c3 : mylistr){%><option><%=c3.getCheckpoints()%></option><%}%></select></th>
        </tr>
        <tr>
           <th><input type="checkbox" name="ck3"></th>
           <th><select name="b3"><%for(Bus c2 : mylistb){%><option><%=c2.getB_no()%></option><%}%></select></th>
           <th><select name="d3"><%for(Driver c1 : mylistd){%><option><%=c1.getD_name()%></option><%}%></select></th>
           <th><select name="s3"><option>1</option><option>2</option></select></th>
           <th><select name="c3" id="slt"><%for(Route c3 : mylistr){%><option><%=c3.getCheckpoints()%></option><%}%></select></th>
        </tr>
        <tr>
           <th><input type="checkbox" name="ck4"></th>
           <th><select name="b4"><%for(Bus c2 : mylistb){%><option><%=c2.getB_no()%></option><%}%></select></th>
           <th><select name="d4"><%for(Driver c1 : mylistd){%><option><%=c1.getD_name()%></option><%}%></select></th>
           <th><select name="s4"><option>1</option><option>2</option></select></th>
           <th><select name="c4" id="slt"><%for(Route c3 : mylistr){%><option><%=c3.getCheckpoints()%></option><%}%></select></th>
        </tr>
        <tr>
           <th colspan="3"><input type="submit" value="Submit"></th>
           <th colspan="2"><input type="reset" value="Reset"></th>
        </tr>
       </table>
     </div>
     <div id="right"></div>
     </div>
     <div class="footer">
     <a href="Menu.jsp">Menu</a><hr><br>
       <span>Powered By : Sushila Devi Bansal College Of Technology , Indore(M.P.)</span>
     </div>


   </div>
 </form>

</body>
</html>