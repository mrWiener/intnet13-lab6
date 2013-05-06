<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>

<head>
    <title>Börsen</title>
</head>

<body>

<h3>Addera ett värdepapper</h3>

<form action="/trade">
    <input type="hidden" name="action" value="addSecurity">
    <input type="text" name="security" value=""><br>
    <input type="submit" value="Utför">
</form>

<h3>Lägg en köp/säljorder på ett värdepapper</h3>

<form action="/trade">
    <input type="hidden" name="action" value="addOrder">
    Värdepapper: <select name="security">
    <option value="Ericsson">Ericsson</option>
    <option value="Ericsson">Telia</option>
    <option value="Ericsson">Volvo</option>
</select><br>
    Köp: <input type="radio" name="buyOrSell" value="B" checked>
    Sälj: <input type="radio" name="buyOrSell" value="S"><br>
    Pris: <input type="text" name="price" value=""><br>
    Antal: <input type="text" name="amount" value=""><br>
    <input type="submit" value="Utför">
</form>

<h3>Visa avslutade affärer i ett värdepapper</h3>

<form action="/trade">
    <input type="hidden" name="action" value="viewTrades">
    Värdepapper: <select name="security">
    <option value="Ericsson">Ericsson</option>
    <option value="Ericsson">Telia</option>
    <option value="Ericsson">Volvo</option>
</select><br>
    <input type="submit" value="Utför">
</form>


</body>

</html>
