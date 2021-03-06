<%-- 
    Document   : removegame
    Created on : 26-mrt-2016, 18:05:36
    Author     : Tim
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP</title>
            <jsp:include page="header.jsp"/>
            <title><spring:message code="lbl.RemoveGame"/></title>
    <jsp:include page="navigation.jsp"/>
    </head>
    <body>
        <div class="notification">
        <p><spring:message code="lbl.AboutToDelete"/> ${game.name}</p>
        </div>
        <p><spring:message code="lbl.AreYouSure"/></p>
        <div>
        <form action="<c:url value="/game/remove.htm"/>" method="post"/>
            <input type="hidden" value="${game.gameID}" id="id" name="id"/>
            <input type="submit" value="<spring:message code="lbl.Yes"/>"  />
        </form>
            <form action="<c:url value="/game.htm"/>">
                <input type="submit" value="<spring:message code="lbl.No"/>"/>
            </form>
        </div>
    </body>
</html>
