<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="template/header.jsp" %>

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
                <h1>Product details</h1>
                <p class="lead">Here is the detailed information about product</p>
            </div>

            <div class="container">
                <div class="row">
                    <div class="col-6">
                        <img src="#" alt="image" style="width:100%; height:300px" />
                    </div>
                    <div class="col-6">
                        <h3>
                            ${product.name}
                        </h3>
                        <p>${product.description}</p>
                        <p>
                            <strong>Manufacturer: </strong> ${product.manufacturer}
                        </p>
                        <p>
                            <strong>Category: </strong> ${product.category}
                        </p>
                        <p>
                            <strong>Condition: </strong> ${product.condition}
                        </p>

                        <h4>${product.price} USD</h4>
                    </div>
                </div>
            </div>

            <%@ include file="template/footer.jsp" %>
        </div>
    </div><!-- /.container -->
</main>

<!-- For local needs -only works with fake server and doesn't work with Chrome-->
<!--<script src="<c:url value="/resources/js/bootstrap.bundle.min.js"/>" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>-->
<script src="https://getbootstrap.com/docs/5.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
<!--here is an example https://getbootstrap.com/docs/5.0/examples/carousel/-->
<!--here is an example https://getbootstrap.com/docs/5.0/examples/carousel/-->
</body>
</html>
