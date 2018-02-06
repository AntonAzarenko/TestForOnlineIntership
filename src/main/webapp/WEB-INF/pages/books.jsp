<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <link rel="stylesheet" href="../resources/css/mycss.css">
    <title>Books Page</title>
    <style type="text/css">
        h1{
            padding-left: 450px;
            color: #b80c01;
            font-size: 50px;
        }
        .header{
            padding-left: 550px;
            color: #414bb8;
        }
        .table  {
            border-collapse: collapse;
            border-spacing: 0;
            border-color: #ccc;
            padding-left: 150px;
        }
        .table  td {
            font-family: Arial, sans-serif;
            font-size: 14px;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #414bb8;
            background-color: #fff;
        }
        .table th {
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-weight: normal;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #f0f0f0;
        }
        .table  .table-4eph {
            background-color: #f9f9f9
        }
    </style>
</head>
<body>
<h1>My Libryary</h1>

<h2 class="header">BOOKS</h2>

<c:if test="${!empty listBooks}">
    <table class="table table-striped table-condensed">
        <tr >
            <th class="bg-info" width="120">Title</th>
            <th class="bg-info le" width="120">Description</th>
            <th class="bg-info" width="120">Author</th>
            <th class="bg-info" width="120">ISBN</th>
            <th class="bg-info text-center" width="60">PrintYear</th>
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
                <td><a href="<c:url value='/edit/${book.id}'/>">Edit

                </a></td>
                <td><a href="<c:url value='/remove/${book.id}'/>">Remove

                </a></td>
                <td><a href="<c:url value='/makeread/${book.id}'/>">Read

                </a></td>
            </tr>
        </c:forEach>
    </table>
</c:if>
<br/>

<div id="pagination">
    <c:url value="${currentsort}" var="prev">
        <c:param name="page" value="${page-1}"/>
    </c:url>
    <c:if test="${page > 1}">
        <a href="<c:out value="${prev}" />" class="pn prev">
            <button class="btn btn-info">PREV</button>
        </a>
    </c:if>

    <c:forEach begin="1" end="${maxPages}" step="1" varStatus="i">
        <c:choose>
            <c:when test="${page == i.index}">
                <span>${i.index}</span>
            </c:when>
            <c:otherwise>
                <c:url value="${currentsort}" var="url">
                    <c:param name="page" value="${i.index}"/>
                </c:url>
                <a href='<c:out value="${url}" />'>
                    <button class="btn btn-info">${i.index}</button>
                </a>
            </c:otherwise>
        </c:choose>
    </c:forEach>
    <c:url value="${currentsort}" var="next">
        <c:param name="page" value="${page + 1}"/>
    </c:url>
    <c:if test="${page + 1 <= maxPages}">
        <a href='<c:out value="${next}" />' class="pn next">
            <button class="btn btn-info">NEXT</button>
        </a>
    </c:if>
</div>


</body>

<table class="table table-striped table-condensed">
    <tr>
        <c:url var="search" value="/books/search"/>
        <form:form cssClass="form-inline bg-infog" action="${search}" commandName="book">
            <td>
                <h2>SEARCH</h2>

                <input class="form-control" type="text" name="searchText" id="searchText"
                       placeholder="Input title, author name or printYear..."/>
                <select class="form-control" type="text" name="searchParameter" id="searchParameter">
                    <option selected value="title">Title</option>
                    <option value="author">Author</option>
                    <option value="printYear">PrintYear</option>
                </select>
                <input class="btn" type="submit"
                       value="<spring:message text="SEARCH"/>"/>
            </td>
        </form:form>

        <td></td>

        <td>
            <h2>EDIT/ADD BOOK</h2>

            <c:url var="addAction" value="/books/add"/>

            <form:form action="${addAction}" commandName="book">
                <table class="table table-striped table-condensed">
                    <c:if test="${!empty book.title}">
                        <tr>
                            <td>
                                <form:label path="id">
                                    <spring:message text="ID"/>
                                </form:label>
                            </td>
                            <td>
                                <form:hidden path="id"/>
                            </td>
                        </tr>

                    </c:if>
                    <tr>
                        <td>
                            <form:label path="title">
                                <spring:message text="Title"/>
                            </form:label>
                        </td>
                        <td>
                            <form:input path="title"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="description">
                                <spring:message text="Description"/>
                            </form:label>
                        </td>
                        <td>
                            <form:input path="description"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="author">
                                <spring:message text="Author"/>
                            </form:label>
                        </td>
                        <c:choose>
                            <c:when test="${!empty book.title}">
                                <td>
                                    <form:input path="author" readonly="true" disabled="true"/>
                                    <form:hidden path="author"/>
                                </td>
                            </c:when>
                            <c:otherwise>
                                <td>
                                    <form:input path="author"/>
                                </td>
                            </c:otherwise>
                        </c:choose>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="isbn">
                                <spring:message text="ISBN"/>
                            </form:label>
                        </td>
                        <td>
                            <form:input path="isbn"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="printYear">
                                <spring:message text="Year"/>
                            </form:label>
                        </td>
                        <td>
                            <form:input path="printYear"/>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <c:choose>
                                <c:when test="${!empty book.title}">
                                    <input class="btn" type="submit"
                                           value="<spring:message text="Edit Book"/>"/>
                                </c:when>
                                <c:otherwise>
                                    <input class="btn" type="submit"
                                           value="<spring:message text="Add Book"/>"/>
                                </c:otherwise>
                            </c:choose>
                        </td>
                    </tr>
                </table>
            </form:form>
        </td>
    </tr>

</table>



</body>
</html>