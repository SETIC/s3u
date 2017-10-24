package br.gov.rn.saogoncalo.ordemdeservico

class Servico {

 String servico
 String ativo	
	
	static hasMany =[tipoServico:TipoServico]
	
	static constraints = {
		servico blank:false, nullable:false
		ativo blank:false, nullable:false
		
	}
	
	static mapping = {
		table name: "servico", schema:"administracao_ordem_de_servico"
		version false
		id generator: 'sequence', params:[sequence:'administracao_ordem_de_servico.servico_id_seq']
	}
}
