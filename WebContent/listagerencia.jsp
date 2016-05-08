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
        <div class="col-md-10 text-right">
          <br>
          <br>
          <br>
          <br>
        </div>
        <div class="col-md-2 text-right"><a class="btn btn-info btn-xs" href="listauser.jsp">Logout<br></a>
 
        </div>
      </div>
      <div class="row"></div>
      <div class="row">
        
        <div class="col-md-4 text-center"><a class="btn btn-lg btn-success" href="addfuncionario.jsp">Adicionar Funcionário</a>
        </div>
        <div class="col-md-4 text-center"><a class="btn btn-lg btn-success">Gerenciar Gerências</a>
        </div>
      </div>
      <div class="row">
        <br>
        <br>
      </div>
      <div class="row">
        
      </div>
      <div class="row">
        <div class="col-md-12" id="formContainer">
          <table class="table table-bordered table-hover">
            <thead>
              <tr  style="background:#f5f5f5">
                <th>Nome</th>
                <th>Gerente</th>
                <th>Secretária</th>
                
              </tr>
            </thead>
            <tbody>
              <tr>
				<c:forEach var="gerencias"  items="${lista}">				
                <td>${gerencias.gerencia }</td>
				<td>${gerencias.func_gerente.nome } 
					<a style="float:right" class="btn btn-warning text-right" id="flipToLogin" class="flipLink" href="formalteragerencia.jsp?gerencia=${gerencias.gerencia }&mat=${gerencias.func_gerente.matricula}&tipo=gerente">Alterar</a></td>
				<td>${gerencias.func_secretaria.nome }
					<a style="float:right" class="btn btn-warning text-right" id="flipToLogin" class="flipLink" href="formalteragerencia.jsp?gerencia=${gerencias.gerencia }&mat=${gerencias.func_secretaria.matricula}&tipo=secretaria">Alterar</a></td>
                </tr>
              </c:forEach>
            </tbody>
          </table>
          <a class="btn btn-primary" href="listaadmin.jsp">Voltar</a>
          
        </div>
      </div>
      
</div>
<c:import url="rodape.jsp" />
</body>
</html>