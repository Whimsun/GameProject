<%-- 
    Document   : games
    Created on : 2-mrt-2016, 9:50:08
    Author     : Tim
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<!DOCTYPE html>
<html>
    <jsp:include page="header.jsp"/>
    <title>GAMES</title>
    <jsp:include page="navigation.jsp"/>

    <body>
                <form method="GET" action="<c:url value="game/new.htm"/>">
                    <input type="submit" value="<spring:message code="lbl.AddNewGame"/>">
                </form>
        <table>
            <tr>
                <th><spring:message code="lbl.Name"/></th>
                <th><spring:message code="lbl.Genre"/></th>
                <th><spring:message code="lbl.Reviews"/></th>
                <th><spring:message code="lbl.Edit"/></th>
                <th><spring:message code="lbl.Remove"/></th>
            </tr>
            <c:if test="${games!=null}">
                <c:forEach var="game" items="${games}">
                    <c:set var="reviews" value="${game.reviews}"/>
                    <tr>
                        <td>${game.name}</td>
                        <td>${game.genre}</td>
                        <td>${fn:length(reviews)} <spring:message code="lbl.Reviews"/> <a href="<c:url value="game/detailed/${game.gameID}.htm"/>"><br><spring:message code="lbl.MoreDetails"/></a></td>
                        <td><a href="<c:url value="game/edit/${game.gameID}.htm"/>"><spring:message code="lbl.Edit"/></a></td>
                        <td><a href="<c:url value="game/remove/${game.gameID}.htm"/>"/><spring:message code="lbl.Remove"/></td>
                    </tr>
                </c:forEach>
            </c:if>
        </table>
    </body>
</html>
