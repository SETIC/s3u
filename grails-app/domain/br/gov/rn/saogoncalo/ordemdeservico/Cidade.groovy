package br.gov.rn.saogoncalo.ordemdeservico

class Cidade {

 String cidade	


	static hasMany =[bairro:Bairro]
	static belongsTo = [estado:Estado]
	
	static constraints = {
		cidade blank:false, nullable:false
				
	}
	
	static mapping = {
		table name: "cidade", schema:"administracao_ordem_de_servico"
		version false
		id generator: 'sequence', params:[sequence:'administracao_ordem_de_servico.cidade_id_seq']
	}
}
