<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: huyen
  Date: 25/09/2019
  Time: 16:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
<%!
    Map<String, String> dic = new HashMap<>();
%>
<%
    dic.put("hello", "xin chao");
    dic.put("how", "The nao");
    dic.put("book", "Quyen vo");
    dic.put("computer", "Maytinh");
    String search = request.getParameter("search");
    String result = dic.get(search);
    PrintWriter writer = response.getWriter();
    if (result != null) {
        writer.println("Word: " + search);
        writer.println("<br/>Result: "+result);
    }else {
        writer.println("Not found");
    }
%>

</body>
</html>
