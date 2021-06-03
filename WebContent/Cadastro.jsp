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
    <%@include file='elements/Header.jsp' %>
    
    <script type="text/javascript">
    	document.getElementById('headerButtonSignup').classList.add("disabled");
    	
    	function trocarLabel($i) {
    		document.getElementById('inputCpfCnpj').placeholder = $i;
    	}
    	
    	function verificarSenha() {
			if (document.getElementById('passwordInput').value.length < 8) {
				window.alert("Sua senha deve conter mais de 8 caracteres.");
				return;
			}
		}
    	
    	function verificarCampos($param) {
			var input = document.getElementById($param).value;
			
			for (let index = 0; index < emailInput.length++; index++) {
				input = input.replace(" ","");
			}
			
			if (input === "") {
				window.alert("Algum dos valores está vazio.");
				return;
			}
		}
    </script>
    
    <main>
      <div class="container p-5">
        <div class="text-center">
          <h1>Cadastro</h1>
          <p>Digite abaixo os dados de usuário à ser cadastrado no sistema!</p>
        </div>
        <form action="./ProcessaCadastro.jsp" method="post" class="row g-3 justify-content-center mx-auto" style="max-width: 750px;">
          <label class="form-label">Informações de Usuario</label>
          <div class="col-md-12">
            <input type="text" class="form-control" id="inputName" name="inputName" placeholder="Nome" onblur="" required>
          </div>
          <div class="col-md-2">
            <select id="inputAccountType" name="inputAccountType" class="form-control" onchange="trocarLabel(value);">
              <option selected disabled="disabled">Escolha</option>
              <option value="CPF">CPF</option>
              <option value="CNPJ">CNPJ</option>
            </select>
          </div>
          <div class="col-md-6">
            <input type="text" class="form-control" id="inputCpfCnpj" name="inputCpfCnpj" placeholder="CPF/CNPJ" required>
          </div>
          <div class="col-md-4">
          	<input class="form-control" id="inputDate" name="inputDate" type="date" placeholder="Nascimento" required>
          </div>
          <div class="col-md-8">
            <input type="email" class="form-control" id="emailInput" name="emailInput" placeholder="Email" required>
          </div>
          <div class="col-md-4">
            <input type="password" class="form-control" id="passwordInput" name="passwordInput" placeholder="Senha" required>
          </div>
          <label class="form-label">Informações de Endereço</label>
          <div class="col-10">
            <input type="text" class="form-control" id="addressInput" name="addressInput" placeholder="Rua">
          </div>
          <div class="col-2">
            <input type="number" class="form-control" id="numberInput" name="numberInput" placeholder="Número">
          </div>
          <div class="col-md-8">
            <input type="text" class="form-control" id="cityInput" name="cityInput" placeholder="Cidade" required>
          </div>
          <div class="col-md-4">
            <input type="text" class="form-control" id="inputZip" name="inputZip" placeholder="CEP">
          </div>
          <div class="col-12">
            <div class="form-check">
              <input class="form-check-input" type="checkbox" id="gridCheck" name="gridCheck" required>
              <label class="form-check-label" for="gridCheck">
                Confirmo que meus dados foram digitados corretamente!
              </label>
            </div>
          </div>
          <div class="col-12">
            <div class="d-grid gap-2 d-md-flex justify-content-md-center">
              <button class="btn btn-secundary" onclick="history.back()">Voltar</button>
              <button type="submit" class="btn btn-primary">Continuar</button>
            </div>
          </div>
        </form>
      </div>
    </main>

    <%@include file='elements/footer.html' %>
</body>
</html>