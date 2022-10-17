<%--
  Created by IntelliJ IDEA.
  User: Виталий
  Date: 27.07.2022
  Time: 11:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head><title>Title</title>
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

</style>
<body>
<div>
    <div>
        <div id="layout">
            <div id="title">
                <div id="logo">
                    <a href="WelcomeClassMenu">
                        <div class="text">Computer</div>
                        <div class="text1">Store</div>
                    </a>
                </div>
                <div id="links">
                    <div class="abt2">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="table-sub-heading-color">
    <div class="card">
        <div class="card-body">
            <center>
                <p><font color="red">${errorMessage}</font></p>
                <form action="RegistrationServlet" method="POST">
                    <fieldset class="form-group">
                        <label><b>Registration :</b></label>
                    </fieldset>
                    <fieldset class="form-group">
                        First Name : <br><input name="name" type="text" placeholder="enter your name"/>
                    </fieldset>
                    <fieldset class="form-group">
                        Last Name : <br><input name="surname" type="text" placeholder="enter your last name"/>
                    </fieldset>
                    <fieldset class="form-group">
                        Date of birth : <br><input name="email" type="text"
                                                   placeholder="enter your date of birth"/>
                    </fieldset>
                    <fieldset class="form-group">
                        Email : <br><input name="date" type="text" placeholder="enter email"/>
                    </fieldset>
                    <fieldset class="form-group">
                        Number phone : <br><input name="number" type="text" placeholder="enter your number"/>
                    </fieldset>
                    <fieldset class="form-group">
                        Login : <br><input name="login" type="text" placeholder="enter your login"/>
                    </fieldset>
                    <fieldset class="form-group">
                        Password : <br><input name="password" type="password"
                                              placeholder="enter your password"/>
                        <br>
                        <input name="add" type="submit"/>
                    </fieldset>
                </form>
            </center>
        </div>
    </div>
</div>
</body>
</html>
