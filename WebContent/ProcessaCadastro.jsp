<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="Usuario.UsuarioDAO"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.Date"%>
<%@page import="Usuario.Usuario"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>
<script>
	<%
	String nome = (String) request.getParameter("inputName");
	String email = (String) request.getParameter("emailInput");
	String rua = (String) request.getParameter("addressInput");
	String cep = (String) request.getParameter("inputZip");
	int numero = Integer.parseInt(request.getParameter("numberInput"));
	String cidade = (String) request.getParameter("cityInput");
	String cpf = null;
	String cnpj = null;
	String senha = (String) request.getParameter("passwordInput");
	
	/* Processando data de nascimento */
	
	String inputDate = (String) request.getParameter("inputDate");
	String[] arrayDate = inputDate.split("-");
	
	Date dataNasc = Date.valueOf(LocalDate.of(
		Integer.parseInt(arrayDate[0]),
		Integer.parseInt(arrayDate[1]),
		Integer.parseInt(arrayDate[2])
	));
	
	/* Processando cpf e cnpj */
	
	String inputAccountType = (String) request.getParameter("inputAccountType");
	String inputCpfCnpj = (String) request.getParameter("inputCpfCnpj");
	
	if (inputAccountType.equals("CPF")) {
		cpf = inputCpfCnpj;
	} else if (inputAccountType.equals("CNPJ")) {
		cnpj = inputCpfCnpj;
	}
	
	Usuario usuario = new Usuario(
		nome,
		email,
		cep,
		rua,
		numero,
		cidade,
		cpf,
		cnpj,
		dataNasc
	);
	
	if (UsuarioDAO.criarUsuario(usuario, senha)) {
		out.print(String.format("alert('Usuario %s cadastrado com sucesso!')", usuario.getNome()));
	} else {
		out.print("alert('Falha ao criar usuario.')");
	}
	%>
	window.location = './Login.jsp';
</script>
</body>
</html>