<%-- 
    R. Carl Moon II
    Login.jsp

--%>

<%@page import="java.sql.SQLException"%>
<%@page import="Business.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--thos the log in page-->
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title align="center">Customer Login</title>
    </head>
    <body>
        <h1 align="center">Please Login</h1>
        <form name="LoginForm" action="LoginServlet2" method="post">
            <div align="center">ID:<input type="text" name="id" value=""autofocus></div>
            <br>
            <div align="center">PW:<input type="password" name="pw" value=""></div>
            <br>
            <div align="center">
                <input type="submit" name="LoginBtn" value="Login">
                 <input type="reset" name="ClearBtn" value="Clear"> 
            </div>
        </form>
        <div align="center">
            <button onclick="myFunction()">Help</button>
            <script>
                function myFunction() {
                    alert(
                          "1. User types in username and password into the corresponding field provided\n2. User clicks the submit button\n3. User re-enters username and password into the corresponding field provided and clicks submit (Only if username or password are incorrect)\n4. User sees the home page that corresponds to their privilege level");
                }
            </script>
        </div>
    </body>
</html>
