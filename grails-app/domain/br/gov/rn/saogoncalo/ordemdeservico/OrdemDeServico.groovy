package br.gov.rn.saogoncalo.ordemdeservico

class OrdemDeServico {
	
	String interessado
	Date dataEmissao
	Date dataConclusao
	Date dataAgendamento
	String cpf
	String telefone
	String email
	String descricao
	String solucao
	long codLaudo
	String celular
	String anexo
	
	static belongsTo = [status:Status, orgao:Orgao, funcionarioOs:FuncionarioOs, usuariosOs:UsuariosOs, endereco:Endereco, tipoServico:TipoServico]
	static hasMany = [tecnicoOS:TecnicoOs, laudo:Laudo, complementoLimpeza:ComplementoLimpeza, complementoIluminacao:ComplementoIluminacao]
	
	static constraints = {
		interessado blank:false, nullable:false
		dataEmissao blank:false, nullable:false
		dataConclusao blank:true, nullable:true 
		descricao blank:false, nullable:false
		solucao blank:true, nullable:true
		email blank:true, nullable:true
		cpf blank:true, nullable:true
		telefone blank:true, nullable:true
		dataAgendamento blank:true, nullable:true
		codLaudo blank:true, nullable:true
		celular blank:true, nullable:true
		anexo blank:true, nullable:true

	}
	
	static mapping = {
		table name: "ordem_de_servico", schema:"administracao_ordem_de_servico"
		version false
		id generator: 'sequence', params:[sequence:'administracao_ordem_de_servico.ordem_de_servico_id_seq']
	}
}