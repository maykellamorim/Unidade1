<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.*" %>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirma��o do Estudante </title>
</head>
<body>
	Aluno: <%= request.getParameter("nome") %>
	<br/>
	RGM: <%= request.getParameter("rgm") %>
	<br/>
	<p align="center">
	�ltima atualiza��o:
    <%
    	Calendar calendar = new GregorianCalendar();
		
		String am_pm;
		int hour = calendar.get(Calendar.HOUR);
		int minute = calendar.get(Calendar.MINUTE);
		int seconde = calendar.get(Calendar.SECOND);
		
		if(calendar.get(Calendar.AM_PM)==0){
			am_pm = "AM";
		}
		else {
			am_pm = "PM";
		}
		
		String CT = hour+":"+minute+":"+seconde+" " + am_pm;
		
		out.print(CT);
    %>
    
	<p/>
</body>
</html>