package br.gov.rn.saogoncalo.ordemdeservico

class UsuariosOsController {

    def index() { }
	
	def login(){
		
		render(view:"/usuariosOs/login.gsp")
		
	}
	
	def autenticar(){
	 	
		def user = params.usuario
		def pass = params.senha
		def user2 =  UsuariosOs.findByUsuarioAndSenha(user,pass)
		def nomecuser = user2?.nome
		

		  if(user2 == null || user2 == ""){
			  
			  render(view:"/usuariosOs/login.gsp", model:[erro:"O usuario ou a senha inseridos estao incorretos."])

			  
		  }else{
		  
			  session["user"] = user
			  session["pass"] = pass
			  session["userName"] = user2.nome
			  session["userId"] = user2.id
			  session["nomecuser"] = user2.nome
			 
			  
			  def abertos = Status.get(1)
			  def pendentes = Status.get(2)
			  def concluidos = Status.get(3)
			 
			  def tipoStatusAberto = OrdemDeServico.countByStatus(abertos)
			  def tipoStatusPendente = OrdemDeServico.countByStatus(pendentes)
			  def tipoStatusConcluido = OrdemDeServico.countByStatus(concluidos)
			  def totalStatus = tipoStatusAberto + tipoStatusPendente +tipoStatusConcluido
			  
			  render(view:"/ordemDeServico/homeGrafico.gsp", model:[tipoStatusAberto:tipoStatusAberto ,tipoStatusPendente:tipoStatusPendente , tipoStatusConcluido: tipoStatusConcluido,totalStatus:totalStatus])
			  
		    }		  
			   

		  }
  
	   def logout(){
		   
	    session["user"] = null
		session["pass"] = null
		session["userName"] = null
		
		render(view:"/usuariosOs/login.gsp")
	} 
}
