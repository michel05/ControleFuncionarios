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
  </head>
  
  <body>
    <div class="container">
      <div class="row">
        <br>
        <br>
      </div>
      <div class="row">
        <div class="col-md-12 text-center">
          <div class="alert alert-dismissable alert-info"><b>Cadastro Funcionário</b>
            <br>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-7">
          <form role="form" action="addfunc" method="post">
            <div class="form-group">
              <label>Matrícula</label>
              <input class="form-control" placeholder="" required type="text" name="matricula">
            </div>
            <div class="form-group">
              <label>Nome</label>
              <input class="form-control" placeholder="" required type="text" name="nome">
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1">Email</label>
              <input class="form-control" id="exampleInputEmail1" required placeholder="Enter email"
              type="email" name="email">
            </div>
            <div class="form-group">
              <label>Ramal</label>
              <input class="form-control" placeholder="" required  type="text" name="ramal">
            </div>
            <div class="form-group">
              <label>Cargo</label>
              <input class="form-control" placeholder="" required type="text" name="cargo">
            </div>
            
            <div class="control-group">
    				<label for="gerencia" class="control-label">	
    					Gerência
    				</label>
    				
    					<select name="gerencia" id="gerencia" required>
    						<option value=""></option>
    						<option value="GERIDE">GERIDE</option>
    						<option value="GEREMI">GEREMI</option>
    						<option value="GEHITE">GEHITE</option>
    						<option value="GERAFI">GERAFI</option>
    						<option value="SUREG">SUREG</option>
    					</select>
    				
    		</div>
    		<br>
    		
    		
            <button type="submit" class="btn btn-primary">Gravar</button>
			<a class="btn btn-primary" href="listaadmin.jsp">Voltar</a>
          </form>
        </div>
        <div class="col-md-2"></div>
      </div>
    </div>
    
   
  </body>

</html>