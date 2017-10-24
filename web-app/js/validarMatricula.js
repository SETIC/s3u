	
    function validarMatricula() {

    	var matriculasOS = document.getElementById("matricula").value;
		$.ajax({
			type : "GET",
			//url: "http://sistemas.saogoncalo.rn.gov.br:8080/sisOs/ordemDeServico/validarMatriculaFuncOs?matriculasOS="+matriculasOS,
			url: "http://192.168.1.252:8080/sisOs/ordemDeServico/validarMatriculaFuncOs?matriculasOS="+matriculasOS,
			//url: "http://localhost:8080/sisOs/ordemDeServico/validarMatriculaFuncOs?matriculasOS="+matriculasOS,
			dataType : "json",
			success : function(verifMatricula) {
			if(verifMatricula.id == 0) {
				document.getElementById("mensagemErro").innerHTML = "Matricula invalida ou inexistente";
				document.getElementById("matricula").focus();
				document.getElementById("interessado").value = " ";	
				
			}else{    
				
				document.getElementById("interessado").value = verifMatricula.nome;	
				document.getElementById("mensagemErro").innerHTML = ""; 
			  }  
			}
		});
		

      }

	
		           

	
