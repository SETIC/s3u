package br.gov.rn.saogoncalo.ordemdeservico

class Status {

		String nome
		String situacao
		
		static hasMany = [ordemDeServico:OrdemDeServico]
		static constraints = {
			nome blank:false, nullable:false
			situacao blank:false, nullable:false
		}
		
		static mapping = {
			table name: "status", schema:"administracao_ordem_de_servico"
			version false
			id generator: 'sequence', params:[sequence:'administracao_ordem_de_servico.status_id_seq']
		}
	
    
}
