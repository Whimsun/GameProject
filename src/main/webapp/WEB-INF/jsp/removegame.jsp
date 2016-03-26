<%-- 
    Document   : removegame
    Created on : 26-mrt-2016, 18:05:36
    Author     : Tim
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
            <jsp:include page="header.jsp"/>
    <title>Remove Game</title>
    <jsp:include page="navigation.jsp"/>
    </head>
    <body>
        <p class="notification">You are about to Delete ${game.name}</p>
        <p>Are you sure?</p>
        <form action="<c:url value="/game/remove.htm"/>" method="post"/>
            <input type="hidden" value="${game.gameID}" id="id" name="id"/>
            <input type="submit" value="Yes"/>
        </form>
            <form action="<c:url value="/game.htm"/>">
                <input type="submit" value="No"/>
            </form>
    </body>
</html>
