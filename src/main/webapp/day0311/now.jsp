<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.Date" %>
<%@ page trimDirectiveWhitespaces="true" %> <%--불필요한 공백 제거 --%>
<!DOCTYPE html>
<html>
<head>
<title>현재 시간</title>
</head>
<!-- html주석. 전송 되어서 페이지 소스보기에 출력됨 -->
<%-- JSP주석. 전송 안됨. --%>
<%-- <%%>로 자바 코드라는 것을 알려줘야 함. 그냥 쓰면 텍스트로 인식 --%>
<body>
<% 
Date now = new java.util.Date(); 
%> 
현재 시간 : <%=now %>
</body>
</html>