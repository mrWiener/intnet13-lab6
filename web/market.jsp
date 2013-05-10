<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:useBean id="securities" scope="request" type="java.util.List"/>
<jsp:useBean id="trades" scope="request" type="java.util.List"/>
<jsp:useBean id="error" scope="request" type="java.lang.String"/>

<html>

<head>
    <title>Börsen</title>
</head>

<body>

<c:if test="${error != ''}">
<h3>${error}
</c:if>

<h3>Addera ett värdepapper</h3>

<form action="/market">
    <input type="hidden" name="action" value="addSecurity">
    <input type="text" name="security" value=""><br>
    <input type="submit" value="Utför">
</form>

<h3>Lägg en köp/säljorder på ett värdepapper</h3>

<form action="/market">
    <input type="hidden" name="action" value="addOrder">
    Värdepapper: <select name="security">
    <c:forEach var="security" items="${securities}">
        <option>${security.name}</option>
    </c:forEach>
</select><br>
    Köp: <input type="radio" name="buyOrSell" value="B" checked>
    Sälj: <input type="radio" name="buyOrSell" value="S"><br>
    Pris: <input type="text" name="price" value=""><br>
    Antal: <input type="text" name="amount" value=""><br>
    Ditt namn: <input type="text" name="customer" value=""><br>
    <input type="submit" value="Utför">
</form>

<h3>Visa avslutade affärer i ett värdepapper</h3>

<form action="/market">
    <input type="hidden" name="action" value="viewTrades">
    Värdepapper: <select name="security">
    <c:forEach var="security" items="${securities}">
        <option>${security.name}</option>
    </c:forEach>
</select><br>
    <input type="submit" value="Utför">
</form>
<c:if test="${fn:length(trades) > 0}">
        <table>

                <th>Värdepapper</th>
                <th>Pris</th>
                <th>Summa</th>
                <th>Säljare</th>
                <th>Köpare</th>
                <th>Transaktionsdatum</th>
            </tr>
            <c:forEach items="${trades}" var="trade">
            <tr>
                <td>${trade.security}</td>
                <td>${trade.price}</td>
                <td>${trade.amount}</td>
                <td>${trade.seller}</td>
                <td>${trade.buyer}</td>
                <td>${trade.currentTime}</td>
            </tr>
            </c:forEach>
        </table>
</c:if>
</body>

</html>
