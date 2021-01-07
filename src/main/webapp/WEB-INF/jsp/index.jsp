<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.Date" %>
<%@ page import="wsb.jsp.utils.StringUtil" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>TEST JSP</title>
</head>
<body>

<section>
    <h3>EXPRESSIONS</h3>
    <div>
        Dzisiejsza data to <%= new Date() %>
    </div>
</section>

<section>
    <h3>DECLARATIONS</h3>
    <%!
        String makePokemon(String text) {
            StringBuilder result = new StringBuilder();
            String[] stringArray = text.split("");
            for (int i = 0; i < stringArray.length; i++) {
                result.append(i % 2 == 0 ? stringArray[i].toLowerCase() : stringArray[i].toUpperCase());
            }
            return result.toString();
        }
    %>
    <div>
        Zmieniamy w pokemony: <br/>
        <%=makePokemon("JSP jest mega super fajne")%> <br/>
        <%=makePokemon("JAKI PIĘKNY DZIONEK DZISIAJ!")%>
    </div>
</section>

<section>
    <h3>Przeniesienie funkcji do osobnego pliku</h3>
    <div>
        Zmieniamy w pokemony: <br/>
        <%=StringUtil.makePokemon("JSP jest mega super fajne")%> <br/>
        <%=StringUtil.makePokemon("JAKI PIĘKNY DZIONEK DZISIAJ!")%>
    </div>
</section>

<section>
    <h3>SCRIPLETS</h3>
    <% boolean showSpan = true;
        if (showSpan) { %>

    <span>WIDZIMY SPAN</span>

    <% } else { %>

    <span>NIE WIDZIMY SPANA</span>

    <% } %>

    <h3>SCRIPLETS - LOOP</h3>
    <% for (int i = 0; i < 10; i++) { %>

    <span><%= i %></span>

    <% } %>
</section>

<section>
    <h3>JSTL</h3>
    <c:set var="showSpanJSTL" value="${true}"/>
    <c:choose>
        <c:when test="${showSpanJSTL}">
            <span>WIDZIMY SPAN</span>
        </c:when>
        <c:otherwise>
            <span>NIE WIDZIMY SPANA</span>
        </c:otherwise>
    </c:choose>

    <h3>JSTL - LOOP</h3>
    <c:forEach var="i" begin="0" end="9">
        <span>${i}</span>
    </c:forEach>
</section>


</body>
</html>




