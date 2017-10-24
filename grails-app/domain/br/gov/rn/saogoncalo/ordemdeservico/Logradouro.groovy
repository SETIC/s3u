package br.gov.rn.saogoncalo.ordemdeservico

class Logradouro {

	String logradouro
	String cep	


	static hasMany =[endereco:Endereco]
	static belongsTo = [bairro:Bairro]
	
	static constraints = {
		logradouro blank:false, nullable:false
		cep blank:false, nullable:false
				
	}
	
	static mapping = {
		table name: "logradouro", schema:"administracao_ordem_de_servico"
		version false
		id generator: 'sequence', params:[sequence:'administracao_ordem_de_servico.logradouro_id_seq']
	}
}
