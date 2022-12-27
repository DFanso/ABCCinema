<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Java Servlet Pages - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>

<%!

    public String Name()
    {
        return "<br> this is Chethaka Lakshitha";
    }
%>

<%= Name()%>
</body>
</html>