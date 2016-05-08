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
          <div class="alert alert-dismissable alert-info"><b></b>Alterar Funcionário</div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-7">
          <form role="form" action="altfunc">
            <div class="form-group">
              <label>Matrícula</label>
              <input class="form-control" placeholder="" required type="text" name="matricula" value="<%=request.getParameter("matricula") %>">
            </div>
            <div class="form-group">
              <label>Nome</label>
              <input class="form-control" placeholder="" required type="text" name="nome" value="<%=request.getParameter("nome") %>">
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1">Email</label>
              <input class="form-control" id="exampleInputEmail1" required name="email" placeholder="Enter email"
              type="email" value="<%=request.getParameter("email") %>">
            </div>
            <div class="form-group">
              <label>Ramal</label>
              <input class="form-control" required placeholder="" type="text" name="ramal" value="<%=request.getParameter("ramal") %>">
            </div>
            <div class="form-group">
              <label>Cargo</label>
              <input class="form-control" required placeholder="" type="text" name="cargo" value="<%=request.getParameter("cargo") %>">
            </div>
            <div class="control-group">
    				<label for="gerencia" class="control-label">	
    					Gerência
    				</label>
    				
    					<select name="gerencia"  required id="gerencia" autofocus >
    						<option value=""></option>
    						<option value="GERIDE">GERIDE</option>
    						<option value="GEREMI">GEREMI</option>
    						<option value="GEHITE">GEHITE</option>
    						<option value="GERAFI">GERAFI</option>
    						<option value="SUREG">SUREG</option>
    					</select>
    				
    		</div>
    		<br>
    		
            <button type="submit" class="btn btn-primary">Submit</button>
            <a  class="btn btn-primary" href="listaadmin.jsp">Voltar</a>
          </form>
        </div>
        <div class="col-md-2"></div>
      </div>
    </div>
  </body>

</html>