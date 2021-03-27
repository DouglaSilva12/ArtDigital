<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap 5.0  -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>

    <title>Cadastro | ArtDigital</title>
</head>
<body>
    <!-- Barra de Navegação -->
    <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between p-3 mb-4 border-bottom">
      <a href="./index.jsp" class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
      
        <img src="./img/logo.png" alt="" height="30">
      </a>
  
      <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
        <li><a class="nav-link px-2 link-dark" aria-current="page" href="./index.jsp">Inicio</a></li>
        <li>
          <a class="nav-link px-2 link-dark dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Categorias
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Categoria 1</a></li>
            <li><a class="dropdown-item" href="#">Categoria 2</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Alguma coisa</a></li>
          </ul>
        </li>
        <li><a href="#" class="nav-link px-2 link-dark">FAQs</a></li>
        <li><a href="#" class="nav-link px-2 link-dark">Sobre</a></li>
      </ul>
  
      <div class="col-md-3 text-end">
        <a class="btn btn-outline-primary" href="./Login.jsp" role="button">Entrar</a>
        <a class="btn btn-primary disabled" href="./Cadastro.jsp" role="button">Cadastrar</a>
      </div>
    </header>
    
    <!-- Conteúdo -->
    <main>
      <div class="container p-5">
        <div class="text-center">
          <h1>Cadastro</h1>
          <p>Digite abaixo os dados de usuário à ser cadastrado no sistema!</p>
        </div>
        <form action="" method="post" class="row g-3 justify-content-center mx-auto" style="max-width: 750px;">
          <div class="col-md-8">
            <input type="text" class="form-control" id="inputName" placeholder="Nome" required>
          </div>
          <div class="col-md-4">
            <div class="input-group">
              <span class="input-group-text" id="usernameText">@</span>
              <input type="text" id="inputUsername" class="form-control" placeholder="Usuario" aria-label="Usuario" aria-describedby="usernameText" required>
            </div>
          </div>
          <div class="col-md-3">
            <select id="inputAccountType" class="form-control">
              <option selected>CPF</option>
              <option>CNPJ</option>
            </select>
          </div>
          <div class="col-md-9">
            <input type="text" class="form-control" id="inputCpfCnpj" placeholder="CPF/CNPJ" required>
          </div>
          <div class="col-md-6">
            <input type="email" class="form-control" id="emailInput" placeholder="Email" required>
          </div>
          <div class="col-md-6">
            <input type="password" class="form-control" id="passwordInput" placeholder="Senha" required>
          </div>
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

    <!-- Rodapé -->
    <footer class="fixed-bottom footer mt-auto py-3 bg-light">
      <div class="container">
        <span class="text-muted">© 2021 ArtDigital</span>
      </div>
    </footer>
</body>
</html>