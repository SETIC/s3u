class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller:"OrdemDeServico", action:"cadastrarOrdemDeServico")
        "500"(view:'/error')
	}
}
