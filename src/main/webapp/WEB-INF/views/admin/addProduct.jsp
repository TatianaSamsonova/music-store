<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="../template/header.jsp" %>

<html>

<main>
    <link href="https://getbootstrap.com/docs/5.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <!-- ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->

    <div class="container-wrapper">
        <div class="container">
            <div class="page-header">
                <br>
                <br>
                <br>
                <br>
                <h1>Add product</h1>
                <p class="lead">Fill the below information to add a product:</p>
            </div>

            <form:form action="../product/add" method="post" modelAttribute="product">
                <div class="form-group">
                    <label for="name"><b>Name</b></label>
                    <form:input path="name" id="name" class="form-Control"/>
                </div>
                <br>
                <div class="form-group">
                    <label for="category"><b>Category</b></label>
                    <label class="checkbox-inline"><form:radiobutton path="category"  id="category" value="instrument"/>Instrument</label>
                    <label class="checkbox-inline"><form:radiobutton path="category"  id="category" value="souvenir"/>Souvenir</label>
                    <label class="checkbox-inline"><form:radiobutton path="category"  id="category" value="accessory"/>Accessory</label>
                    <label class="checkbox-inline"><form:radiobutton path="category"  id="category" value="record"/>Record</label>
                   <!-- <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="category" id="instrument" value="instrument">
                        <label class="form-check-label" for="instrument">Instrument</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="category" id="souvenir" value="souvenir">
                        <label class="form-check-label" for="souvenir">Souvenir</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="category" id="accessory" value="accessory">
                        <label class="form-check-label" for="accessory">Accessory</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="category" id="record" value="record">
                        <label class="form-check-label" for="record">Record</label>
                    </div>-->
                </div>
                <br>
                <div class="form-group">
                    <label for="description"><b>Description</b></label>
                    <form:textarea path="description" id="description" class="form-Control"/>
                </div>
                <br>
                <div class="form-group">
                    <label for="price"><b>Price</b></label>
                    <form:input path="price" id="price" class="form-Control"/>
                </div>
                <br>
                <div class="form-group">
                    <label for="condition"><b>Condition</b></label>
                    <label class="checkbox-inline"><form:radiobutton path="condition"  id="condition" value="new"/>New</label>
                    <label class="checkbox-inline"><form:radiobutton path="condition"  id="condition" value="used"/>Used</label>
                </div>
                <br>
                <div class="form-group">
                    <label for="status"><b>Status</b></label>
                    <label class="checkbox-inline"><form:radiobutton path="status"  id="status" value="active"/>Active</label>
                    <label class="checkbox-inline"><form:radiobutton path="status"  id="status" value="blocked"/>Blocked</label>
                </div>
                <br>
                <div class="form-group">
                    <label for="unitInStock"><b>Unit In Stock</b></label>
                    <form:input path="unitInStock" id="unitInStock" class="form-Control"/>
                </div>
                <br>
                <div class="form-group">
                    <label for="manufacturer"><b>Manufacturer</b></label>
                    <form:input path="manufacturer" id="manufacturer" class="form-Control"/>
                </div>
                <br><br>
                <button class="btn btn-primary" type="submit">Submit</button>
                <a href="<c:url value="../products"/>" class="btn btn-secondary">Cancel</a>
            </form:form>


            <%@ include file="../template/footer.jsp" %>
        </div>
    </div><!-- /.container -->
</main>

<!-- For local needs -only works with fake server and doesn't work with Chrome-->
<!--<script src="<c:url value="/resources/js/bootstrap.bundle.min.js"/>" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>-->
<script src="https://getbootstrap.com/docs/5.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>


</body>
</html>
