<%-- 
    Document   : newgame
    Created on : 16-mrt-2016, 9:58:15
    Author     : Tim
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
        <div class="errormessage" id="errorjs"></div>
        
        <c:if test="${error!=null}">
            <div class="errormessage">${error}</div>
        </c:if>
        
            <form method="POST" onsubmit="return validateForm()" action=" <c:url value="/game.htm"/>">
            <input type="text" id="name" name="name">
            <input type="text" id="genre" name="genre">
            <input type="submit" value="Add Game">
        </form>
    </body>
</html>
