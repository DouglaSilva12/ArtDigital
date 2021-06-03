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
    <%@include file='elements/Header.jsp' %>
	
	<main class="flex-shrink-0">
	<div class="container p-5">
	<%
	Object usuarioValidado = session.getAttribute("usuarioValidado");

	if (usuarioValidado != null) {
		Usuario usuario = (Usuario) usuarioValidado;
		
		String usuarioCpfCnpj = "";
		if (usuario.getCpf() == null) {
			usuarioCpfCnpj = usuario.getCnpj();
		} else if (usuario.getCnpj() == null) {
			usuarioCpfCnpj = usuario.getCpf();
		}
	%>
		<h1>Tela do usuario</h1>
		<%
		out.println("NOME: " + usuario.getNome() + "<br>");
		out.println("EMAIL: " + usuario.getEmail() + "<br>");
		out.println("CEP: " + usuario.getCep() + "<br>");
		out.println("RUA: " + usuario.getRua() + "<br>");
		out.println("NUMERO: " + usuario.getNumero() + "<br>");
		out.println("CIDADE: " + usuario.getCidade() + "<br>");
		out.println("CPF/CNPJ: " + usuarioCpfCnpj + "<br>");
		out.println("Data Nascimento: " + usuario.getDataNasc() + "<br>");
		%>
		<hr />
		
		<!-- Modal Atualizar Usuario-->
		<button type="button" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#confirmModalUpdate">
		  Atualizar Dados
		</button>
		
		<div class="modal fade" id="confirmModalUpdate" tabindex="-1" aria-labelledby="confirmModalUpdateLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="confirmModalUpdateLabel">Atualizar Dados</h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		        <form action="./AtualizarUsuario.jsp" method="post" class="row g-3">
		          <label class="form-label">Informações de Usuario</label>
		          <div class="col-md-12">
		            <input type="text" class="form-control" id="inputName" name="inputName" placeholder="Nome" value="<%=usuario.getNome()%>" required>
		          </div>
		          <div class="col-md-12">
		            <input type="text" class="form-control" id="inputCpfCnpj" name="inputCpfCnpj" placeholder="CPF/CNPJ" value="<%=usuarioCpfCnpj %>" disabled required>
		          </div>
		          <div class="col-md-12">
		          	<input class="form-control" id="inputDate" name="inputDate" type="date" placeholder="Nascimento" value="<%=usuario.getDataNasc() %>" required>
		          </div>
		          <div class="col-md-12">
		            <input type="email" class="form-control" id="emailInput" name="emailInput" placeholder="Email" value="<%=usuario.getEmail() %>" required>
		          </div>
		          <label class="form-label">Informações de Endereço</label>
		          <div class="col-md-12">
		            <input type="text" class="form-control" id="addressInput" name="addressInput" placeholder="Rua" value="<%=usuario.getRua() %>">
		          </div>
		          <div class="col-md-12">
		            <input type="number" class="form-control" id="numberInput" name="numberInput" placeholder="Número" value="<%=usuario.getNumero() %>">
		          </div>
		          <div class="col-md-12">
		            <input type="text" class="form-control" id="cityInput" name="cityInput" placeholder="Cidade" value="<%=usuario.getCidade() %>" required>
		          </div>
		          <div class="col-md-12">
		            <input type="text" class="form-control" id="inputZip" name="inputZip" placeholder="CEP" value="<%=usuario.getCep() %>">
		          </div>
		          <div class="col-md-12">
		          	<div class="d-grid gap-2 d-md-flex justify-content-md-center">
						<button type="button" class="btn btn-primary" data-bs-dismiss="modal">Cancelar</button>
			        	<button type="submit" class="btn btn-warning">Atualizar</button>
		          	</div>
				  </div>
		        </form>
		      </div>
		    </div>
		  </div>
		</div>
		
		<!-- Modal Deletar Usuario -->
		<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#confimModalDelete">
		  Deletar Usuario
		</button>
		
		<div class="modal fade" id="confimModalDelete" tabindex="-1" aria-labelledby="confimModalDeleteLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="confimModalDeleteLabel">Deletar Usuario</h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		        <p>Você quer mesmo deletar o usuario de nome <% out.print(usuario.getNome()); %>? Esta operação não pode ser desfeita.</p>
		        <div class="d-grid gap-2 d-md-flex justify-content-md-center">
			        <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Cancelar</button>
			        <button type="button" class="btn btn-danger" data-bs-dismiss="modal" onclick="botaoDeletarUsuario()">Deletar</button>
		        </div>
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