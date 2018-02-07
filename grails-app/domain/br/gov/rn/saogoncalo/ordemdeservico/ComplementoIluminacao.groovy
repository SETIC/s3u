package br.gov.rn.saogoncalo.ordemdeservico

class ComplementoIluminacao {

	String numeroPoste
	String tipoLampada
	int qtdLampada
	String foto
	int qtdFoto
	String reator
	String potenciaReator
	int qtdReator
	int qtdBase
	String outro
		
	static belongsTo = [ordemDeServico:OrdemDeServico]
	
    static constraints = {
		
		 numeroPoste blank:true, nullable:true
		 tipoLampada blank:true, nullable:true
		 qtdLampada blank:true, nullable:true
		 foto blank:true, nullable:true
		 qtdFoto blank:true, nullable:true
		 reator blank:true, nullable:true
		 potenciaReator blank:true, nullable:true
		 qtdReator blank:true, nullable:true
		 qtdBase blank:true, nullable:true
		 outro blank:true, nullable:true
		
    }
	
	static mapping = {
		table name: "complemento_iluminacao", schema:"administracao_ordem_de_servico"
		version false
		id generator: 'sequence', params:[sequence:'administracao_ordem_de_servico.complemento_iluminacao_id_seq']
	}
	
}
