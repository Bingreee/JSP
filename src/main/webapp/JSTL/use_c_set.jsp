<%@ page import="java.util.*" %>
<%@ page import="jstl.day0314.Member" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--2번째 줄 코드 : 코어 태그 사용할 수 있게하는 uri --%>
<%
	Member m = new Member();
	Map<String,String> pref = new HashMap<>();
%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>

	<c:set var ="mem" value="<%= m %>"/>
	<c:set target = "${mem}" property="name" value="bsh"/>
	
	${mem.name}<br>
	
	<c:set var="pre" value="<%= pref %>" />
	<c:set var="favorColor" value="#{pre.color}" />
	
	좋아하는 색 : ${favorColor}<br>
	<c:set target="${pre}" property="color" value="red" />
	좋아하는 색2 : ${favorColor}<br>
</body>
</html>