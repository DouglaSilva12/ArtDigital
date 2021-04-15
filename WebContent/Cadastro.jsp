<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<%@include file='elements/bootstrap5.html' %>

    <title>Cadastro | ArtDigital</title>
</head>
<body>
    <%@include file='elements/header.html' %>
    
    <script type="text/javascript">
    	document.getElementById('headerButtonSignup').classList.add("disabled");
    	
    	function trocarLabel($i) {
    		document.getElementById('inputCpfCnpj').placeholder = $i;
    	}
    </script>
    
    <main>
      <div class="container p-5">
        <div class="text-center">
          <h1>Cadastro</h1>
          <p>Digite abaixo os dados de usuário à ser cadastrado no sistema!</p>
        </div>
        <form action="" method="post" class="row g-3 justify-content-center mx-auto" style="max-width: 750px;">
          <label class="form-label">Informações de Usuario</label>
          <div class="col-md-8">
            <input type="text" class="form-control" id="inputName" placeholder="Nome" required>
          </div>
          <div class="col-md-4">
            <div class="input-group">
              <span class="input-group-text" id="usernameText">@</span>
              <input type="text" id="inputUsername" class="form-control" placeholder="Usuario" aria-label="Usuario" aria-describedby="usernameText" required>
            </div>
          </div>
          <div class="col-md-2">
            <select id="inputAccountType" class="form-control" onchange="trocarLabel(value);">
              <option selected disabled="disabled">Escolha</option>
              <option value="CPF">CPF</option>
              <option value="CNPJ">CNPJ</option>
            </select>
          </div>
          <div class="col-md-6">
            <input type="text" class="form-control" id="inputCpfCnpj" placeholder="CPF/CNPJ" required>
          </div>
          <div class="col-md-4">
          	<input class="form-control" id="inputDate" type="date" placeholder="Nascimento" required>
          </div>
          <div class="col-md-8">
            <input type="email" class="form-control" id="emailInput" placeholder="Email" required>
          </div>
          <div class="col-md-4">
            <input type="password" class="form-control" id="passwordInput" placeholder="Senha" required>
          </div>
          <label class="form-label">Informações de Endereço</label>
          <div class="col-12">
            <input type="text" class="form-control" id="addressInput" placeholder="Endereço">
          </div>
          <div class="col-md-6">
            <input type="text" class="form-control" id="cityInput" placeholder="Cidade" required>
          </div>
          <div class="col-md-4">
            <select id="inputState" class="form-control">
              <option selected>Estado</option>
              <option>PE</option>
            </select>
          </div>
          <div class="col-md-2">
            <input type="text" class="form-control" id="inputZip" placeholder="CEP">
          </div>
          <div class="col-12">
            <div class="form-check">
              <input class="form-check-input" type="checkbox" id="gridCheck" required>
              <label class="form-check-label" for="gridCheck">
                Confirmo que meus dados foram digitados corretamente!
              </label>
            </div>
          </div>
          <div class="col-12">
            <div class="d-grid gap-2 d-md-flex justify-content-md-center">
              <button class="btn btn-outline-secundary" onclick="history.back()">Voltar</button>
              <button type="submit" class="btn btn-outline-primary">Continuar</button>
            </div>
          </div>
        </form>
      </div>
    </main>

    <%@include file='elements/footer.html' %>
</body>
</html>