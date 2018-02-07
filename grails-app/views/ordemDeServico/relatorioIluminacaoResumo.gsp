<!DOCTYPE html>
<html lang="pt-br">
<head>
<title>Ordem de Serviço . Módulo OS</title>
<meta name="layout" content="public" />
<meta content="width=device-width, initial-scale=1" name="viewport">
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h3>Pesquisar OS</h3>

				<!-- Tabela  -->

				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Inicio</a></li>
					<li class="active">Pesquisa OS</li>
					<br>
				</ol>
				
	<script>
	function printDiv(id)
	  {
			  
	  var listaOs = document.getElementById('pesquisarOs');
	  //var listaOs = document.getElementById('tabelas'); 
	  
	  
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
	  
	  newWin = window.open("");

	  newWin.document.write("<table style='width: 741px;'>");
	  newWin.document.write("<tbody>");
	  newWin.document.write("<tr>");
	  newWin.document.write("<td style='width: 121px;' rowspan='2'>   <img src='${request.getRequestURL().substring(0, request.getRequestURL().indexOf('s3u/'))}s3u/static/images/sga.png';  style='width:100px; float:left; margin-top:5px;'>  </td>");
	  newWin.document.write("<td style='width: 628px; '>&nbsp;PREFEITURA MUNICIPAL DE S&Atilde;O GON&Ccedil;ALO DO AMARANTE - RN <br> &nbsp;SECRETARIA MUNICIPAL DE SERVI&Ccedil;OS URBANOS <br> &nbsp;RELATORIO DE OS DE ILUMINAÇÃO DETALHADO <br> &nbsp;GERADO EM " + now.getDate() + " de " + meses[now.getMonth()] + " de " + now.getFullYear() + " às " + now.getHours()+":"+now.getMinutes() + " </td>");
	  newWin.document.write("</tr>");
	  newWin.document.write("<tr>");
	  newWin.document.write("<td style='width: 628px; '> </td>");
	  newWin.document.write("</tr>");
	  newWin.document.write("<tr>");
	  newWin.document.write("<td style='width: 121px; text-align: center;' colspan='2'> </td>");
	  newWin.document.write("</tr>");
	  newWin.document.write("</tbody>");
	  newWin.document.write("</table> <br>");


	    
	  newWin.document.write(listaOs.outerHTML);
	  newWin.print();
	  
	  newWin.close();
	  
	}
</script>			
				
