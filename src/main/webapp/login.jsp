<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="css/styles.css">
</head>

<body>
<%--This page contains a form that is sent to my Login servlet. It uses the post method to keep the user's info safe--%>
<form id="login-form" action="Login" method="post">
    <h1>Login</h1>
    <input placeholder="Username" type="text" name="user"><br>
    <input placeholder="Password" type="password" name="pass"><br>
    <input class="buttons" type="submit" value="Login">
</form>
</body>
</html>
