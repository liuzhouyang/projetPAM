<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="commun.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Consulter stockage</title>
</head>
<body>
<section class="content">
    <section class="widget">
        <header>
            <span class="icon">&#59160;</span>
            <hgroup>
                <h1>Stockage</h1>
            </hgroup>
        </header>
        <div class="content">
            <table id="myTable" border="0" width="100">
                <thead>
                <tr>
                    <th>SKU</th>
                    <th>nom</th>
                    <th>nombre en stock</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="stocage" items="${product}">
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${stocage.idProduct}</td>
                        <td>${stocage.title}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </section>
</section>
<%@ include file="footer.jsp" %>