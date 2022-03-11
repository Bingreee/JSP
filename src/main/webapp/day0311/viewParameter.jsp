<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Map"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<% request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<title>요청 파라미터 출력</title>
</head>
<body>
<b> request.getParmeter() 사용</b><br>
name 파라미터 : <%= request.getParameter("name") %><br> <%--표현식에서는 ; 안찍음 --%>
address 파라미터 : <%= request.getParameter("address") %><br>

<p>
<b>request.getParameterValues()사용</b><br>
<%
	String[] pets = request.getParameterValues("pet");
	if(pets != null){
		for(String p : pets){
			out.println(p + "  ");
		}
	}
%>
</p>

<p>
<b>request.getParameterNames()사용</b>
<%
	Enumeration <String> names = request.getParameterNames();
	while(names.hasMoreElements()){
		out.print(names.nextElement()+"<br>");
	}

%>
</p>

<p>
<b>reques.getParameterMap()사용</b>
<%
	Map<String, String[]> map = request.getParameterMap();
	String[] n =  map.get("name");
	if(n != null){
		out.print("이름 : "+n[0]);
	}

%>
</p>
</body>
</html>