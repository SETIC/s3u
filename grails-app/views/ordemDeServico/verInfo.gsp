<!DOCTYPE html>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.security.Timestamp"%>
<html>
<head>
<meta name="layout" content="public" />
<meta content="width=device-width, initial-scale=1" name="viewport">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>s3u</title>
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->

			<script>

function printDiv(id)
{
  var divToPrint=document.getElementById(id);
  newWin= window.open("");
  newWin.document.write("<style=''>");

  newWin.document.write("<table border='0'>");
  newWin.document.write("<tr>");
  newWin.document.write("<td> <img src='${ request.getRequestURL().substring(0, request.getRequestURL().indexOf('s3u/'))}s3u/static/images/sga.png'; style='width:100px; float:left; margin-top:-9px;'> </td>");
  newWin.document.write("<td>");
  newWin.document.write("<p style='text-align:center; '>PREFEITURA MUNICIPAL DE SÃO GONÇALO DO AMARANTE - RN</p>");
  newWin.document.write("<p style='text-align:center; margin-top:-8px;'>SUBSECRETARIA DE TECNOLOGIA DA INFORMAÇÃO E CIÊNCIA - SETIC</p>");
  newWin.document.write("</td>");
  newWin.document.write("</tr>");
  newWin.document.write("</table><br>");
  newWin.document.write("<h4 style='text-align:center'>${session["escname"]}</h4><br/><br/>");
  newWin.document.write("<h4 style='margin-top:-38px; text-align:center'>INFORMAÇÕES DOS CHAMADOS</h4>");
  newWin.document.write("<hr>");
  newWin.document.write("<style type='text/css' >");
  newWin.document.write("#"+id+'{border:none; font-size: 12pt; }');
  newWin.document.write("body{font-family:Arial;}");
  newWin.document.write("img{margin-lefth: 10px;}");
  newWin.document.write("label{text-transform: uppercase; font-weight:bold; }");
  newWin.document.write("</style>");
  newWin.document.write(" ");
  newWin.document.write(divToPrint.outerHTML);
  var now = new Date();

  meses = new Array(12);

  meses[0] = "Janeiro";
  meses[1] = "Fevereiro";
  meses[2] = "Março";
  meses[3] = "Abril";
  meses[4] = "Maio";
  meses[5] = "Junho";
  meses[6] = "Julho";
  meses[7] = "Agosto";
  meses[8] = "Setembro";
  meses[9] = "Outubro";
  meses[10] = "Novembro";
  meses[11] = "Dezembro";
  
  newWin.document.write ("<center style='font-size:11px;'><br/>Gerado dia " + now.getDate() + " de " + meses[now.getMonth()] + " de " + now.getFullYear() + " às " + now.getHours()+":"+now.getMinutes()+"</center>");
  newWin.print();
  newWin.close();
}

