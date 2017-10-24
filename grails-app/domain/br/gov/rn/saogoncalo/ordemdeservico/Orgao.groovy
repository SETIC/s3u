package br.gov.rn.saogoncalo.ordemdeservico

class Orgao {

    String nome	
	String sigla
	String situacao

	static hasMany =[ordemDeServico:OrdemDeServico]
	
	static constraints = {
		nome blank:false, nullable:false
		sigla blank:false, nullable:false
		situacao blank:false, nullable:false
		
	}
	
	static mapping = {
		table name: "orgao", schema:"administracao_ordem_de_servico"
		version false
		id generator: 'sequence', params:[sequence:'administracao_ordem_de_servico.orgao_id_seq']
	}
 }

