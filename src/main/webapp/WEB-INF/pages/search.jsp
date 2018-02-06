<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>

    <title>BOOK</title>

</head>

<body class="panel-body">
<a href="<c:url value="/books"/>">BACK</a>
<h1 class="text-center">Books Search Result</h1>
<c:choose>
<c:when test="${!empty listBooks}">
    <table class="table table-striped table-bordered table-fesponsive">
        <tr class="text-center">
            <th class="bg-info" width="120">Title</th>
            <th class="bg-info le" width="120">Description</th>
            <th class="bg-info" width="120">Author</th>
            <th class="bg-info" width="120">ISBN</th>
            <th class="bg-info text-center" width="120">PrintYear</th>
            <th class="bg-info" width="80">isRead</th>
            <th class="bg-info" width="60">Edit</th>
            <th class="bg-info" width="60">Delete</th>
            <th class="bg-info" width="60">Read</th>
        </tr>
        <c:forEach items="${listBooks}" var="book">
            <tr>
                <td>${book.title}</td>
                <td class="size" max>${book.description}</td>
                <td>${book.author}</td>
                <td>${book.isbn}</td>
                <td>${book.printYear}</td>
                <td>${book.readAlready}</td>
                <td><a href="<c:url value='/edit/${book.id}'/>">
                    <button class="btn btn-info">Edit</button>
                </a></td>
                <td><a href="<c:url value='/remove/${book.id}'/>">
                    <button class="btn btn-danger">Remove</button>
                </a></td>
                <td><a href="<c:url value='/makeread/${book.id}'/>">
                    <button class="btn btn-success">Read</button>
                </a></td>
            </tr>
        </c:forEach>
    </table>
</c:when>
<c:otherwise>
    <h2 class="text-center">No books found matching your request.</h2>
</c:otherwise>
</c:choose>
</body>
</html>