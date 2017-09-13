<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Menu Page</title>
<style>
   img{
     margin: 0px;
     height: 140px;
     width: 1350px;
   }
   .maindiv{
      height: 750px;

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
     height: 400px;
     background: #00FF7F;
     width: 1350px;
   }
     #left{
       height: 400px;
       width: 450px;
       background: #00FF7F;
       float: left;

     }
     #center{
       height: 380px;
       width: 450px;
       background: #ececec;
       text-align: center;
         border-radius: 5px;
       box-shadow: 5px 3px grey;
        float: left;
     }
     #right{
       height: 400px;
       width: 450px;
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
select{
  width: 215px;
  font-size: 12px;
  outline: none;
    border-radius: 4px;
    background-color: white;
padding: 12px 0px 12px 40px;

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
  background-color: #00FF7F;
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
select:focus{
   border: 2px solid green;
}
input[type=submit]:focus{
  border: 2px solid green;

}
input[type=submit]:focus:hover {
    background-color: #00FF7F; /* Green */
    color: white;
}

button {

    background-color: #00ff00; /* Green */
    border: none;
    color: white;
    padding: 15px 80px;
    text-align: center;
    margin: 7px;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
}
#fill {
    background-color: #00FF7F;
    color: white;
    border: 2px solid #00FF7F;
}

#fill:hover {
    background-color: white;
    color: #00FF7F;
     box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
}
#edit:hover {
    background-color: white;
    color: #00FF7F;
     box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
}
#reset:hover {
    background-color: white;
    color: #00FF7F;
     box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
}
#detail:hover {
    background-color: white;
    color: #00FF7F;
     box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
}
#reset{
  background-color: #00FF7F;
  color: white;
  border: 2px solid #00FF7F;
  padding: 15px 68px;
}
#edit{
  background-color: #00FF7F;
  color: white;
  border: 2px solid #00FF7F;
  padding: 15px 75px;
}
#detail{
  background-color: #00FF7F;
  color: white;
  border: 2px solid #00FF7F;
    padding: 15px 83px;

}
   </style>
</head>
<body>
  <div class="maindiv">

     <div class="header">
     <img src="demo2.jpg"/>
     </div>
     <div class="mainbody">
     <div id="left">
      </div>
     <div id="center">
       <h1>Select Option</h1>
       <hr>
       <table  align="center" cellspacing="3">
          <tr>
            <th><button onclick="location.href = 'Fill.jsp'"  id="fill">New Schedule</button></th>

          </tr>

          <tr>
            <th><button onclick="location.href = 'Edit.jsp'"  id="edit">Edit Schedule</button></th>
          </tr>
          <tr>
            <th><form action="Reset" method="post">
    	         <input type="submit" value="Reset Schedule" id="reset">
             </form></th>
          </tr>
          <tr>
            <th><form action="DetailServlet1" method="post">
    	<input type="submit" value="Detail" id="detail">
    </form></th>
          </tr>

       </table>

     </div>
     <div id="right"></div>
     </div>
     <div class="footer">
       <span>Powered By : Sushila Devi Bansal College Of Technology , Indore(M.P.)</span>
     </div>


   </div>

</body>
</html>