 function mascara(o,f){
	    v_obj=o
	    v_fun=f
	    setTimeout("execmascara()",1)
	}

	function execmascara(){
	    v_obj.value=v_fun(v_obj.value)
	}

	function mtel(v){
	    v=v.replace(/\D/g,"")                 //Remove tudo o que não é dígito
	    //v=v.replace(/^(\d\d)(\d)/g,"($1) $2") //Coloca parênteses em volta dos dois primeiros dígitos
	    
	    if(v.length == 9){
	    	v=v.replace(/(\d{5})(\d)/,"$1-$2")    //Coloca hífen entre o quinto e o sexto dígitos
	    }else{
	    	v=v.replace(/(\d{4})(\d)/,"$1-$2")    //Coloca hífen entre o quarto e o quinto dígitos
	    }
	    return v
	}