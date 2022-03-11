<%@ page contentType="text/html; charset=UTF-8" %>
<%! public int sum(int a, int b){
		return a + b;
	}
%><%--위 선언부는 잘 안씀 --%>
<!DOCTYPE html>
<html>
<head>
<title>1~10까지의 합</title>
</head>
<body>
<%
	int sum = 0;
	for(int i = 1;i <= 10;i++){
		sum += i;
	}
	out.println(sum);
%><br>
1~10까지의 합 : <%= sum %><br> <%--55 --%>
1~10까지의 합  : <%=1+2+3+4+5+6+7+8+9+10 %><br> <%--55 --%>
1~10까지의 합  : <%="1"+2+3+4+5+6+7+8+9+10 %><br> <%-- 12345678910 --%>
1,10의 합 : <%=sum(1,10) %>
</body>
</html>