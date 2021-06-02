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
<script>
function botaoDeletarUsuario() {
	window.location = "./DeletarUsuario.jsp";
}
</script>
</head>
<body>
	<%@include file='elements/header.html'%>
	
	<main class="flex-shrink-0">
	<div class="container p-5">
	<%
	Object usuarioValidado = session.getAttribute("usuarioValidado");

	if (usuarioValidado != null) {
		Usuario usuario = (Usuario) usuarioValidado;
	%>
		<h1>Tela do usuario</h1>
		<%
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
		<hr />
		<button class="btn btn-warning" onclick="">Atualizar Dados</button>
		
		<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#confirmModal">
		  Deletar Usuario
		</button>
		
		<!-- Modal -->
		<div class="modal fade" id="confirmModal" tabindex="-1" aria-labelledby="confirmModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="confirmModalLabel">Modal title</h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		        <p>Você quer mesmo deletar o usuario de nome <% out.print(usuario.getNome()); %>? Esta operação não pode ser desfeita.</p>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Cancelar</button>
		        <button type="button" class="btn btn-danger" data-bs-dismiss="modal" onclick="botaoDeletarUsuario()">Deletar</button>
		      </div>
		    </div>
		  </div>
		</div>
	<%
	} else {
		%><p>Não existe um usuario logado no sistema.</p><%
	}
	%>
	</div>
	</main>
	
	<%@include file='elements/footer.html'%>
</body>
</html>