function printDivLaudo() {
	
	var endereco = "${request.getRequestURL().substring(6, request.getRequestURL().indexOf(':8080/'))}";
	var idOs = document.getElementById("idOsParaLaudo").value;
	 

	  $.ajax({
		  
           type: "GET",
            url: "http://"+endereco+":8080/s3u/ordemDeServico/getOrdemDeServicoById/"+idOs,
            dataType: "json",
            success: function(result){


            	meses = new Array(12);

	   			meses[0] = "Janeiro";
    			meses[1] = "Fevereiro";
    			meses[2] = "Março";
    			meses[3] = "Abril";
    			meses[4] = "Maio";
    			meses[5] = "Junho";
    			meses[6] = "Julho";
    			meses[7] = "Agosto";
    			meses[8] = "Setembro";
    			meses[9] = "Outubro";
    			meses[10] = "Novembro";
    			meses[11] = "Dezembro";

    			var mOs = parseInt(result.dataEmissao.toString().substring(5,7))-1;
            	var data = new Date();
            	var dataFormatada = new Date();
            	dataFormatada = (data.getDay() + "/"+(data.getMonth()+1)+"/"+data.getFullYear());

            	var dataEmissao = result.dataEmissao.toString().substring(8,10) + " de " + meses[mOs] + " de " + result.dataEmissao.toString().substring(0,4);
            	


            	
                newWin= window.open("");
                newWin.document.write('<table cellspacing="0" cellpading="0" border="0" >');
                
                newWin.document.write("<tbody>");
                
                newWin.document.write('<tr>');// Linha do cabeçalho
                newWin.document.write('<td width="25%" align="center"><img src="${ request.getRequestURL().substring(0, request.getRequestURL().indexOf('s3u/'))}s3u/static/images/logo-setic-p.png"></td>');                
                newWin.document.write('<td width="50%" colspan="2" align="center" style="font-size: 12"> ESTADO DO RIO GRANDE DO NORTE PREFEITURA MUNICIPAL DE S&Atilde;O GON&Ccedil;ALO DO AMARANTE SECRETARIA MUNICIPAL DE DESENVOLVIMENTO ECONOMICO E TURISMO SUBSECRETARIA DE TECNOLOGIA DA INFORMA&Ccedil;&Atilde;O E CI&Ecirc;NCIA  <br/> Centro Administrativo &agrave; Rua Alexandre Cavalcanti, s/n-CEP 59.290-000 CNPJ n&deg; 08.079.402/0001-35</td>');
                newWin.document.write('<td width="25%" align="center"><img src="${ request.getRequestURL().substring(0, request.getRequestURL().indexOf('s3u/'))}s3u/static/images/sga.jpg"></td>');
                newWin.document.write("</tr>");

        		newWin.document.write("<tr>"); // Linha do número do memorando
                newWin.document.write('<td colspan="4">');
                newWin.document.write('<p style="text-align: left;"><br/><br/>Laudo Digital n&ordm;  '+result.codLaudo+'D/2017. </p>');
                newWin.document.write("</td>");
                newWin.document.write("</tr>");
                
                <%
				// ScriptLet gsp com a data atual 
				def myDate = new Date() 
				def exibirData = myDate.format("dd") + " de " + myDate.format("MMMM")  + " de " + myDate.format("yyyy")
				%>
                newWin.document.write("<tr>"); // Linha da data
                newWin.document.write('<td colspan="4" align="right"><br/><br/>S&atilde;o Gon&ccedil;alo do Amarante - RN, ${exibirData}</td>');
                newWin.document.write("</tr>");

                newWin.document.write("<tr>"); // Linha do destinatário
                newWin.document.write('<td colspan="4">');
                newWin.document.write("<p><br/><br/>Ao Senhor(a)<br/>" + result.funcionario +", da<br/>Secretaria Municipal de Sa&uacute;de &ndash; Vigil&acirc;ncia Sanit&aacute;ria. </p>");
                newWin.document.write("</td>");
                newWin.document.write("</tr>");

                newWin.document.write("<tr>"); // Linha do Assunto
                newWin.document.write('<td colspan="4" align="center">');
                newWin.document.write("<p><br/><br/><strong>Assunto: Laudo T&eacute;cnico</strong><br/>Ordem de Servi&ccedil;o N&ordm; "+ result.id +". </p>");
                newWin.document.write("</td>");
                newWin.document.write("</tr>");
                
                newWin.document.write("<tr>"); // Linha de corpo do laudo
                newWin.document.write('<td colspan="4">');
                newWin.document.write('<p style="text-align: justify;"><br/><br/>&nbsp; &nbsp; &nbsp;Cumprimentando lhe cordialmente, e visando o aperfei&ccedil;oamento dos servi&ccedil;os prestados pela SETIC, venho atrav&eacute;s deste, respeitosamente apresentar o laudo constatado. No dia '+ dataEmissao +' a '+result.orgao+' apresentou-nos a seguinte solicitação: '+ result.descricao +' e foi procedido da seguinte forma: '+result.solucao);
                newWin.document.write("</td>");
                newWin.document.write("</tr>");

                newWin.document.write("<tr>"); // Linha do fechamento padrão
                newWin.document.write('<td colspan="4" style="text-align: justify;"><br/><br/>&nbsp; &nbsp; &nbsp;Certo de contarmos com vossa compreens&atilde;o, renovamos aqui os nossos sinceros votos de estima e considera&ccedil;&atilde;o, nos colocamos a inteira disposi&ccedil;&atilde;o para eventuais esclarecimentos. Atenciosamente,</td>');
                newWin.document.write("</tr>");

                newWin.document.write("<tr>"); // Linha das assinaturas do SETIC
                newWin.document.write('<td colspan="2" style="font-size: 12px" align="center">');
                newWin.document.write("<br/><br/><br/>_______________________________<br/>");
                newWin.document.write("HENRIQUE LIMA EMERENCIANO<br/>");
                newWin.document.write("Subsecret&aacute;rio de Tecnologia da Informa&ccedil;&atilde;o e Ci&ecirc;ncia");
                newWin.document.write("</td>");
                newWin.document.write('<td colspan="2" style="font-size: 12px" align="center">'); // Linha de assinatura do técnico
                newWin.document.write("<br/><br/><br/>_______________________________<br/>");
                newWin.document.write('${session["nomecuser"]}'+"<br/>");
                newWin.document.write("T&eacute;cnico");
                newWin.document.write("</td>");
                newWin.document.write("</tr>");

                newWin.document.write("<tr>"); // Linha das assinaturas do Solicitante
                newWin.document.write('<td colspan="4" style="font-size: 12px" align="center">'); // Linha de assinatura do técnico
                newWin.document.write("<br/><br/><br/>_______________________________<br/>");
                newWin.document.write(result.funcionario+"<br/>");
                newWin.document.write("Solicitante");
                newWin.document.write("</td>");
                newWin.document.write("</tr>");                
                
                newWin.document.write("</tbody>");
                newWin.document.write("</table>");
			    newWin.print();
			    newWin.close();
		    
			            }
              });
       }

