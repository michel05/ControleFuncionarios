<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
          <div class="alert alert-dismissable alert-info"><b></b>Alterar Gerência</div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-7">
          <form role="form" action="alteragerencia">
          
            <div class="form-group">
              <label>Gerência</label>
              <input class="form-control" placeholder="" type="text" name="gerencia" value="<%=request.getParameter("gerencia") %>" readonly>
            </div>
            <div class="form-group">
              <label>Matrícula</label>
              <input class="form-control" placeholder="" type="text" name="matricula" value="<%=request.getParameter("mat") %>">
              <input type="hidden" name="tipo" value="<%=request.getParameter("tipo") %>" /> 
            	
            </div>
           
            <button type="submit" class="btn btn-primary">Submit</button>
            <a  class="btn btn-primary" href="listargerencia">Voltar</a>
          </form>
        </div>
        <div class="col-md-2"></div>
      </div>
    </div>
  </body>

</html>