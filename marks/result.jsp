<%--
  Created by IntelliJ IDEA.
  User: krishna KC
  Date: 12/30/2016
  Time: 9:23 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <meta name="viewport" content="width= device-width" initial-scale="1" media="all">
    <script src="../jquery-3.1.1.js"></script>
    <style type="text/css">
        <%@include file="../bootstrap.min.css" %>
    </style>
    <script src="../bootstrap.min.js"></script>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<div class="container">
<%@ include file="../includes/header.jsp"%>
<%@ include file="../includes/menu.jsp"%>
        <div id="div1">
            <table class="table ">
                <tr>
                   <td colspan="6"><p style="margin-left: 40%">ABC University</p></td>
                </tr>
                <tr>
                   <td colspan="6"> <p style="margin-left: 42%">Nepal</p></td>
                </tr>

                <tr>
                    <td>Name :${name}</td>
                </tr>
                <tr>
                    <th>ID</th>
                    <th>Subject </th>
                    <th>full Mark</th>
                    <th>Pass Mark</th>
                    <th>Obtained Mark</th>
                </tr>
                <c:forEach items="${markList1}" var="marks">
                    <tr>
                        <td>${marks.id}</td>
                        <td>${marks.subjectname}</td>
                        <td>${marks.fullmarks}</td>
                        <td>${marks.passmarks}</td>
                        <td>${marks.obtainedmarks}</td>
                    </tr>
                </c:forEach>
                <tr>
                    <td>Total </td>
                </tr>
            </table>

        </div>
    <button onclick="printContent('div1')">Print Content</button>

    </div>

<script>
    function printContent(el){
        var restorepage = document.body.innerHTML;
        var printcontent = document.getElementById(el).innerHTML;

        document.body.innerHTML=printcontent;
        window.print();
        document.body.innerHTML=restorepage;

    }
</script>

</body>
</html>
