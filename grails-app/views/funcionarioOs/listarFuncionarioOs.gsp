<!DOCTYPE html>
<html lang="pt-br">
<head>
<title>Cadastro de Funcionarios</title>
<meta name="layout" content="public" />
</head>
<body>
	<script>

function printDiv(id)
{
  var divToPrint=document.getElementById(id);
  newWin= window.open("");

  newWin.document.write("<table border='0'>");
  newWin.document.write("<tr>");
  
  newWin.document.write("<td>");
  newWin.document.write("<p style='text-align:center; '>PREFEITURA MUNICIPAL DE SÃO GONÇALO DO AMARANTE - RN</p>");
  newWin.document.write("<p style='text-align:center; margin-top:-8px;'>SUBSECRETARIA DE TECNOLOGIA DA INFORMACAO E CIÊNCIA</p>");
  newWin.document.write("</td>");
  newWin.document.write("</tr>");
  newWin.document.write("</table><br>");
  
  newWin.document.write("RELATÓRIO GERENCIAL <br><br>");
  newWin.document.write(" ");
  newWin.document.write(divToPrint.outerHTML);
  newWin.print();
  newWin.close();
}
</script>

	<script>
       function deletar(id) {
        var resposta = confirm("Deseja exluir este Funcionario?");

        if (resposta == true){
        location.href="/s3u/funcionarioOs/deletarFuncionarioOs/"+id }

       }
 	</script>
 	
 	
 	
 	<div class="wrapper">
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">     
			<!-- Content Header (Page header) -->
			
			<!-- CORPO DA PÁGINA INICIAL -->
 	
 	
 	
	<section class="content-header">
		<h1>
			Gerenciamento de Funcionários
		</h1>
		<ol class="breadcrumb">
			<li class="active"><g:link controller="Layout" action="index">
					<i class="fa fa-dashboard"></i> Inicio</g:link></li>
			<li><g:link controller="FuncionarioOs" action="listar">Funcionarios</g:link></li>
		</ol>
	</section>

	<!-- CORPO DA PÁGINA -->
	<section class="content">
		
			<g:if test="${ok}">
				<div class="alert alert-success">
					${ok}
				</div>
			</g:if>
			<g:if test="${erro}">
				<div class="alert alert-danger">
					${erro}
				</div>
			</g:if>
			
			<div class="box box-white">
				<table id="listarFuncionarioOs"
					class="table table-striped table-hover example">
					<thead>
						<tr>
							<th style="width: 60px;"></th>
							<th style="text-align: left;">Nome</th>
							<th style="text-align: left;">Matricula</th>
							<th style="text-align: left;">Status</th>
						</tr>
					</thead>
					<tbody>
						<g:each in='${funcionarioOs?}'>
							<tr class='linha_registro'>
								<td>
									<div class="opcoes">
										<div style="display: inline">

											<g:if test="${user}">

												<div title ="Editar Funcionario"
												    class="btn btn-primary btn-xs btn-flat"><a
													style="color: #fff"
													href="/s3u/funcionarioOs/editarFuncionarioOs/${it.id}">
													<i class="fa fa-edit"></i></a></div>
												<div title="Excluir Funcionário"
												    onclick="deletar(${it.id})"
													class="btn btn-danger btn-xs btn-flat">
													<i class="fa fa-trash"></i></div>
													
												<div title="Ver informações"
												class="btn btn-success btn-xs btn-flat"><a
												style="color: #fff"
												href="/s3u/funcionarioOs/verInfo/${it.id}">
												 <span class="fa fa-info-circle"></span></a>
											</div>	
													
											</g:if>
										</div>
									</div>
								</td>
								<td>
									${it.nomeFuncionario}
								</td>
								<td>
									${it.matricula}
								</td>
								<td>
									${it.status}
								</td>

							</tr>
						</g:each>
					</tbody>
				</table>
			</div>

			<!-- Button trigger modal -->
			<g:if test="${user}">
				<button class="btn btn-primary btn-flat" data-toggle="modal"
					data-target="#myModal">
					<i class="fa fa-plus"></i> Novo Funcionário
				</button>
			</g:if>

			<!--
			<button class="btn btn-danger btn-flat"
				onClick="printDiv('listarFuncionarioOs')">
				<i class="glyphicon glyphicon-print"></i> Imprimir
			</button> -->
			
			<!-- Modal -->
			<g:if test="${user}">
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">
									<span aria-hidden="true">&times;</span><span class="sr-only">Fechar</span>
								</button>
								<h4 class="modal-title" id="myModalLabel">Cadastro de Funcionário</h4>
							</div>
							<div class="modal-body">
								<g:form controller="FuncionarioOs" action="salvarFuncionarioOs" class="form">

									<fieldset>

										<div class="form-heading">
											<label>Nome</label>
											<div class="controls">
												<g:textField class="form-control" name="nomeFuncionario" value=""
													required="true" />
											</div>
										</div>
										<br>
										<div class="form-heading">
											<label>Matricula</label>
											<div class="controls">
												<g:textField class="form-control" name="matricula"
													required="true" value="" />
											</div>
										</div>
																																								
									</fieldset>
									
									<div class="modal-footer">
										<button type="submit" class="btn btn-primary btn-flat">
											<i class="fa fa-save"></i> Cadastrar
										</button>
										<input type="reset" class="btn btn btn-flat" value="Limpar">
									</div>
									
								</g:form>
									
							</div>
								
						</div>
							
					</div>
						
				</div>
					
			</g:if>
		

			
	</section>
</div>
</div>


</body>
	
</html>