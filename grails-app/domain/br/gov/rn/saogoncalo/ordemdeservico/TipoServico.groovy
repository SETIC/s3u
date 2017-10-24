package br.gov.rn.saogoncalo.ordemdeservico

class TipoServico {

 String tipoServico
 String ativo	
	
	static hasMany =[ordemDeServico:OrdemDeServico]
	static belongsTo = [servico:Servico]
	
	static constraints = {
		tipoServico blank:false, nullable:false
		ativo blank:false, nullable:false
		
	}
	
	static mapping = {
		table name: "tipo_servico", schema:"administracao_ordem_de_servico"
		version false
		id generator: 'sequence', params:[sequence:'administracao_ordem_de_servico.tipo_servico_id_seq']
	}
}
