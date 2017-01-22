<%--
  Created by IntelliJ IDEA.
  User: krishna KC
  Date: 12/30/2016
  Time: 9:28 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>check</title>
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
    <div id="tableCheck">
        <form class="form" method="post" action="result">
            <input type="hidden" name="page" value="result"><!--check -->
            <input type="hidden" name="classroom" value="${marksList.marks.classroom}">
            <table class="col-lg-4"  >
                <tr>
                <td><label style="color: white">Student name:</label></td>
                    <td><input type="text" name="student_name" placeholder="Enter your name"> </td>
                <%--<td>--%>
                    <%--<select name="student_name">--%>
                        <%--<c:forEach items="${studentList}" var="student">--%>
                            <%--<option  value="${student.name}">${student.name}</option>--%>
                        <%--</c:forEach>--%>
                    <%--</select>--%>
                <%--</td>--%>
                </tr>
                <tr><td><p></p></td></tr>
                <td><input type="submit" class="btn" value="View Marksheet"></td>
            </table>

        </form>
    </div>

</div>
</body>
</html>
