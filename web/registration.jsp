<%-- 
    Document   : registration
    Created on : Dec 10, 2014, 2:23:56 PM
    Author     : Thanos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/csstest.css" /> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <body>
        <form method="post" action="RRegistration">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2" style="font-family: impact;color:whitesmoke;background-color: black;">Type Informations</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td style="color:whitesmoke;background-color: black;">First Name</td>
                        <td style="background-color: black;"><input type="text" name="fname" value="" required=""/></td>
                    </tr>
                    <tr>
                        <td style="color:whitesmoke;background-color: black;">Last Name</td>
                        <td style="background-color: black;"><input type="text" name="lname" value="" required="" /></td>
                    </tr>
                    <tr>
                        <td style="color:whitesmoke;background-color: black;">User Name</td>
                        <td style="background-color: black;"><input type="text" name="uname" value="" required=""/></td>
                    </tr>
                    <tr>
                        <td style="color:whitesmoke;background-color: black;">Password</td>
                        <td style="background-color: black;"><input type="password" name="pass" value="" required=""/></td>
                    </tr>
                    <tr>
                        <td style="color:whitesmoke;background-color: black;">Email</td>
                        <td style="background-color: black;"><input type="email" name="email" value="" required=""/></td>
                    </tr>
                    <tr>
                        <td style="background-color: black;"><input type="submit" value="Submit" /></td>
                        <td style="background-color: black;"><input type="reset" value="Reset" /></td>
                    </tr>
                    
                </tbody>
            </table>
            </center>
        </form>
        
       <div class="border">
          <p> back to  <a href="index.html">main page </a></p>
       </div>
        
       <div class="footer">
            <p>WWW technologies - Soultanoglou Athanasios 980</p>
        </div>
         
        
    </body>
</html>
