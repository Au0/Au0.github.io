<%--
  Created by IntelliJ IDEA.
  User: Au
  Date: 2015/9/14
  Time: 17:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        *{
            padding: 7px;
        }
        div{
            color: #ff00dd;
        }
    </style>
    <title></title>
</head>
<body>
<%!
    StringBuffer personList;
    int count = 0;

    public void judge() {
        if (count == 0) {
            personList = new StringBuffer();
        }
    }

    public void addPerson(String p) {
        if (count == 0) {
            personList.append(p);
        } else {
            personList.append("，" + p);
        }
        count++;
    }
%>
<%
    String name = request.getParameter("name");
    if (name.length() <= 0 || name.length() > 10) {
%>
<jsp:forward page="inputName.jsp"/>
<%
    }
    judge();
    addPerson(name);
%>
<p align="center">目前共有<%=count%>人浏览了该页面，分别是：
</p>
<div align="center"><%=personList%></div>
</body>

</html>
