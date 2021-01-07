<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Kraje</title>
    <link rel="stylesheet" href="/css/main.css">
</head>
<body>

<form action="filteredCountries">
    <input type="number" name="minPopulation" value="${param.minPopulation}"/>
    <button type="submit">Szukaj</button>
</form>

<c:forEach var="country" items="${countries}">

    <div>

        <h4 class="${country.getPopulation() > 40000000 ? 'red' : ''}">${country.getName()}</h4>

        <div>Stolica: ${country.getCapital()}</div>
        <div>Populacja: ${country.getPopulation()}</div>
        <div>Waluta: ${country.getCurrency()}</div>

    </div>

</c:forEach>


</body>
</html>




