<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="com.example.java3n_jspservletbasics_sd310.FunUtils" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>

<%--1. expressions--%>
<%--   <%=    %>   --%>
<p><%= 3 + 5 %></p>
<p><%= 69 > 70 %></p>
<p><%= new java.util.Date() %></p>
<p><%= new String("Hello sd19310").toUpperCase() %></p>

<%--2. Scriptlets--%>
<%--   <%    %>   --%>
<%
    for (int i=1; i < 6; ++i) {
        out.println(i);
        out.println("<br>");
    }
%>

<%--3. Declarations--%>
<%--   <%!    %>   --%>
<%!
    String makeItLower(String str) {
        return str.toLowerCase();
    }
%>
<p><%= makeItLower("HELLO SD19310") %></p>

<%--4. Calling Java code from JSP--%>
<p><%= com.example.java3n_jspservletbasics_sd310.FunUtils.makeItUpper("hi sd19310") %></p>
<p><%= FunUtils.makeItUpper("hi sd19310") %></p>

<br/>
<a href="hello-servlet">Hello Servlet</a>
</body>
</html>
