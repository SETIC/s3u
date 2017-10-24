package br.gov.rn.saogoncalo.ordemdeservico


class Laudo {

	String ativo
	int numero
	
	static belongsTo = [ordemDeServico:OrdemDeServico]
	
	static constraints = {
		ativo blank:false, nullable:false
		numero blank:false, nullable:false
	}
	
	static mapping = {
		table name: "laudo", schema:"administracao_ordem_de_servico"
		version false
		id generator: 'sequence', params:[sequence:'administracao_ordem_de_servico.laudo_id_seq']
		
	}
}
