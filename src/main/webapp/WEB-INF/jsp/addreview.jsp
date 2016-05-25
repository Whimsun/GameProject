<%-- 
    Document   : addreview
    Created on : 26-mrt-2016, 21:53:08
    Author     : Tim
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="header.jsp"/>
        <jsp:include page="navigation.jsp"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><spring:message code="lbl.AddNewReview"/></title>
    </head>
    <body>
        <form method="post" action="<c:url value="/game/detailed/${game.gameID}.htm"/>"/>
            <input type="hidden" value="${game.gameID}"/>
            <input type="text" id="reviewerName" required name="ReviewerName" placeholder="<spring:message code="lbl.Reviewer"/>"/>
            <input type="number" id="score" name="score" min="0" max="10" value="0" required/>
            <input type="text" id="body" required name="body" placeholder="<spring:message code="lbl.ReviewPlaceHolder"/>"/>
            <input type="submit" value="<spring:message code="lbl.AddNewReview"/>"/>
        </form>
    </body>
</html>
