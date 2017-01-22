<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>list1</title>
    <meta name="viewport" content="width= device-width" initial-scale="1" media="all">
    <script src="../jquery-3.1.1.js"></script>
    <style type="text/css">
        <%@include file="../bootstrap.min.css" %>
    </style>
    <script src="../bootstrap.min.js"></script>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>

<div class="container">
    <%@include file="../includes/header.jsp"%>
    <%@include file="../includes/menu.jsp"%>
    <div>
        <div align="center"><h3>${message}</h3></div>
        <h3><a href="marks?page=marks">Add New mark</a></h3>
        <table class="table">
              <tr>
            <th>Student Name</th>
            <th>Subject Name</th>
            <th>Full Marks</th>
            <th>Pass Marks</th>
            <th>Class</th>
            <th>Obtained Marks</th>
            <th>Edit</th>
            <th>Delete</th>

        </tr>
            <c:forEach items="${marksList}" var="marks">
                <tr>
                    <td>${marks.studentname}</td>
                    <td>${marks.subjectname}</td>
                    <td>${marks.fullmarks}</td>
                    <td>${marks.passmarks}</td>
                    <td>${marks.classroom}</td>
                    <td>${marks.obtainedmarks}</td>

                    <td><a href="marksEdit?id=${marks.id}&page=edit"><img src="images/edit.png"style="width:32px;height:32px;"/></a></td>
                    <td><a href="marksDelete?id=${marks.id}&page=delete"><img src="images/delete.png" style="width:32px;height:32px;"/></a></td>
                </tr>
            </c:forEach>
        </table>
    </div>


    <footer>

    </footer>
</div>
</body>
</html>

