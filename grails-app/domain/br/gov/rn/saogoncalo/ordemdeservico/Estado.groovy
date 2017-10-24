package br.gov.rn.saogoncalo.ordemdeservico

class Estado {

 String estado	
	
	static hasMany =[cidade:Cidade]
	
	static constraints = {
		estado blank:false, nullable:false
		
	}
	
	static mapping = {
		table name: "estado", schema:"administracao_ordem_de_servico"
		version false
		id generator: 'sequence', params:[sequence:'administracao_ordem_de_servico.estado_id_seq']
	}
}
