<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
    background: #ececec;

  }
  .mainbody{
    height: 400px;
    background: #00FF7F;
    width: 1350px;
  }
#subheader{
  height: 60px;
  background: #ececec;
  width: 1350px;
  margin: 0;
  text-align: center;

}
#upleft{

    margin: 0px;
    float: left;
    background: #00FF7F;
      height: 100px;
      width: 675px;
}
#upright{

    margin: 0px;
    float: left;
    background: #00FF7F;
      height: 100px;
      width: 675px;
}
#mid{
  height: 100px;
margin: 0px;
  width: 1350px;
background: #00FF7F;
float: left;
}
#bottom{
    height: 100px;
    margin: 0px;
      width: 1350px;
    background: #00FF7F;
    float: left;
}

#bottom2{
    height: 100px;
    margin: 0px;
      width: 1350px;
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
  }
  body{
    margin: 0;
  }
  #submit1{
    text-align: center;
    margin: 40px 350px;
    background-color: white;
      border: none;
      color: #4CAF50;
      padding: 10px 80px;


  }

  #submit2{
    text-align: center;
    margin: 40px 112px;

    background-color: white;
      border: none;
      color: #4CAF50;
      padding: 10px 80px;


  }

  #submit3{
    text-align: center;
    margin: 40px 350px;
    font-color: #4CAF50;
    background-color: white;
      border: none;
      color: #4CAF50;
      padding: 10px 80px;


  }

  #submit4{
    text-align: center;
    margin: 40px 350px;
    font-color: #4CAF50;
    background-color: white;
      border: none;
      color: #4CAF50;
      padding: 10px 80px;


  }

  #submit5{
    text-align: center;
    margin: 40px 350px;
    font-color: #4CAF50;
    background-color: white;
      border: none;
      color: #4CAF50;
      padding: 10px 87px;


  }
  #select1{
    width: 200px;
    margin: 20px -120px;
    font-size: 12px;
    outline: none;
      border-radius: 4px;
      background-color: white;
  padding: 9px 0px 12px 40px;

  }
  #select1{
    width: 200px;
    margin: 20px -110px;
    font-size: 12px;
    outline: none;
      border-radius: 4px;
      background-color: white;
  padding: 9px 0px 12px 40px;

  }
  #select2{
    width: 200px;
    margin: 20px -110px;
    font-size: 12px;
    outline: none;
      border-radius: 4px;
      background-color: white;
  padding: 9px 0px 12px 40px;

  }
  #select3{
    width: 200px;
    margin: 20px -110px;
    font-size: 12px;
    outline: none;
      border-radius: 4px;
      background-color: white;
  padding: 9px 0px 12px 40px;

  }

  </style>
  <body>
    <div class="maindiv">
      <div class="header">
       <img src="demo2.jpg"/>
       <div id="subheader">
         <h1>ADMIN PAGE</h1>
       </div>
      </div>
      <div class="mainbody">

       <div id="up">

         <div id="upleft">
         <form id="form1" action="DetailServlet2" method="post">
           <input id="submit1" type="submit" value="Schedule">
         </form>
       </div>
       <div id="upright">
       <form id="form2" action="DetailServlet3" method="post">
         <input id="submit2" type="submit" value="Detail">
       </form>
        </div>

        </div>
       <div id="mid">
        <form id="form3" action="EditServlet" method="post">
           <input id="submit5" type="submit" value="Edit" >
           <select id="select1" name="type"><option>Bus</option><option>Driver</option><option>Route</option></select>
        </form>
       </div>
       <div id="bottom">
         <form id="form3" action="InsertServlet1" method="post">
           <input id="submit3" type="submit" value="Insert">
           <select id="select2" name="type"><option>Bus</option><option>Driver</option><option>Route</option></select>
         </form>
       </div>
       <div id="bottom2">
         <form id="form4" action="ResetServlet1" method="post">
             <input id="submit4" type="submit" value="Reset">
             <select id="select3" name="type"><option>Bus</option><option>Driver</option><option>Route</option></select>
         </form>
       </div>
      </div>
      <div class="footer">
       <span>Powered By : Sushila Devi Bansal College Of Technology , Indore(M.P.)</span>
      </div>
    </div>

</html>
