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
	List<Usuario> usuarios = UsuarioDAO.listarUsuarios();
	
	for (Usuario usuario : usuarios) {
		out.println(usuario);
	}
	%>
	<hr />
	<p>Procurar por id 1</p>
	<%
	Usuario usuario1 = UsuarioDAO.procurarUsuario(1);
	
	out.println(usuario1);
	%>
	<hr />
	<p>Criar usuario</p>
	<%
	Usuario usuario2 = new Usuario("Aaa","Aaaaa","Aaaa","Aaaa",0,"Aaaa","Aaaa",null,Date.valueOf(LocalDate.of(1999, 12, 31)));
	
	if (UsuarioDAO.criarUsuario(usuario2)) {
		out.println("Usuario criado com sucesso");
		out.println(usuario2);
	} else {
		out.println("Falha ao criar usuario");
	}
	%>
</body>
</html>