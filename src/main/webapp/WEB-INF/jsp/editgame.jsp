<%-- 
    Document   : editgame
    Created on : 16-mrt-2016, 11:11:21
    Author     : Tim
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
    <head>
    <jsp:include page="header.jsp"/>
    <title>GAMES</title>
    <jsp:include page="navigation.jsp"/>
    </head>
    <body>
        <h2><spring:message code="lbl.YouAreEditing"/>: ${game.name}</h2>
        
        <form method="POST" action="<c:url value="/game/confirmedit.htm"/>">
            <input type="hidden" name="gameID" id="gameID" value="${game.gameID}">
            <input type="text" value="${game.name}" name="name" id="name">
            <input type="text" value="${game.genre}" name="genre" id="genre">
            <input type="submit" value="Submit Changes">
        </form>
    </body>
</html>
