<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    
    <title>Quem?</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
   
   	
    
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
		
    </style>


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
            <li class="active"><a href="listafunc">GERIDE</a>

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
							<jsp:useBean id="dao" class="dao.FuncionarioDao"/> 
               				 <c:forEach var="funcionarios"  items="${dao.lista}">
               				 <td><c:out value="${funcionarios.nome }" /></td> 
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
