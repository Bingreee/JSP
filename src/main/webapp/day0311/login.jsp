<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>login</title>
</head>
<body>
<%
	String id = request.getParameter("memberId");
	String pw = request.getParameter("memberPw");
	//id와 pw값 같으면 로그인 성공
	if(id.equals(pw)){
		response.sendRedirect("index.jsp");
	}else{
		
%>
로그인 실패!
<button onclick="history.go(-1)">다시 로그인</button>
<% } %>
</body>
</html>