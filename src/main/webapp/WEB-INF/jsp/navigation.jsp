<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<ul>
    <li><a href="<c:url value="/index.htm"/>"><spring:message code="lbl.Home"/></a></li>
    <li><a href="<c:url value="/game.htm"/>"><spring:message code="lbl.GameOverview"/></a></li>
    <li><a href="?lang=nl">Veranderen van Taal</a></li>
    <li><a href="?lang=en">Change to english</a></li>
</ul>
