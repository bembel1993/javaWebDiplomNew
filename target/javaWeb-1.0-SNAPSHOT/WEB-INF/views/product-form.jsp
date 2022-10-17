<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossorigin="anonymous">
</head>
<style>
    table {

    }

    a:link {
        text-decoration: none;
    }

    a:visited {
        text-decoration: none;
    }

    a:hover {
        text-decoration: none;
    }

    a:active {
        text-decoration: none;
    }

    #layout {
        width: 100%;
        height: auto;
        background-color: #FFFFFF;
        margin: auto;
    }

    body {
        margin: 0 auto;
        background-color: white;
    }

    #title {
        background-color: royalblue;
        width: 100%;
        height: 78px;
    }

    #logo {
        width: 260px;
        height: 78px;
    }

    .text {
        font-family: Verdana, Arial, Helvetica, sans-serif;
        font-size: 24px;
        color: #FFFFFF;
        font-weight: bold;
        margin-left: 40px;
        padding-top: 20px;
        width: 30px;
    }

    .text1 {
        font-family: Verdana, Arial, Helvetica, sans-serif;
        font-size: 18px;
        color: #000000;
        font-weight: bold;
        margin-left: 180px;
        width: 30px;
        margin-top: -23px;
    }

    #links {
        width: 509px;
        height: 78px;
        margin-top: -78px;
        margin-left: 265px;
    }

    #linktext {
        width: 900px;
        height: 30px;
    }

    .abt {
        float: left;
        font-family: Arial, Helvetica, sans-serif;
        font-size: 16px;
        font-weight: bold;
        color: #FFFFFF;
        vertical-align: middle;
        margin-left: 18px;
        margin-top: 7px;

    }

    .abt1 {
        float: left;
        font-family: Arial, Helvetica, sans-serif;
        font-size: 16px;
        font-weight: bold;
        color: #FFFFFF;
        vertical-align: middle;
        margin-left: 38px;
        margin-top: 7px;

    }

    .abt2 {
        float: left;
        font-family: Arial, Helvetica, sans-serif;
        font-size: 16px;
        font-weight: bold;
        color: gold;
        vertical-align: middle;
        margin-left: 5px;
        margin-top: 1px;
    }

    #search {
        float: left;
        background-image: url("searchcurve.jpg");
        width: 304px;
        height: 122px;
        background-repeat: no-repeat;
    }

    #searchbg {
        width: 775px;
        height: 122px;
    }

    .searchtxt {
        font-family: Arial, Helvetica, sans-serif;
        font-size: 14px;
        font-weight: bold;
        color: #000000;
        margin-left: 50px;
        padding-top: 20px;

    }

    #textfield {
        margin-left: 50px;
        margin-top: 20px;
    }

    #bullet5 {
        background-image: url("searcharrow.jpg");
        width: 29px;
        height: 30px;
        background-repeat: no-repeat;
        margin-left: 245px;
        margin-top: -28px;
    }

    .welcome {
        font-family: Arial, Helvetica, sans-serif;
        font-size: 30px;
        font-weight: bold;
        color: #C67108;
        margin-left: 330px;
        width: 700px;
        padding-top: 10px;

    }

</style>
<body>

<div id="layout">
    <div id="title">
        <div id="logo">
            <a href="WelcomeClassMenuAdmin">
                <div class="text">Computer</div>
                <div class="text1">Store</div>
            </a>
        </div>
        <div id="links">
            <div id="linktext"><a href="" class="abt">About us</a>
                <a href="" class="abt1">Services</a>
                <a href="CatalogAdmin" class="abt1">Catalog</a>
                <a href="" class="abt1">Partners</a>
                <a href="" class="abt1">Contacts</a>
                <a href="AddProductInCatalog" class="abt1">Edit catalog</a>
                <div class="abt1"><a href="LogOut" class="abt2">LogOut</a>
                    <p class="abt2">/</p>
                    <a href="RegistrationServlet" class="abt2">Reg</a>
                </div>
            </div>
        </div>
    </div>

    <div id="searchbg">
        <div id="search">
            <div class="searchtxt">Search Product</div>
            <div id="textfield">
                <form method="post" action="SearchProduct">
                    <input type="text" name="nameprod"/>
                    <button type="submit" name="search">Search</button>
                </form>
            </div>
            <div id="bullet5"></div>
        </div>
        <div class="welcome"> ${name} you are in Catalog!</div>
    </div>
</div>
<br>
<div class="container col-md-5">
    <div class="card">
        <div class="card-body">
            <c:if test="${products != null}">
            <form action="update" method="post">
                </c:if>
                <c:if test="${products == null}">
                <form action="insert" method="post">
                    </c:if>

                    <caption>
                        <h2>
                            <c:if test="${products != null}">
                                Edit Product
                            </c:if>
                            <c:if test="${products == null}">
                                Add New Product
                            </c:if>
                        </h2>
                    </caption>

                    <c:if test="${products != null}">
                        <input type="hidden" name="id" value="<c:out value='${products.id}' />"/>
                    </c:if>

                    <fieldset class="form-group">
                        <label>Product Name</label> <input type="text"
                                                           value="<c:out value='${products.nameprod}' />"
                                                           class="form-control"
                                                           name="nameprod" required="required">
                    </fieldset>

                    <fieldset class="form-group">
                        <label>Product price</label> <input type="text"
                                                            value="<c:out value='${products.price}' />"
                                                            class="form-control"
                                                            name="price">
                    </fieldset>

                    <fieldset class="form-group">
                        <label>Product Manufacturer</label> <input type="text"
                                                                   value="<c:out value='${products.manufacturer}' />"
                                                                   class="form-control"
                                                                   name="manufacturer">
                    </fieldset>

                    <fieldset class="form-group">
                        <label>Product Release Date</label> <input type="text"
                                                                   value="<c:out value='${products.releaseDate}' />"
                                                                   class="form-control"
                                                                   name="releaseDate">
                    </fieldset>

                    <button type="submit" class="btn btn-success">Save</button>
                </form>
        </div>
    </div>
</div>
</body>
</html>
