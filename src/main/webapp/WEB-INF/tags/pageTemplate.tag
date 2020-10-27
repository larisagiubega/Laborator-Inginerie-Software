<%-- 
    Document   : newtag_file
    Created on : Oct 27, 2020, 12:40:27 PM
    Author     : Larisa
--%>

<%@tag description="put the tag description here" pageEncoding="UTF-8"%>

<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="pageTitle"%>
<!DOCTYPE html>
<html>
    <head>
        <title>${pageTitle}}</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body> 
        <jsp:include page="/WEB-INF/styling/menu.jsp"/>
        <main role="main" class="container">
        <jsp:doBody />
    </body>
</html>

