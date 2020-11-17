<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<t:pageTemplate pageTitle="Cars">
    <h1>Cars</h1>
    <form method="POST" action="${pageContext.request.contextPath}/Cars">
        <a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}/AddCar" role="button">Add Car</a>

        <button class="btn btn-danger" type="submit">Delete Cars</button>
        <c:forEach var="car" items="${cars}" varStatus="status">
            <div class="row">
                <div class="col-md">
                    <input type="checkbox" name="car_ids" value="${car.id}" />
                </div>
                <div class="col-md-2">
                    ${car.licensePlate}
                </div> 
                <div class="col-md-2">
                    ${car.parkingSpot}
                </div> 
                <div class="col-md-2">
                    ${car.username}
                </div> 

                <div class="col-md-3">
                    <a class="btn btn-dark" href="${pageContext.request.contextPath}/EditCar?id=${car.id}" role="button">Edit Car</a>
                </div>
            </div>
        </c:forEach>
    </form>
    <h5> Free parking spots: ${numberOfFreeParkingSpots} </h5>

    <li class="nav-item ${activePage eq 'Cars' ? 'active' : ''}">
        <a class="nav-link" href="${pageContext.request.contextPath}/Cars">Cars</a>
    </li>
    <li class="nav-item ${pageContext.request.requestURI eq '/ParkingLot/about.jsp' ? 'active' : ''}">
        <a class="nav-link" href="${pageContext.request.contextPath}/about.jsp">About</a>
    </li>
</t:pageTemplate>

