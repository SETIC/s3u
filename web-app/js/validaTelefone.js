 function validaTelefone(telefone){
	 
	var telefone = document.getElementById("telefone").value;
	
	//expressao que valida com o ddd
	//var patt = /^\([1-9]{2}\) [2-9][0-9]{3,4}\-[0-9]{4}$/;
	
	 var patt = /[2-9][0-9]{3,4}\-[0-9]{4}$/;
     var resul = patt.test(telefone);
     

     if (resul == false)
     {
		 document.getElementById("mensagemErroTelefone").innerHTML = "Digite um numero de telefone valido";
         document.getElementById("telefone").focus();
         return resul;
     }else{document.getElementById("mensagemErroTelefone").innerHTML = "" ;  }

     var ddd = telefone.substring(0, 2);

     if (telefone.length == 10)
     {
         part1 = telefone.substring(2, 6);
         part2 = telefone.substring(6, 10);
     }
     else if (telefone.length == 11)
     {
         part1 = telefone.substring(2, 7);
         part2 = telefone.substring(7, 11);
     }

     //return "(" + ddd + ")" + part1 + "-" + part2;
	 
    	}
    	