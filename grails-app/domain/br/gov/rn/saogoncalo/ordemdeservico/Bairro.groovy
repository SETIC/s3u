package br.gov.rn.saogoncalo.ordemdeservico

class Bairro {

 String bairro	


	static hasMany =[logradouro:Logradouro]
	static belongsTo = [cidade:Cidade]
	
	static constraints = {
		bairro blank:false, nullable:false
				
	}
	
	static mapping = {
		table name: "bairro", schema:"administracao_ordem_de_servico"
		version false
		id generator: 'sequence', params:[sequence:'administracao_ordem_de_servico.bairro_id_seq']
	}
}