</script>

			<section class="content-header">
				<h3>
					Chamados <small>Visualizar Dados</small>
				</h3>
				<ol class="breadcrumb">
					<li class="active"><g:link controller="Layout" action="index">
							<i class="fa fa-dashboard"></i> Inicio</g:link></li>
					<li><g:link controller="OrdemDeServico" action="verInfo">ordens de Serviço</g:link></li>
				</ol>
			</section>
			<!-- CORPO DA PÁGINA -->
			<section class="content">
				<div>
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

					<div style="margin-left: 190px">
						<g:form controller="OrdemDeServico" action="verInfo"
							class="form-horizontal">
							<g:hiddenField type="number" name="id" id="idOsParaLaudo"
								value="${ordem?.id}" />
							<fieldset id="print">
							
							<div class="form-group">
									<label for="inputNome3" class="col-sm-2 control-label">Código</label>
									<div class="col-s-10">
										<h5>
											${ordem.id}
										</h5>
									</div>
								</div>
								<br>
							
								<div class="form-group">
									<label for="inputNome3" class="col-sm-2 control-label">Situacão</label>
									<div class="col-s-10">
										<h5>
											${ordem.status.nome}
										</h5>
									</div>
								</div>
								<br>
								<div class="form-group">
									<label for="inputNome3" class="col-sm-2 control-label">Interessado</label>
									<div class="col-s-10">
										<h5>
											${ordem.interessado}
										</h5>
									</div>
								</div>
								<br>
								<div class="form-group">
									<label for="inputNome3" class="col-sm-2 control-label">Email</label>
									<div class="col-s-10">
										<h5>
											${ordem.email}
										</h5>
									</div>
								</div>
								<br>

								<div class="form-group">
									<label for="inputNome3" class="col-sm-2 control-label">Data
										de Emissão</label>
									<div class="col-s-10">
										<h5>

											<g:formatDate format="dd/MM/yyyy - HH:mm"
												date="${ordem.dataEmissao}" />
											
										</h5>
									</div>
								</div>
								<br>

								<div class="form-group">
									<label for="inputDataInicio3" class="col-sm-2 control-label">Data
										de Conclusão</label>
									<div class="col-s-10">
										<h5>
											<g:formatDate format="dd/MM/yyyy - HH:mm"
												date="${ordem.dataConclusao}" />
										</h5>
									</div>
								</div>
								<br>

								<div class="form-group">
									<label for="inputDataInicio3" class="col-sm-2 control-label">Data
										de Agendamento</label>
									<div class="col-s-10">
										<h5>
											<g:formatDate format="dd/MM/yyyy - HH:mm"
												date="${ordem.dataAgendamento}" />
										</h5>
									</div>
								</div>
								<br>

								<!--  
								<div class="form-group">
									<label for="inputCpfCnpj3" class="col-sm-2 control-label">Orgão</label>
									<div class="col-s-10">
										<h5>
											${ordem.orgao.nome}
										</h5>
									</div>
								</div>
								<br>
								-->
								
								<div class="form-group">
									<label for="inputServico" class="col-sm-2 control-label">Serviço</label>
									<div class="col-s-10">
										<h5>
											${ordem.tipoServico.servico.servico}
										</h5>
									</div>
								</div>
								<br>
								
								<div class="form-group">
									<label for="inputServico" class="col-sm-2 control-label">Tipo do Serviço</label>
									<div class="col-s-10">
										<h5>
											${ordem.tipoServico.tipoServico}
										</h5>
									</div>
								</div>
								<br>
								
								<div class="form-group">
									<label for="inputCpfCnpj3" class="col-sm-2 control-label">Telefone</label>
									<div class="col-sm-10">
										<h5>
											${ordem.telefone}
										</h5>
									</div>
								</div>
								<br>
								
								<div class="form-group">
									<label for="inputCpfCnpj3" class="col-sm-2 control-label">Celular</label>
									<div class="col-sm-10">
										<h5>
											${ordem.celular}
										</h5>
									</div>
								</div>
								<br>
								
								<div class="form-group">
									<label for="inputCpfCnpj3" class="col-sm-2 control-label">Descricao</label>
									<div class="col-sm-10">
										<h5>
											${ordem.descricao}
										</h5>
									</div>
								</div>
								<br>
								<div class="form-group">
									<label for="inputCpfCnpj3" class="col-sm-2 control-label">Solução</label>
									<div class="col-sm-10">
										<h5>
											${ordem.solucao}
										</h5>
									</div>
								</div>
								<br>
								
								<div class="form-group">
									<label for="inputCpfCnpj3" class="col-sm-2 control-label">Técnicos</label>
									<div class="col-sm-10">
										<h5>
											<g:each in="${tecnicosOs?}">						
												${it.usuariosOs?.nome} <br>
											</g:each>
										</h5>
									</div>
								</div>
								<br>
								
								<div class="form-group">
									<label for="inputCpfCnpj3" class="col-sm-2 control-label">Tempo</label>
									<div class="col-sm-10">
										<h5>
										
										<%-- ${dataFormata?.weeks} semanas, ${dataFormata?.days} dias, ${dataFormata?.hours} horas, ${dataFormata?.minutes} minutos --%>
										<%-- ${dataFormatada?.weeks} semanas, ${dataFormatada?.days} dias, ${dataFormatada?.hours} horas, ${dataFormatada?.minutes} minutos e ${dataFormatada?.seconds} segundos --%>
										<g:if test="${dataFormatada != null}">
											${dataFormatada?.weeks} semanas, ${dataFormatada?.days} dias, ${dataFormatada?.hours} horas, ${dataFormatada?.minutes} minutos e ${dataFormatada?.seconds} segundos
										</g:if>
										<g:else>
											-
										</g:else>
										
										
										
										</h5>
									</div>
								</div>
								<br>

							</fieldset>
							<div style="margin: 0 7% auto">
								<button class="btn btn-primary btn-flat"
									onClick="printDiv('print')">
									<i class="fa fa-print"></i> Imprimir
								</button>
								<ul style="display: inline-block; margin-left: -30px">
									<li class="btn btn-info btn-flat"><a style="color: #fff;"
										href="/s3u/ordemDeServico/listarOrdemDeServico/">Voltar</a></li>
								</ul>

								<button class="btn btn-primary btn-flat"
									onClick="printDivLaudo()">
									<i class="fa fa-print"></i> Laudo
								</button>
								
								<button class="btn btn-primary btn-flat" data-toggle="modal"
											data-target="#dadosModal">
								<i class="fa fa-plus"></i> Gerar Laudo </button>
								
								<ul style="display: inline-block; margin-left: -30px">
									<li class="btn btn-info btn-flat"><a style="color: #fff;"
										href="/s3u/ordemDeServico/salvarLaudo/${ordem.id}">Salvar Laudo</a></li>
								</ul>
								
							</div>
						</g:form>
					</div>
				</div>
			</section>


			<div class="modal fade" id="dadosModal" tabindex="-1"
				role="dialog" aria-labelledby="dadosModalLabel"
				aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">
								<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
							</button>
							<h4 class="modal-title" id="relatorioModalLabel">Dados do Laudo</h4>
						</div>
						<div class="modal-body">
							<form action="" method="POST">
								<div class="form-heading">
									<div class="controls">
										
										<div class="form-heading">
											<label>Número</label>
											<div class="controls">
												<g:textField class="form-control" name="numero" value="" />												
											</div>
										</div><br>
										
										<div class="form-heading">
											<label>Técnico</label>
											<div class="controls">
											<select class="form-control selectpicker"
													data-live-search="true" name="tecnicos" id="comboTecnicos">
													<option value="0" disabled="disabled" >
														Selecione um Tecnico</option>
													<g:each in="${usuarios}">
														<option value="${it.id}">
															${it.nome}
														</option>
													</g:each>
											</select>
										</div>
										</div><br>
										
										
										
										<button class="btn btn-danger btn-flat"
											onclick="geraRelatorio(); return false;">
											<i class="glyphicon glyphicon-print"></i> Gerar Relatório
										</button>
									</div>
								</div>

							</form>
						</div>
					</div>
				</div>
			</div>

</body>
</html>