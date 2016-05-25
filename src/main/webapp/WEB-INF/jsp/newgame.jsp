<%-- 
    Document   : newgame
    Created on : 16-mrt-2016, 9:58:15
    Author     : Tim
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript" src="<c:url value="/Javascript/GameFormValidation.js"/>"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="header.jsp"/>
        <jsp:include page="navigation.jsp"/>
        <title>New Game Form</title>
    </head>
    <body>
        <script>
            errorname="<spring:message code="lbl.ErrorMessageName"/>";
            errorgenre="<spring:message code="lbl.ErrorMessageGenre"/>";
        </script>
        <div class="errormessage" id="errorjs"></div>
        
        <c:if test="${error!=null}">
            <div class="errormessage">${error}</div>
        </c:if>
        
            <form method="POST" onsubmit="return validateForm()" action=" <c:url value="/game.htm"/>">
                <input type="text" id="name" name="name" placeholder="<spring:message code="lbl.Name"/>">
                <input type="text" id="genre" name="genre" placeholder="<spring:message code="lbl.Genre"/>">
            <input type="submit" value="Add Game" id="submitButton">
        </form>
    </body>
</html>
