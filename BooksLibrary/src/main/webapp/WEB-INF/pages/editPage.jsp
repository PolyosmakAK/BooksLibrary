<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <style>
        body{
            background-color:#DFDFDF;
        }
    </style>
    <link href="<c:url value="/res/style.css"/>" rel="stylesheet" type="text/css"/>

    <c:if test="${empty book.bookTitle}">
        <title>Add</title>
    </c:if>
    <c:if test="${!empty book.bookTitle}">
        <title>Edit</title>
    </c:if>
</head>
<body>

<c:if test="${empty book.bookTitle}">
    <c:url value="/add" var="var"/>
</c:if>
<c:if test="${!empty book.bookTitle}">
    <c:url value="/edit" var="var"/>
</c:if>
<form  class="edit" action="${var}" method="POST">
    <c:if test="${!empty book.bookTitle}">
        <input type="hidden" name="id" value="${book.id}">
    </c:if>
    <label for="author">Author</label>
    <input type="text" name="author" id="author" value="${book.author}" >
    <label for="bookTitle">Book title</label>
    <input type="text" name="bookTitle" id="bookTitle"  value="${book.bookTitle}">
    <label for="year">Year</label>
    <input type="text" name="year" id="year"  value="${book.year}">
    <label for="numberPages">Number pages</label>
    <input type="text" name="numberPages" id="numberPages"  value="${book.numberPages}">
    <label for="genre">Genre</label>
    <input type="text" name="genre" id="genre"  value="${book.genre}">
    <label for="read1">Read</label>
    <input type="checkbox" name="read1" id="read1" value="true">Yes
    <input type="checkbox" value="false">No
    <p> <c:if test="${empty book.bookTitle}">
        <input id="sub" type="submit" value="Add new book">
        <input id="sub" type="button" onclick="history.back();" value="Back to page
"/>
    </c:if>
    </p>
    <p>
    <c:if test="${!empty book.bookTitle}">
        <input id="sub" type="submit" value="Edit book">
        <input id="sub" type="button" onclick="history.back();" value="Back to page
"/>
    </c:if>
    </p>
</form>
</body>
</html>

