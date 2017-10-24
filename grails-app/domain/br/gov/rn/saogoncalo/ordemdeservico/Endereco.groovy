package br.gov.rn.saogoncalo.ordemdeservico

class Endereco {

	String numero
	String referencia	

	static hasMany =[ordemDeServico:OrdemDeServico]
	static belongsTo = [logradouro:Logradouro ]
	
	static constraints = {
		numero blank:false, nullable:false
		referencia blank:false, nullable:false
				
	}
	
	static mapping = {
		table name: "endereco", schema:"administracao_ordem_de_servico"
		version false
		id generator: 'sequence', params:[sequence:'administracao_ordem_de_servico.endereco_id_seq']
	}
}
