package br.gov.rn.saogoncalo.ordemdeservico

class ComplementoLimpeza {

	int qtdArvore
		
	static belongsTo = [ordemDeServico:OrdemDeServico]
	
    static constraints = {
		
		 qtdArvore blank:true, nullable:true

    }
	
	static mapping = {
		table name: "complemento_limpeza", schema:"administracao_ordem_de_servico"
		version false
		id generator: 'sequence', params:[sequence:'administracao_ordem_de_servico.complemento_limpeza_id_seq']
	}
}
