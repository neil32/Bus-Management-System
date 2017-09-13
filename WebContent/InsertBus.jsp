<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert Bus Page</title>
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
       width: 425px;
       background: #00FF7F;
       float: left;

     }
     #center{
       height: 590px;
       width: 500px;
       background: #ececec;
       text-align: center;
         border-radius: 5px;
       box-shadow: 5px 3px grey;
        float: left;
     }
     #right{
       height: 600px;
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
input[type=reset]{
  text-align: center;
  margin: 0px 0px;
  background-color: #4CAF50;
    border: none;
    color: white;
    padding: 10px 20px;

}


input[type=submit]:focus{
  border: 2px solid green;

}
input[type=submit]:focus:hover {
    background-color: #4CAF50; /* Green */
    color: white;
}
input[type=reset]:focus{
  border: 2px solid green;

}
input[type=reset]:focus:hover {
    background-color: #4CAF50; /* Green */
    color: white;
}
hr{margin: 0px;}
   </style>
</head>
<body>

<form action="InsertBusServlet" method="post">
   <div class="maindiv">

     <div class="header">
     <img src="demo2.jpg"/>
     </div>
     <div class="mainbody">
     <div id="left">
      </div>
     <div id="center">
       <h1>Fill Bus Deails</h1>
       <hr>
       <table cellspacing="30" align="center">
        <tr>
          <th>check</th>
          <th>Bus No</th>
          <th>No Plate</th>

        </tr>
        <tr>
           <th><input type="checkbox" name="ck1"></th>
           <th><input type="text" name="b1"></th>
           <th><input type="text" name="n1"></th>
           
        </tr>
        <tr>
          <th><input type="checkbox" name="ck2"></th>
          <th><input type="text" name="b2"></th>
          <th><input type="text" name="n2"></th>
          
        </tr>
        <tr>
          <th><input type="checkbox" name="ck3"></th>
          <th><input type="text" name="b3"></th>
          <th><input type="text" name="n3"></th>
          
        </tr>
        <tr>
          <th><input type="checkbox" name="ck4"></th>
          <th><input type="text" name="b4"></th>
          <th><input type="text" name="n4"></th>
          
        </tr>
        <tr>
          <th><input type="checkbox" name="ck5"></th>
          <th><input type="text" name="b5"></th>
          <th><input type="text" name="n5"></th>
          
        </tr>
        <tr>
           <th colspan="3"><input type="submit" value="Submit"></th>

        </tr>
        <tr>
          <th colspan="3"><input type="reset" value="Reset"></th>
        </tr>
       </table>
     </div>
     <div id="right"></div>
     </div>
     <div class="footer">
       <hr><br/>
       <a href="Menu1.jsp">Back</a><hr><br/>
       <span>Powered By : Sushila Devi Bansal College Of Technology , Indore(M.P.)</span>
     </div>


   </div>
 </form>

</body>
</html>