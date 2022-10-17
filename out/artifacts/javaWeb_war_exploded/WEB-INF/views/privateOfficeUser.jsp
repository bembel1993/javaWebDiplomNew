<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--
  Created by IntelliJ IDEA.
  User: Виталий
  Date: 12.10.2022
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div>
    <head>
        <title>Private Office of User</title>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>
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

        #arrow {
            width: 510px;
            height: 10px;
            margin-top: 20px;
        }

        #linktext {
            width: 900px;
            height: 30px;
        }

        #linktext2 {
            width: 700px;
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

        #curve {
            background-image: url("curve.jpg");
            width: 1000px;
            height: 79px;
            background-repeat: no-repeat;
        }

        .onsale {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 18px;
            font-weight: normal;
            color: #8ea11f;
            margin-left: 100px;

        }

        .readtxtwel {
            margin-left: 30px;
            font-family: Arial, Helvetica, sans-serif;
            font-size: 10px;
            font-weight: bold;
            color: #8ea505;
            text-decoration: underline;
            margin-top: -12px;
        }

        .content {
            position: relative;
            height: 40px;
            padding: 30px 40px;
            background-color: royalblue;
        }

    </style>
    <div>
        <div>
            <div id="layout">
                <div id="title">
                    <div id="logo">
                        <a href="WelcomeClassMenuUser">
                            <div class="text">Computer</div>
                            <div class="text1">Store</div>
                        </a>
                    </div>
                    <div id="links">
                        <div id="linktext"><a href="" class="abt">About
                            us</a>
                            <a href="" class="abt1">Services</a>
                            <a href="Catalog" class="abt1">Catalog</a>
                            <a href="" class="abt1">Partners</a>
                            <a href="" class="abt1">Contacts</a>
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
                            <input type="text" name="textfield"/>
                            <button type="submit" name="search">Search</button>
                        </div>
                        <div id="bullet5"></div>
                    </div>
                    <div class="welcome"> ${name} ${surname} you are in your Private Office!</div>
                </div>
            </div>
            <div id="curve">
                <div class="onsale"><h1>Write message for Administrator</h1></div>
            </div>

            <form method="post" action="SendMessage">
                <center>
                    <table border="0" align="center" width="50%" high="30px">
                        <tr align="center" bgcolor="#dcffed">
                            <th><i>person</i></th>
                            <th>message</th>
                        </tr>
                        <c:forEach items="${mess}" var="message">
                            <tr align="center" bgcolor="#dcffed">
                                <td>${message.person} ${name}</td>
                                <td>${message.message} ${message}</td>
                            </tr>
                        </c:forEach>

                        </td>
                        </td>
                        <!--<input id = "mess" name="mess" cols="70" rows="3"/>-->
                        <textarea name="comment" cols="70" rows="3"></textarea>
                        <button type="submit" id="insertMessage" name="insertMessage"> Send</button>
                    </table>
                </center>
            </form>

        </div>

        <div class="content">
            <div>CALL OUR CENTER !</div>
            <div>1-800-123-45678</div>
            <div>1-800-222-45678</div>
        </div>
    </div>
</div>
</body>
</html>
