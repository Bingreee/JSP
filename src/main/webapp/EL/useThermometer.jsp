<%@ page import="el.day0314.Thermometer" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%
Thermometer ther = new Thermometer();
request.setAttribute("t", ther);
%>
<!DOCTYPE html>
<html>
<head>
<title>온도변환</title>
</head>
<body>
	${t.setCelsius('서울', 10.3)}
 	서울 온도 : 섭씨 ${t.getCelsius('서울')}도 / 화씨 ${t.getFahrenheit('서울')}<br>
 	
 	${t.info} <!-- info라는 변수는 없지만 변수명을 적으면 getter를 자동으로 찾음. getInfo 찾아서 실행 -->
 
</body>
</html>