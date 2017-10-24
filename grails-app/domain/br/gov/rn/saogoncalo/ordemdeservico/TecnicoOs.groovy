package br.gov.rn.saogoncalo.ordemdeservico

class TecnicoOs {

	String descricao

	
	static belongsTo = [ordemDeServico:OrdemDeServico, usuariosOs:UsuariosOs]
	
	static constraints = {
		descricao blank:true, nullable:true
	}
	
	static mapping = {
		table name: "tecnico_os", schema:"administracao_ordem_de_servico"
		version false
		id generator: 'sequence', params:[sequence:'administracao_ordem_de_servico.tecnico_os_id_seq']
	}
}
