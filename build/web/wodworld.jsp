<%-- 
    Document   : wodworld
    Created on : Dec 10, 2014, 7:15:45 PM
    Author     : Thanos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  request.setCharacterEncoding("UTF-8");
    if ((session.getAttribute("UserName") == null) || (session.getAttribute("UserName") == "")) {
%>

<!DOCTYPE html>
<html>
    <link rel="stylesheet" type="text/css" href="css/csswodworld.css" />
   
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        

       <div class="border">
          <p>You are not logged in <br>Please Login Here <a href='login.jsp'>Go to Login</a> </p></p>
       </div>
        
       
       
       
    </body>
</html>

<%} else {
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/csswodworld.css" />
        <title>WodWorld</title>
    </head>
    
    
   <p style="text-align: center;font-family: fantasy;alignment-adjust: baseline;font-size:150%;width:400px ;height:40px;color:whitesmoke;background-color:black">  Welcome <%=session.getAttribute("UserName")%></p>
        
 <div class="title">
    
     <h1>Choose category</h1>

 </div>
        <form method="POST" action="workout.jsp">
          
            <center>
            <select name="level" size="1" style="width:100px">
                <option value="begginer"> Begginer </option>
                <option value="midlevel"> Midlevel </option>
                <option value="hero"> Hero </option>
            </select>
            <select name="focus" size="1" style="width:100px">
                <option value="fitness"> Fitness </option>
                <option value="strength"> Strength </option>
                <option value="stamina"> Stamina </option>
            </select>
            <br><br>
            </center>
            <center>
                <input type="SUBMIT">
            </center>
            <br>
            <br>
        </form>

        
        
        <div class="border">
          <p> back to  <a href="index.html">main page </a></p>
       </div>
       <div class="footer">
            <p>WWW technologies - Soultanoglou Athanasios 980</p>
        </div>
        
    </body>
</html>

<%
    }
%>