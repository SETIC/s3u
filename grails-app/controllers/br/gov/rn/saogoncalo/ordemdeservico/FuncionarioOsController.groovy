package br.gov.rn.saogoncalo.ordemdeservico


class FuncionarioOsController {

	def index() { }

	def listarFuncionarioOs(){

		if((session["user"] == null) || (session["pass"] == null) ){
			render (view:"/usuariosOs/login.gsp", model:[ctl:"FuncionarioOs", act:"listar"])
		}else{
			def user = session["user"]
			def pass = session["pass"]
				
			def msg
			
			
			if (user ) {

				def funcionarioOs
				msg = params.msg
									
				//funcionarioOs = FuncionarioOs.findAllByStatus("ativo")
				funcionarioOs = FuncionarioOs.findAll()

								render(view:"/funcionarioOs/listarFuncionarioOs.gsp", model:[ok:msg, funcionarioOs:funcionarioOs, user:user])
			}else{
				msg = "Erro inesperado."
				render(view:"/error403.gsp", model:[erro:msg])
			}
		}
	}


	def salvarFuncionarioOs(){
		if((session["user"] == null) || (session["pass"] == null) ){
			render (view:"/usuario/login.gsp", model:[ctl:"FuncionarioOs", act:"listar"])
		}else{
			def user = session["user"]
			def pass = session["pass"]
			def msg
			
			
			if (user) {

			
				FuncionarioOs funcionarioOs = new FuncionarioOs(params)
				
				funcionarioOs.matricula = params.matricula
				funcionarioOs.nomeFuncionario = params.nomeFuncionario
				funcionarioOs.status = 'ativo'
								
				if (funcionarioOs.save(flush:true)){

					redirect(action:"listarFuncionarioOs", params:[msg:"Cadastrado com sucesso", tipo:"ok"])
					
				}else{
				
				redirect(action:"listarFuncionarioOs", params:[msg:"Erro ao cadastrar", tipo:"erro"])
					
				}
			}else{
			    msg = "Erro inesperado. "
				render(view:"/error403.gsp ", model:[erro:msg])
			}
		}
	}


	def editarFuncionarioOs(long id){
		if((session["user"] == null) || (session["pass"] == null) ){
			render (view:"/usuarioOs/login.gsp", model:[ctl:"FuncionarioOs", act:"listar"])
		}else{
			def user = session["user"]
			def pass = session["pass"]
			def msg

			if (user) {

				FuncionarioOs funcionarioOs = FuncionarioOs.get(id)	
								
				render (view:"/funcionarioOs/editarFuncionarioOs.gsp", model:[funcionarioOs:funcionarioOs])
			}else{
				msg = "Erro inesperado."
				render(view:"/error403.gsp", model:[erro:msg])
			}
		}
	}


	def atualizarFuncionarioOs(){

		if((session["user"] == null) || (session["pass"] == null) ){
			render (view:"/usuario/login.gsp", model:[ctl:"FuncionarioOs", act:"listar"])
		}else{
			def user = session["user"]
			def pass = session["pass"]

		
			if (user) {

				def funcionarioOs = FuncionarioOs.get(params.id)

				funcionarioOs.matricula = params.matricula
				funcionarioOs.nomeFuncionario = params.nomeFuncionario
				funcionarioOs.status = params.status
				
				if(funcionarioOs.save(flush:true)){
					redirect(action:"listarFuncionarioOs", params:[msg:"Atualizado com sucesso", tipo:"ok"])
				}else{
					redirect(action:"listarFuncionarioOs", params:[msg:"Erro ao atualizar", tipo:"erro"])
					
				}
			}
		}
	}



	def deletarFuncionarioOs(int id){
		if((session["user"] == null) || (session["pass"] == null) ){
			render (view:"/usuario/login.gsp", model:[ctl:"Setor", act:"listar"])
		}else{
			def user = session["user"]
			def pass = session["pass"]
			def msg
			
			//FuncionarioOs funcionarioOs = FuncionarioOs.get(id)
			
			FuncionarioOs funcionarioOs = FuncionarioOs.get(id)
			OrdemDeServico os = OrdemDeServico.findByFuncionarioOs(funcionarioOs)
			print("Funcionario id -- id " + id + " matricula  "  + funcionarioOs.id)
			

			if (user) {
				
				if (os){
					redirect(action:"listarFuncionarioOs", params:[msg:"Funcionário possui registros de OS, por favor utilizar o campo Ativo.", tipo:"erro"])
				}else{

				FuncionarioOs.deleteAll(FuncionarioOs.get(id))

				redirect(action:"listarFuncionarioOs", params:[msg:"Deletado com sucesso!", tipo:"ok"])
				}
			}else{
				msg = "Erro inesperado."
				render(view:"/error403.gsp", model:[erro:msg])
			}
		}
	}
	
	def verInfo(long id){
		
		  FuncionarioOs funcionarioOs = FuncionarioOs.get(id)

		  render (view:"/funcionarioOs/verInfo.gsp", model:[funcionarioOs:funcionarioOs])
  
}
	
}