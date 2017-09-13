<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
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
  background-color: #32ff32;
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
    background-color: #4CAF50; /* Green */
    color: white;
}

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
      </div>
     <div id="center">
       <h1>Login Page</h1>
       <hr>
       <table cellspacing="30" align="center" >
        <tr>
          <th>Username</th>
          <th><input type="text" name="id" required/></th>
        </tr>
        <tr>
          <th>Password</th>
          <th><input type="password" name="pwd" required/></th>
        </tr>
        <tr>
          <th>Login Type</th>
          <th><select  name="type"><option value="Student">Student</option><option value="Employee">Employee</option><option value="Management">Management</option><option value="Admin">Admin</option></th>
        </tr>
        <tr>
          <th></th>
          <th align="left"><input type="submit" value="Submit"/ ></th>
        </tr>
       </table>
     </div>
     <div id="right"></div>
     </div>
     <div class="footer">
       <span>Powered By : Sushila Devi Bansal College Of Technology , Indore(M.P.)</span>
     </div>


   </div>
 </form>

</body>
</html>