<%-- 
    Document   : gamereviews
    Created on : 26-mrt-2016, 21:23:32
    Author     : Tim
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="header.jsp"/>
        <title>${game.name}</title>
        <jsp:include page="navigation.jsp"/>
    </head>
    <body>
        <h1>${game.name}</h1>
        <c:set var="reviews" value="${game.reviews}"/>
        <form method="get" action="<c:url value="/game/addreview/${game.gameID}.htm"/>">
            <input type="submit" value="Add new Review" />
        </form>
        <form method="get" action="<c:url value="/game/detailed/info/${game.gameID}.htm"/>">
            <input type="submit" value="Get Detailed Info">
        </form>
        <p>Average score:   <c:out value="${score}"/></p>
        <c:forEach var="review" items="${reviews}">
            <article>
                <p><a href="${game.gameID}/${review.reviewID}.htm"/>Remove</a></p>
                <p>${review.reviewerName}</p>
                <p>${review.score}</p>
                <p>${review.body}</p>
            </article>
        </c:forEach>
    </body>
</html>
