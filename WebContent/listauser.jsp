<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    
    <title>Quem?</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
   
   	<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
    
    <script type="text/javascript" src="bootstrap/jquery/jquery-2.1.0.min.js"></script>
    <script type="text/javascript" src="boootstrap/js/bootstrap.min.js"></script>
    <style type="text/css">
            	.row{
		    margin-top:10px;
		    padding: 0 5px;
		}
		.clickable{
		    cursor: pointer;   
		}

		.panel-heading div {
			margin-top: -18px;
			font-size: 15px;
			text-align: right;
			float: right;
		}
		.panel-heading div span{
			margin-left:5px;
			text-align: right;
			float: right;
		}
		.panel-body{
			display: none;
		}
		.modal .modal-header {
  		border-bottom: none;
 		 position: relative;
		}
		.modal .modal-header .btn {
 		 position: absolute;
 		 top: 0;
  		right: 0;
  		margin-top: 0;
  		border-top-left-radius: 0;
  		border-bottom-right-radius: 0;
		}
		.modal .modal-footer {
  		border-top: none;
  		padding: 0;
		}
		.modal .modal-footer .btn-group > .btn:first-child {
  		border-bottom-left-radius: 0;
		}
		.modal .modal-footer .btn-group > .btn:last-child {
  		border-top-right-radius: 0;
}    </style>


</head>
<body>
<div class="container">
      <div class="row">
        <div class="col-md-10 text-right"></div>
        <div class="col-md-2 text-right"><a class="btn btn-info btn-xs" href="login.jsp">Administração</a>

        </div>
      </div>
      <div class="row"></div>
      <div class="row">
        
      </div>
      <div class="row">
        <div class="col-md-12 text-center">
          <ul class="nav nav-justified nav-list">
            <li class="active">
            <a href="listafunc/GERIDE">GERIDE</a>

            </li>
            <li><a href="listafunc?gerencia=GEHITE">GEHITE</a>

            </li>
            <li><a href="listafunc?gerencia=GERAFI">GERAFI</a>

            </li>
            <li><a href="listafunc?gerencia=GEREMI">GEREMI</a>

            </li>
            <li><a href="listafunc?gerencia=SUREG">SUREG</a>

            </li>
          </ul>
        </div>
      </div>

    
    	<div class="row">
				
			<div class="col-md-12">
				<div class="panel panel-success">
					<div class="panel panel-success">
					<div class="panel-heading">
						
							<span class="clickable filter"  data-toggle="tooltip" title="Toggle table filter" data-container="body">
								<h3 class="panel-title">Pesquisar  <i class="glyphicon glyphicon-search"></i></h3>
							</span>
						
					</div>

					<div class="panel-body">
						<input type="text" class="form-control" id="task-table-filter" data-action="filter" data-filters="#task-table" placeholder="Pesquisar..." />
					</div>
					<table class="table table-bordered table-hover" id="task-table">
						<thead>
							<tr style="background:#f5f5f5">
								<th>Nome</th>
								<th>Email</th>
								<th>Ramal</th>
								<th>Cargo</th>
							</tr>
						</thead>
						<tbody>
						<tr>
							<c:forEach var="funcionarios"  items="${lista}">
               				 <td>${funcionarios.nome }</td> 
          					 <td><a href="mailto:${funcionarios.email }">${funcionarios.email }</a></td>
         					 <td>${funcionarios.ramal }</td>
        					 <td>${funcionarios.cargo }</td>
             			 </tr>
              				<c:set var="emails" value="${emails} ${funcionarios.email}," />
              				</c:forEach>
						</tbody>
					</table>
				</div>
				
		</div>
		</div>
				<div class="col-md-4 text-left">
					<a data-toggle="modal" href="#myModal" class="btn btn-primary">Enviar emails para todos...</a>
				</div>
	</div>
		
</div>

<c:import url="rodape.jsp" />
	<div class="container">
	<div class="row">
		<div id="myModal" class="modal fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
 
                <div class="modal-header">
                    <a class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span></a>
                    <h4 class="modal-title" id="myModalLabel">Copie os emails abaixo:</h4>
                </div>
                <div class="modal-body" id="selecao">
                    
                    <p>${emails}</p>
                </div>
                <div class="modal-footer">
                    <div class="btn-group">
                    <a class="btn btn-primary"  href="copiar?cpy=${emails }">Copiar tudo</a>
                    <button class="btn btn-primary" data-dismiss="modal">Voltar</button>
                    
                </div>
                </div>
 
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dalog -->
</div><!-- /.modal -->
	
	</div>
	</div>
	
	
<script type="text/javascript">



(function(){
    'use strict';
	var $ = jQuery;
	$.fn.extend({
		filterTable: function(){
			return this.each(function(){
				$(this).on('keyup', function(e){
					$('.filterTable_no_results').remove();
					var $this = $(this), search = $this.val().toLowerCase(), target = $this.attr('data-filters'), $target = $(target), $rows = $target.find('tbody tr');
					if(search == '') {
						$rows.show(); 
					} else {
						$rows.each(function(){
							var $this = $(this);
							$this.text().toLowerCase().indexOf(search) === -1 ? $this.hide() : $this.show();
						})
						if($target.find('tbody tr:visible').size() === 0) {
							var col_count = $target.find('tr').first().find('td').size();
							var no_results = $('<tr class="filterTable_no_results"><td colspan="'+col_count+'">Nada encontrado</td></tr>')
							$target.find('tbody').append(no_results);
						}
					}
				});
			});
		}
	});
	$('[data-action="filter"]').filterTable();
})(jQuery);

$(function(){
    // attach table filter plugin to inputs
	$('[data-action="filter"]').filterTable();
	
	$('.container').on('click', '.panel-heading span.filter', function(e){
		var $this = $(this), 
				$panel = $this.parents('.panel');
		
		$panel.find('.panel-body').slideToggle();
		if($this.css('display') != 'none') {
			$panel.find('.panel-body input').focus();
		}
	});
	$('[data-toggle="tooltip"]').tooltip();
})</script>
</body>
</html>

