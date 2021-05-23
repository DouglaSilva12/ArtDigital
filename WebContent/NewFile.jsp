<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.Date"%>
<%@page import="Usuario.UsuarioDAO"%>
<%@page import="Usuario.Usuario"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>
	<p>Lista usuarios</p>
	<%
	for (Usuario usuario : UsuarioDAO.listarUsuarios()) {
		out.println(usuario + "<br>");
	}
	%>
	<hr />
</body>
</html>