<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<link href="<c:url value="/res/style.css"/>" rel="stylesheet" type="text/css"/>
</head>
<body>
<h2 class="heading">HOME LIBRARY</h2>
<table>
    <tr>
        <th>Id</th>
        <th>Author</th>
        <th>Book Title</th>
        <th>Year</th>
        <th>Number Pages</th>
        <th>Genre</th>
        <th>Read</th>
        <th>Action</th>
    </tr>
    <c:forEach var="book" items="${booksList}">
        <tr>
            <td>${book.id}</td>
            <td>${book.author}</td>
            <td>${book.bookTitle}</td>
            <td>${book.year}</td>
            <td>${book.numberPages}</td>
            <td>${book.genre}</td>
            <td>${book.read1}</td>
            <td>
                <a href="/edit/${book.id}">edit</a>
                <a href="/delete/${book.id}">delete</a>
            </td>
        </tr>
    </c:forEach>
</table>

<h1 class="heading">Add</h1>
<c:url value="/add" var="add"/>
<a style="font-size: 18px !important;" href="${add}">Add new book</a>
</body>
</html>
