<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page import="br.gov.rn.saogoncalo.ordemdeservico.OrdemDeServico.gerarPdf %>

<html>
    <head>
        <title>Invoice</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link type="text/css" href="${grailsApplication.config.grails.serverURL}/static/css/main.css" rel="stylesheet"/>
       
    </head>
    <body>
         <h1>Testando geração de PDF</h1>
         <table id="pequisarOs"
					class="table table-striped table-hover example">
					<thead>
						<tr class="success">
						    <th style="text-align: left;padding-left:10px;">Orgão</th>
						    <th style="text-align: left;padding-left:10px;">Situação</th>
						    <th style="text-align: left;padding-left:10px;">Interessado</th>
						    <th style="text-align: left;padding-left:10px;">Problema</th>
						    <th style="text-align: left;padding-left:10px;">Soluçao</th> 
						</tr>
					</thead>
					<tbody>
						<g:each in='${ordens}'>
							<tr class='linha_registro'>
								<td>
									${it.orgao.nome}	
								</td>
								<td>
								   ${it.interessado}
								</td>
								<td>
								   ${it.problema}
								</td>
							    <td>
							       ${it.solucao}
							   </td>
							</tr>
						</g:each>
					</tbody>
				</table>
    </body>
</html> 
  