<%-- 
    Document   : addreview
    Created on : 26-mrt-2016, 21:53:08
    Author     : Tim
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="header.jsp"/>
        <jsp:include page="navigation.jsp"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Review</title>
    </head>
    <body>
        <form method="post" action="<c:url value="/game/detailed/${game.gameID}.htm"/>"/>
            <input type="hidden" value="${game.gameID}"/>
            <input type="text" id="reviewerName" name="ReviewerName" placeholder="Reviewer"/>
            <input type="number" id="score" name="score"/>
            <input type="text" id="body" name="body" placeholder="Place Review Here"/>
            <input type="submit" value="Submit Review"/>
        </form>
    </body>
</html>
