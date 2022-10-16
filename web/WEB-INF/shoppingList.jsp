<%-- 
    Document   : shoppingList
    Created on : Oct 16, 2022, 9:33:19 AM
    Author     : amida
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping List</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        <p>Hello, ${username}
            <a href="ShoppingList?action=logout">Logout</a>
    </body>
    
    <h2>List</h2>
    <form action="" method="post">
        Add Items: <input type="text" name="item">
        <input type="submit" value="add_item">
        <input type="hidden" name="action" value="add">
    </form>
    
    <form action="" method="post">
        <c:forEach var="item" items="${sessionScope.items}">
            <input type="radio" name="item" value="${item}">
            <label> ${item}</label> <br>
        </c:forEach>
            <input type="submit" value="Delete">
            <input type="hidden" name="action" value="delete">
    </form>
</html>
