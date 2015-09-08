<%--
  Created by IntelliJ IDEA.
  User: sachin
  Date: 9/8/15
  Time: 8:18 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title></title>
</head>

<body>
    <g:form controller="user" action="loginValidator">
        <input type="text" name="Username" placeholder="Username"/>
        <input type="text" name="Password" placeholder="Password"/>
        <input type="submit" value="Login"/>
    </g:form>
</body>
</html>