<html>
<head>
<meta name="layout" content="public" />
<meta content="width=device-width, initial-scale=1" name="viewport">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>s3u</title>
<link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
			
			<!-- CORPO DA PÁGINA -->

		<div class="">
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
			
			<script>
			 function deletar(id) {
			 var resposta = confirm("Deseja exluir esta OS?");
			
			 if (resposta == true){
			 location.href="/s3u/OrdemDeServico/deletar/"+id }

             }
            </script>
				<h3>Listagem de Chamados</h3>
				<!-- Tabela  -->
				<ol class="breadcrumb">
				</ol>
				<br>
				<table id="listarChamados" class="table table-striped table-hover example">
					<thead>
						<tr class= "success">
							
							<th style="text-align: left; padding-left: 10px;">Nº</th>
							<th style="text-align: left; padding-left: 10px;">Situação</th>
							<th style="text-align: left; padding-left: 10px;">Interessado</th>
							<th style="text-align: left; padding-left: 10px;">Data de Emissão</th>
							<th style="text-align: left; padding-left: 10px;">Data de Agendamento</th>
							<th style="text-align: left; padding-left: 10px;">Serviço</th>
							<th style="text-align: left; padding-left: 10px;">Orgão</th>
							<th style="text-align: left; padding-left: 10px;">Telefone</th>
							<th style="text-align: left; padding-left: 15px;">Funções</th>
						</tr>
					</thead>
					<tbody>
						<g:set var="i" value="${1}" />
						<g:each in='${ordemDeServico?}'>
							<tr class='linha_registro'>

								<td class="info">
									<%--${i++} --%>
									${it.id}
								</td>
								<td class="info"><g:if test="${it.status.id == 1}">
										<span class="label label-danger">ABERTO</span>
									</g:if> <g:if test="${it.status.id == 2}">
										<span class="label label-warning">PENDENTE</span>
									</g:if> <g:if test="${it.status.id == 3}">
										<span class="label label-success">CONCLUIDO</span>
									</g:if></td>
								<td class="info">
									${it.interessado}
								</td>


								<td class="info"><g:formatDate format="dd/MM/yyyy" type="datetime"
										style="MEDIUM" date="${it.dataEmissao}" /></td><%--
							    <td><g:formatDate format="dd/MM/yyyy" type="date"
										style="MEDIUM" date="${it.dataAgendamento}" /></td>
								--%><td class="info"><g:formatDate format="dd/MM/yyyy" type="date" style="MEDIUM" date="${it.dataAgendamento}" />
										
								 <g:if test ="${it.dataAgendamento == null}">
                                    ${'----'}								
								 </g:if>		
								</td>
								
								<td class="info">
									${it.tipoServico.tipoServico}
								</td>

								<td class="info">
									${it.orgao.nome}
								</td>
								<td class="info">
									${it.telefone}
								</td>
								
								<td class="info">
									<div class="opcoes">
										<div style="display: inline">
											<div title="Editar" class="btn btn-primary btn-xs btn-flat">
												<a style="color: #fff"
													href="/s3u/ordemDeServico/editarOrdemDeServico/${it.id}"><span>
														<i class="fa fa-pencil"></i>
												</span></a>
											</div>
											<div title="Remover" onclick="deletar(${it.id})"
												class="btn btn-danger btn-xs btn-flat">
												<span class="fa fa-times"></span>
											</div>
											<div title="Ver informações"
												class="btn btn-success btn-xs btn-flat"><a
												style="color: #fff"
												href="/s3u/ordemDeServico/verInfo/${it.id}">
												 <span class="fa fa-info-circle"></span></a>
											</div>
										</div>
									</div>
								</td>

							</tr>
						</g:each>
					</tbody>
					
					
					
				</table>
			</div>

		</section>
		</div>
		</div>
    </body>

</html>





























