<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Börsen</title>
  </head>
  <body>
    <form action="security" method="post">
        <p>
            <input type="text" name="security" id="security">
            <span class="error">${messages.security}</span>
        <p>
        <input type="submit">
    </form>
  </body>
</html>