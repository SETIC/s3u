package br.gov.rn.saogoncalo.ordemdeservico

import java.text.SimpleDateFormat


class EnviaEmailController {

    def index() { }
	 SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy HH:mm" )
     	
	 def enviaEmail(long id){
		 def os = OrdemDeServico.get(id)
		
		
        sendMail {
			def dataConclusao 
			if(os.dataConclusao == null){
				dataConclusao = '-' 
			}else{
				dataConclusao = format.format(os.dataConclusao)
			    
			}
		
            to "${os.email}"
            subject "Abertura de Chamado"
			cc "setic.suporte@saogoncalo.rn.gov.br"
			html "<html><head><title></title></head>"+
			"<body><align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"1\" style=\"border-style:hidden;background-color:#e6e6fa;\">"+
			"<tbody><tr><td colspan=\"2\" style=\"text-align: center;\"><h3 style=\"color:red;\">"+
			"<span style=\"color:#000000;\">PREFEITURA MUNICIPAL DE S&Atilde;O GON&Ccedil;ALO DO AMARANTE&nbsp;</span></h3>"+
			"<p><strong><span style=\"color:#000000;\">SUBSECRETARIA DE TECNOLOGIA DA INFORMA&Ccedil;&Atilde;O E CI&Ecirc;NCIA</span></strong></p>"+
			"<p><strong><span style=\"color:#000000;\">SISTEMA DE ABERTURA DE CHAMADOS</span></strong></p></td></tr>"+
			"<tr><td colspan=\"2\" style=\"text-align: center;\">&nbsp;</td></tr><tr><td colspan=\"2\" style=\"text-align: center;\">"+
			"<strong>Dados do Chamado</strong></td></tr><tr><td style=\"text-align: left;\"><strong>Interessado</strong></td>"+
			"<td style=\"text-align: left;\"><p>${os.interessado}</p></td></tr><tr><td><span style=\"font-weight: bold; text-align: center;\">Matricula</span></td>"+
			"<td>${os.cpf}</td></tr><tr><td><span style=\"font-weight: bold; text-align: center;\">Email</span></td><td>${os.email}</td>"+
			"</tr><tr><td><span style=\"font-weight: bold; text-align: center;\">Telefone</span></td><td>${os.telefone}</td></tr>"+
			"<tr><td><strong>Data de Emissão</strong></td><td>${format.format(os.dataEmissao)}</td></tr>"+
			"<tr><td><strong>Data de Conclusão</strong></td><td>${dataConclusao}</td></tr><tr><td><strong>Org&atilde;o</strong></td><td>${os.orgao.nome}</td>"+
			"</tr><tr><td colspan=\"1\" rowspan=\"1\"><p><strong>Problema</strong></p></td><td>${os.descricao}</td></tr>"+
			"<tr><td colspan=\"1\" rowspan=\"1\"><strong>Situa&ccedil;&atilde;o</strong></td><td>${os.status.nome}</td></tr></tbody></table><p>&nbsp;</p></body></html>"
			
				  
            }

    }    
}


