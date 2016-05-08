<!DOCTYPE html>
<html>
  
  <head>
    <meta charset="utf-8">
    <title>Quem?</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" src="bootstrap/jquery/jquery-2.1.0.min.js"></script>
    <script type="text/javascript" src="boootstrap/js/bootstrap.min.js"></script>
</script>
    
  </head>
  
  <body>
    <div class="container">
      <div class="row">
        <br>
        <br>
      </div>
      <div class="row">
        <div class="col-md-12 text-center">
          <div class="alert alert-dismissable alert-info"><b>Autenticação</b>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4">
          <form role="form" action="loginform" method="post">
            <div class="form-group">
              <label for="exampleInputEmail1">Usuário</label>
              <input class="form-control" required id="exampleInputEmail1" name="login" placeholder="Enter user">
            </div>
            <div class="form-group">
              <label for="exampleInputPassword1">Senha</label>
              <input class="form-control" required id="exampleInputPassword1" name="senha" placeholder="Password"
              type="password">
            </div>
            <button type="submit" class="btn btn-default">Submit</button>
			<a class="btn btn-primary" href="listauser.jsp">Voltar</a>
          </form>
        </div>
        <div class="col-md-4"></div>
      </div>
    </div>
  </body>

</html>