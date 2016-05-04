
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="header.jsp"/>
        <title></title>
        <jsp:include page="navigation.jsp"/>
    </head>
    <body>
        <h1>${game.name}</h1>
        <div>${result.description}</div>
    </body>
</html>
