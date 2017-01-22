<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>MarksForm1</title>
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
    <div class="content_section">
        <h2>${message}</h2>
    </div>

    <form class="form" method="post" action="addMarks">
        <input type="hidden" name="page" value="addMarks">
        <table class="table">
            <tr>
                <th>Student Name</th>
                <td>
                    <select name="studentname">
                        <c:forEach items="${studentList}" var="student">
                            <option value="${student.name}">${student.name}</option>
                        </c:forEach>
                    </select>
                </td>

                <th>Subject Name</th>
                <td>
                    <select name="subjectname">
                        <c:forEach items="${subjectList}" var="subject">
                            <option value="${subject.name}">${subject.name}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>

            <tr>
                <th>Full Marks</th>
                <td> <select name="fullmarks">
                    <c:forEach items="${fullMarks}" var="marks">
                        <option value="${marks}">${marks}</option>
                    </c:forEach>
                </select>
                </td>

                <th>Pass Marks</th>
                <td>
                    <select name="passmarks">
                        <c:forEach items="${passMarks}" var="marks">
                            <option value="${marks}">${marks}</option>
                        </c:forEach>
                    </select>
                </td>

            </tr>

            <tr>
                <th>Obtained Marks</th>
                <td><input type="text" name="obtained_marks"></td>

                <th>Classroom</th>
                <td>
                    <select name="classroom">
                        <c:forEach items="${classroomList}" var="cls">
                            <option value="${cls}">${cls}</option>
                        </c:forEach>
                    </select>
                </td>

            </tr>

            <tr>
                <th align="right">
                    <input type="submit" value="Submit Marks" >

                </th>

            </tr>

        </table>
    </form>
</div>
</body>
</html>
