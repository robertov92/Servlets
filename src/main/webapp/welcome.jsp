<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
<%--The welcome.jsp is shown once a user has logged in--%>
<%
    // Prevents user from back to this page using the back button
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
    response.setHeader("Pragma", "no-cache");                                   // HTTP 1.0
    response.setHeader("Expires", "0");                                         // Proxies

    // Prevents users from accessing this page without logging in (that means, directly from the address bar)
    if(session.getAttribute("username")==null){
        response.sendRedirect("login.jsp");
    }
%>
<%--Welcomes the user by his/her name. It takes the name from the HttpSession object--%>
<h1>Welcome ${username}</h1>
<hr>
<br>
<p>Now that you are logged in, you can go to the <a href="secret.jsp">secret page...</a></p>
<br>
<p>or you can...</p>
<form action="Logout">
    <input class="buttons" type="submit" value="Logout">
</form>
</body>
</html>