<script>
 function mudarSelecao(){
			
			var x = document.getElementById('tipoBusca');
			value = x.options[x.selectedIndex].value;

           switch(value){
          /*
           case 'orgao':
           
        	   newInput.innerHTML = "<label>Orgão:</label/>" +
        	   "<div id='iDivSelectPicker' class='row'>"+
			   "<div class='col-sm-4'>"+
        	   "<select class='form-control selectpicker' data-size='5' data-live-search='true' " +
   			   "data-live-search='true' name='orgao' id='orgao'"+
   			   "<option value='0'>Orgao</option>" +
   			   "<g:each in="${orgao}">"+
   			   "<option value='${it.id}'>" +
   			   "${it.nome}</option></g:each></select></div>" +
   			   "<button type='submit' class='btn btn-primary btn-flat'>" +
			   "<i class='fa fa-search'></i> Buscar</button>" 
               break; 
               */

           case 'interessado':
  			  newInput.innerHTML = "<label>Nome do Interessado: </label/></br>"+
  			  "<input type='text' required = 'true' name ='interessado' id ='interessadoId'/>" +
  			  "<button style='margin-left: 10px;' type='submit' class='btn btn-primary btn-flat'>" +
  			  "<i class='fa fa-search'></i> Buscar</button>"
                break; 
          
           //novo campo
           case 'status' :  
               newInput.innerHTML = "<label>Status</label></br>" +
               "<div id='iDivSelectPicker' class='row'>"+
			   "<div class='col-sm-4'>"+
        	   "<select class='form-control selectpicker' " +
   			   "data-live-search='true' name='status' id='status'"+
   			   "<option value='0'>Status</option>" +
   			   "<g:each in="${status}">"+
   			   "<option value='${it.id}'>" +
   			   "${it.nome}</option></g:each></select></div>" +
   			   "<button type='submit' class='btn btn-primary btn-flat'>" +
			   "<i class='fa fa-search'></i> Buscar</button>"  
			   break; 
			   
           //fim
           
           
  	       case 'data':
 			  newInput.innerHTML = "<label>Data Inicial: </label/><input type='date' name ='dataInicial' id='dataInicial' " +
 	 		  "<br>   <label>Data Final: </label/><input type='date' name ='dataFinal' id='dataFinal'/>" +
 	 		 "<button style='margin-left: 10px;' type='submit' class='btn btn-primary btn-flat'>" +
			  "<i class='fa fa-search'></i> Buscar</button>"
               // newInput.innerHTML = "<input data-provide='datepicker' value='09-10-2015' language='pt-br'/>"
              break;
            
           case 'cpf':
    			  newInput.innerHTML = "<label>CPF: </label/></br>"+
    			  "<input type='text' required = 'true' name ='cpf' id ='cpfId'/>" +
    			  "<button style='margin-left: 10px;' type='submit' class='btn btn-primary btn-flat'>" +
    			  "<i class='fa fa-search'></i> Buscar</button>"
                  break; 
	             
           }
			
		}
		</script>
      <section class="content-header" style="margin-left: 5%; margin-bottom: 2%;">

		<br>
			<g:form controller="ordemDeServico" action="relatorioIluminacaoResumo" class="form">
			<div class="form-heading" style="width:150px;">
				<label>Tipo de Busca</label>
				<div class="controls">
					<select class="selectpicker"  id ="tipoBusca" name="tipoBusca" onchange = "mudarSelecao();">
						<option value="null">SELECIONE...</option>
						<option value="interessado">INTERESSADO</option>
						<option value="status">STATUS</option>
						<option value="data">DATA DE EMISSÃO</option>
						<option value="cpf">CPF</option>
					</select>
				</div>
			</div>
			<br>
			<div id='newInput'>
			<!-- lugar onde aparecerao os campos -->
		   	</div>
			</g:form>
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
                       
			<div class="box box-white">
				<table id="pesquisarOs" collSpan="0" rowSpan="0" cellpadding="0.2em" cellspacing="0" border="1px" class="table table-striped table-hover example" border="1" style="font-size:0.8em">
					
					
					
					<tbody>
					<g:set var="i" value="${1}" />
						<g:each in='${complementoIluminacao?}' var="ci">
			
			
							<tr class='linha_registro'>
								<td class="info">
								   <strong>cod.:</strong> ${ci.ordemDeServico.id}
								</td>
								<td class="info">
									<strong>Serviço: </strong>${ci.ordemDeServico.tipoServico.servico.servico}
								</td>
								<td class="info">
    								<strong>Num. Poste: </strong>${ci.numeroPoste}
								</td>
								<td class="info">
								   <strong>Endereço: </strong>${ci.ordemDeServico.endereco.logradouro.logradouro + ' - ' + ci.ordemDeServico.endereco.logradouro.bairro.bairro + ' - ' + ci.ordemDeServico.endereco.logradouro.bairro.cidade.cidade + ' - ' + ci.ordemDeServico.endereco.logradouro.cep}
								</td>								
								<td class="info">
								   <strong>Referencia: </strong>${ci.ordemDeServico.endereco.referencia}
								</td>
							    <td class="info">
								   <strong>Data: </strong>${ci.ordemDeServico.dataEmissao}
								</td>
	 						    <td class="info"> 
	 						       <strong>Interessado: </strong>${ci.ordemDeServico.interessado} 
	 						    </td>
								<td class="info"> 
	 						       <strong>Telefone: </strong>${ci.ordemDeServico.telefone} 
	 						    </td>
	 						    <td class="info"> 
	 						       <strong>Descrição: </strong>${ci.ordemDeServico.descricao} 
	 						    </td>
							</tr>	
								
								
							<tr class='linha_registro'>	
								<td class="info"> 
	 						      <strong>Lampada: </strong>${ci.tipoLampada} 
	 						    </td>
								<td class="info"> 
	 						      <strong>Qtd. Lampada: </strong>${ci.qtdLampada} 
	 						    </td>
								<td class="info"> 
	 						      <strong>Foto: </strong>${ci.foto} 
	 						    </td>
	 						    <td class="info"> 
	 						      <strong>Qtd. Foto: </strong>${ci.qtdFoto} 
	 						    </td>
	 						    <td class="info"> 
	 						      <strong>Reator: </strong>${ci.reator} 
	 						    </td>
	 						    <td class="info"> 
	 						      <strong>Qtd. Reator: </strong>${ci.qtdReator} 
	 						    </td>
							    <td class="info"> 
	 						      <strong>Potência: </strong>${ci.potenciaReator} 
	 						    </td>		
	 						    <td class="info"> 
	 						      <strong>Base: </strong>${ci.qtdBase} 
	 						    </td>					
	 						    <td class="info"> 
	 						      <strong>Outro: </strong>${ci.outro} 
	 						    </td>									
							</tr>
							
							
						</g:each>
					</tbody>
				</table>
			</div>
		</div>
		<%--<g:link action="gerarPdf">Download invoice</g:link>--%>

		<div style="margin: 0 1% auto;">
					<button class="btn btn-primary btn-flat"
						onclick="printDiv('pequisarOs')">
						<i class="fa fa-print" aria-hidden="true"></i> Imprimir
					</button>
				</div>
	</section>
 </body>
 
</html>


