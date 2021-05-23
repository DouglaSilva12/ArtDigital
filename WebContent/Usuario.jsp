<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="Usuario.Usuario"%>
<%@page import="Usuario.UsuarioDAO"%>
<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%@include file='elements/bootstrap5.html'%>
<title>Usuario | ArtDigital</title>
</head>
<body>
	<%@include file='elements/header.html'%>

	<main class="flex-shrink-0">
	<div class="container p-5">
		<h1>Tela do usuario</h1>
		<%
		Usuario usuario = (Usuario) session.getAttribute("usuarioValidado");
		
		out.println("ID: " + usuario.getId() + "<br>");
		out.println("NOME: " + usuario.getNome() + "<br>");
		out.println("EMAIL: " + usuario.getEmail() + "<br>");
		out.println("CEP: " + usuario.getCep() + "<br>");
		out.println("RUA: " + usuario.getRua() + "<br>");
		out.println("NUMERO: " + usuario.getNumero() + "<br>");
		out.println("CIDADE: " + usuario.getCidade() + "<br>");
		out.println("CPF: " + usuario.getCpf() + "<br>");
		out.println("CNPJ: " + usuario.getCnpj() + "<br>");
		out.println("Data Nascimento: " + usuario.getDataNasc() + "<br>");
		%>
	</div>
	</main>

	<%@include file='elements/footer.html'%>
</body>
</html>