<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<t:pageTemplate pageTitle="Edit Car">
    <h1>Edit car</h1>
    <form class="needs-validation" nonvalidate method="POST" action="${pageContext.request.contextPath}/EditCar">
        <div class="col-md-6 mb-3">

            <label for="licensePlate">License plate</label>
            <input type="text" class="form-control" id="license_plate" name="license_plate" placeholder="License plate" value="${car.licensePlate}" required>
            <div class="invalid-feedback">
                License plate required.
            </div>
        </div>
        <div class="col-md-6 mb-3">
            <label for="parkingSpot">Parking spot</label>
            <input type="text" class="form-control" id="parking_spot" name="parking_spot" placeholder="Parking Spot" value="${car.parkingSpot}" required>
            <div class="invalid-feedback">
                Parking spot required.
            </div>
        </div>
        <div class="col-md-5 mb-3">
            <label for="owner">Owner</label>
            <select class="custom-select d-block w-100" id="owner_id" name="owner_id" required>
                <option value="">Choose...</option>
                <c:forEach var="user" items="${users}" varStatus="status">
                    <option value="${user.id}" ${car.username eq user.username ? 'selected':''}>${user.username}</option>
                </c:forEach>
            </select>
            <div class="invalid-feedback">
                Please select an owner.
            </div>
        </div>
        <button class="btn btn-primary btn-lg btn-block" type="submit">Save</button>


        <script src="form-validation.js"></script>
    </form>

</t:pageTemplate>
