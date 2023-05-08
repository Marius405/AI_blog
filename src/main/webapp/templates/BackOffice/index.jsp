<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 02/05/2023
  Time: 13:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login administrateur</title>
</head>
<body>
    <form action="<%= request.getContextPath() %>/AI/Admin/Login" method="post">
        <label>Email</label><input type="email" name="email" value="admin@gmail.com">
        <label>Mot de passe</label><input type="password" name="mdp" value="mdp">
        <input type="submit" value="Se connecter">
    </form>
</body>
</html>
