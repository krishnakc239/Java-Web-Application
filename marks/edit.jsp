<%--
  Created by IntelliJ IDEA.
  User: krishna KC
  Date: 12/30/2016
  Time: 9:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>edit</title>
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
    <%@include file="../includes/header.jsp"%>
    <%@include file="../includes/menu.jsp"%>
    <div >
        <form class="form" method="post" action="updateMarks">
            <input type="hidden" name="page" value="updateMarks">
            <input type="hidden" name="id" value="${marks.id}">
            <table class="table">

                <tr>
                    <th>Obtained Marks</th>
                    <td><input type="text" name="obtained_marks" value="${marks.obtainedmarks}"></td>
                </tr>
                <tr>
                    <th>Class</th>
                    <td><input type="text" name="classroom" value="${marks.classroom}"></td>
                </tr>
                <tr>
                    <th>Full Marks</th>
                    <td><input type="text" name="fullmarks" value="${marks.fullmarks}"></td>
                </tr>
                <tr>
                    <th>Pass Marks</th>
                    <td><input type="text" name="passmarks" value="${marks.passmarks}"></td>
                </tr>

                <tr>
                    <td><input type="submit" value="Update Marks"></td>
                </tr>

            </table>

        </form>

    </div>
</div>
</body>
</html>
