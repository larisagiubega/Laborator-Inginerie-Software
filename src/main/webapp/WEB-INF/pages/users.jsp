<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<t:pageTemplate pageTitle="Users">
    <h1>Users</h1>
    <c:forEach var="user" items="${users}" varStatus="status">
        <div class="row">
            <div class="col-md-4">
                ${user.username}
            </div>
            <div class="col-md-4">
                ${user.email}
            </div>
            <div class="col-md-4">
                ${user.position}
            </div>

        </div>
    </c:forEach>



    <li class="nav-item ${activePage eq 'Users' ? 'active' : ''}">
        <a class="nav-link" href="${pageContext.request.contextPath}/Users">Users</a>
    </li>
    <li class="nav-item ${pageContext.request.requestURI eq '/ParkingLot/about.jsp' ? 'active' : ''}">
        <a class="nav-link" href="${pageContext.request.contextPath}/about.jsp">About</a>
    </li>
<!--    <li class="nav-item ${pageContext.request.requestURI eq '/ParkingLot/cars.jsp' ? 'active' : ''}">
        <a class="nav-link" href="${pageContext.request.contextPath}/cars.jsp">Cars</a>-->
    <!--</li>-->
</t:pageTemplate>