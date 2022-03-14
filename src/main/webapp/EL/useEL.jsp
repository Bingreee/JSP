<%@ page contentType="text/html; charset=UTF-8" %>
<% 
request.setAttribute("name", "bsh");
session.setAttribute("name", "session_name");
%>
<!DOCTYPE html>
<html>
<head>
<title>EL</title>
</head>
<body>
request의 name 속성 : ${name}<br>
session의 name 속성  :${sessionScope.name}<br> <!-- 같은 속성명을 가지고 있다면 명시해주기 -->
<%-- 원래 : <%=request.getAttribute("name") %>  --%>

요청 uri: ${pageContext.request.requestURI}<br>
<%-- 원래 : <%= pageContext.getRequest().getRequestURI()%> --%> 

code파라미터 : ${ param.code }<br> <!-- null값을 빈 문자열로 바꿔서 출력 -->
code파라미터 : <%= request.getParameter("code")%> <!-- null -->
</body>
</html>