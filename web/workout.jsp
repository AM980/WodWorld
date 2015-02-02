<%-- 
    Document   : workout
    Created on : Jan 29, 2015, 3:48:32 PM
    Author     : Thanos
--%>

<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%  request.setCharacterEncoding("UTF-8");
    if ((session.getAttribute("UserName") == null) || (session.getAttribute("UserName") == "")) {
%>

<!DOCTYPE html>
<html>
    <link rel="stylesheet" type="text/css" href="css/cssworkout.css" />
   
    
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
        <link rel="stylesheet" type="text/css" href="css/cssworkout.css" />
        <title>Workout</title>
    </head>
    <body>
      
    <div class="writing">    
        
        <h1 style="text-align: center;"><ins>W.O.D.</ins></h1>   
        
        <p><ins>warm up</ins><br>
           1000m run or 800m raw<br>
           Dynamic Stretching<br><br>
        </p>
        
        <p><ins>workout</ins><br>
     
         <%   String lvl=request.getParameter("level")  ; 
              String fcs=request.getParameter("focus")  ; 
         %>
         
         <%
            
            String[ ][ ] excercises = {
                            { "10xBurpees", "1000m run", "20xsit ups", "10xbox jumps", "20xrope jump" },
                            { "5xpull ups", "bench press(low weight)", "10xpush ups", "10xring rows", "5xbar backsquats" },
                            { "2000run", "30xrope jump", "1000m raw", "20xboxjump", "20xstep lunges",},
                            { "20xburpees", "15xpullups", "10xdeadlift(50kg)", "15xkettlebell swings(16kg)", "15xdouble unders"  },
                            { "2x10xbench press(mid weight)", "3x4xbacksquats(50 kg)", "3x5xdeadlift(70 kg)", "3x5xpush press(25 kg)","4x3xdips"},
                            { "3000m run", "40xdouble unders", "2000m raw", "30xbox jumps", "4x10m bear walk"},
                            { "20xtoes2bar", "2x5xchest2bar", "1000m raw", "10xkettlebell swings(32kg)", "3xrope climp" },
                            { "5x3xdeadlift(max kg)", "5x2xbench press(max kg)", "5x4xbacksquats(max kg)", "5xchest2bar(weight vest)","5x3xpush press(max kg)"},
                            { "2000m(run)", "100xdouble unders", "100Kcal raw", "20xjump over the box", "3x50m sprint"}
      
            };
            
int x=0;
            
if (lvl.equals("begginer" ) && fcs.equals("fitness")){
       x=0;
       out.println("-2 rounds for time-"); %> <br><br> <%
}
if (lvl.equals("begginer" ) && fcs.equals("strength")){
       x=1;
}
if (lvl.equals("begginer" ) && fcs.equals("stamina")){
       x=2;
}
if (lvl.equals("midlevel" ) && fcs.equals("fitness")){
       x=3;
       out.println("-3 rounds for time-"); %> <br><br> <%
}
if (lvl.equals("midlevel" ) && fcs.equals("strength")){
       x=4;
}
if (lvl.equals("midlevel" ) && fcs.equals("stamina")){
       x=5;
       out.println("20 min A.M.R.A.P."); %> <br><br> <%
}
if (lvl.equals("hero" ) && fcs.equals("fitness")){
       x=6;
        out.println("-2 rounds for time-"); %> <br><br> <%
}
if (lvl.equals("hero" ) && fcs.equals("strength")){
       x=7;
}
if (lvl.equals("hero" ) && fcs.equals("stamina")){
       x=8;
       out.println("15 min A.M.R.A.P."); %> <br><br> <%
}


 for (int i = 0; i <3; i = i + 1) {
            Random rn = new Random();
            int y = rn.nextInt(5);
            out.println(excercises[x][y]); %> <br> <%
 }        

         %>


          <p><ins>recovery</ins><br>
            Stretching<br>
        </p>
        <div class="border">
          <p>  <a href="wodworld.jsp">back</a></p>
       </div>
        
 </div>
         <div class="footer">
            <p>WWW technologies - Soultanoglou Athanasios 980</p>
        </div>
        
</body>
</html>

<%
    }
%>
