<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Secret</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
<%--The secret.jsp can only be shown once a user has logged in--%>
<%
    // Prevents user from comming back to this page using the back button
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
    response.setHeader("Pragma", "no-cache");                                   // HTTP 1.0
    response.setHeader("Expires", "0");                                         // Proxies

    // Prevents users from accessing this page without logging in (that means, directly from the address bar)
    if(session.getAttribute("username")==null){
        response.sendRedirect("login.jsp");
    }
%>

<h1>Secret</h1>
<hr>
<img src="images/secret.jpg" alt="secret image">
<%--This paragragh uses the user's name. It takes the name from the HttpSession object--%>
<p>This page contains secrets that can only be viewed by those logged in! I know you are ${username}, so
    you're good.</p>

</body>
</html>
