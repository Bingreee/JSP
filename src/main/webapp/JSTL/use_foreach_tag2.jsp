<%@ page import="jstl.day0314.Member" %>
<%@ page import="java.util.*" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
ArrayList <Member> list= new ArrayList<>();
list.add(new Member("자바킴", 10));
list.add(new Member("오라클킴", 20));
list.add(new Member("스프링킴", 30));
list.add(new Member("파이썬킴", 40));

request.setAttribute("mList", list);
%>
<!DOCTYPE html>
<html>
<head>
<title>list 출력</title>
</head>
<body>
<table border=1>
	<tr><th>name</th><th>age</th></tr>
	<c:forEach var="i" items="${mList}">
		<tr><td>${i.name}</td><td>${i.age}</td></tr>
	</c:forEach>
</table>
</body>
</html>