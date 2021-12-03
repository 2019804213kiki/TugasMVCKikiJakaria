<%-- 
    Document   : login
    Created on : Nov 25, 2021, 7:26:37 AM
    Author     : Kiki Jakaria
--%>
<%@include file="/WEB-INF/jsp/include.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Aplikasi</title>
        <style type="text/css">
 		.kotak{
			border: solid 1px;
			padding: 25px;
			line-height: 23px;
			border-radius: 5px;
			margin: 20;
			width: 350px;
                        background-color: skyblue;             
		}
                body{
                    background-color: grey;
                }
                
 	</style>
    </head>
    <body>
        <form method="get" modelAttribute="emp" action="login/save.html" >
            <table align="center" class="kotak" >
                <tr >
                    <td></td>
                    <td><h2>   LOGIN</h2></td>   
                </tr>
                <tr>
                    <td><label for="username" style="disply:block;" >Username</label></td><br>
                    <td><input type="text" name="username" id="username" maxlength="20" size="25" ></td>
                </tr>
                <tr>
                    <td><label for="password">Password</label></td>
                    <td><input type="password" name="password" id="password" maxlength="20" size="25" ></td>
                </tr>
                <tr>
                    <td><input type="submit" name="submit" value="Login"></td>
                </tr>
                <tr>
                    <td colspan="2" >${message}</td>
                </tr>
            </table>
    </body>
</html>