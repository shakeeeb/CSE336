<%-- 
    Document   : projectTest
    Created on : Apr 12, 2015, 12:37:02 AM
    Author     : MK
--%>

<%@page import="java.lang.reflect.Method"%>
<%@page import="java.lang.reflect.Field"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>



        <h1>Session Scope</h1>
        <% session.setAttribute("a1", "First Attribute");
            session.setAttribute("a2", "Second Attribute");
        %>
        <table>
            <c:forEach var="a" items="${sessionScope}" >
                <tr>
                    <td>${a.key}</td> <td>${a.value}</td>
                </tr>
            </c:forEach>
        </table>

        <h1> Servlet Context Scope </h1>
        <table>
            <c:forEach var="a" items="${applicationScope}" >
                <tr>
                    <td>${a.key}</td> <td>${a.value}</td>
                </tr>
            </c:forEach>
        </table>


        <h1> Request Scope </h1>
        <table>
            <c:forEach var="a" items="${requestScope}" >
                <tr>
                    <td>${a.key}</td> <td>${a.value}</td>
                </tr>
            </c:forEach>
        </table>

        <h2>Testing the Input Form/ Form Data Set</h2>
        <table>
            <tr>
                <th>Parameter Name</th>
                <th>Parameter Value</th></tr>
                    <c:forEach var="p" items="${param}">
                <tr>
                    <td> <c:out value="${p.key}"/> </td>
                    <td> <c:out value="${p.value}"/> </td>
                </tr>
            </c:forEach>
        </table>

        <h2>Http Headers</h2>
        <table>
            <tr>
                <th>Header Name</th>
                <th>Header Value</th></tr>
                    <c:forEach var="h" items="${header}">
                <tr>
                    <td class="name"> ${h.key} </td>
                    <td> ${h.value} </td>
                </tr>
            </c:forEach>
        </table>  

        <h2>Bean Properties</h2>
        <%@ page import="java.lang.reflect.*" %>
        <jsp:useBean id="bean" class="com.data.FormBean" scope="application" >
           <%/* <c:set target= "${bean}" property="fName" value="Clover" />
            <c:set target= "${bean}" property="lName" value="Daisy" />*/%>
        </jsp:useBean>



        <%
            Class b = Class.forName("com.data.FormBean");
            Field[] fields = b.getDeclaredFields();
            for (Field f : fields) {
                String name = f.getName();
                out.println("<p>");
                String camelName = "get"
                        + (name.substring(0,1).toUpperCase() + name.substring(1));
                Method m = b.getMethod(camelName);
                out.println("Bean instance variable - " + name + ":");
                out.println(m.invoke(bean));
                out.println("</p>");
            }
        %>



    </body>
</html>
