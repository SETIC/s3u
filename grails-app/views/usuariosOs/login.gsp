<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="UTF-8">
    <title>s3u</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <link rel="shortcut icon" href="${resource(dir:'images', file:'favicon.ico')}" type="image/x-icon" />
    <!-- Bootstrap 3.3.2 -->
    <link href="/s3u/js/bootstrap.min.js" rel="stylesheet" type="text/css" />
    <link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet">
    <!-- Theme style -->
    <link href="${resource(dir: 'css', file: 'AdminLTE.min.css')}" rel="stylesheet">
    <style type="text/css">
      div#wrap {
        height: 100%;
        min-height: 100%;
       
      }
      .login-box-body{
      height:240px;
      width:370px;
      
      }
      
    </style>
    <script type="text/javascript">

    	function verificarLogin() {
			if(document.login.usuario.value == ""){
				document.getElementById("alertVerificador").innerHTML = "Digite o seu nome de usuário.";
				document.getElementById("mensagemErro").innerHTML = "";
				return false;
			}else{
				if(document.login.senha.value == ""){
					document.getElementById("alertVerificador").innerHTML = "Digite a sua senha.";
					document.getElementById("mensagemErro").innerHTML = "";
					return false;	
				}
				else{
					return true;
				}
			}		
        }
    </script>
  </head>
  <body class="login-page">
    <div id="wrap">  
      <div class="login-box">
        <div class="login-logo">
          <a href="http://192.168.1.252:8080/s3u/usuariosOs/login"><g:img style="width: 50%" dir="images" file="protS3U.png"/></a>
        </div><!-- /.login-logo -->
        <div class="login-box-body">
          <p class="login-box-msg">Entre para iniciar a sua sessão</p>
          <g:form name="login" controller="UsuariosOs" action="autenticar" onsubmit="return verificarLogin();">
           <div class="iconInput">
            <div class="form-group has-feedback">
              <input type="text" name="usuario" class="form-control" placeholder="Usuário">
              <i class="fa fa-user" aria-hidden="true"></i>            
              </div>
           </div>
             <div class="iconInput2">
              <div class="form-group has-feedback">
              <input type="password" name="senha" class="form-control" placeholder="Senha">
             <i class="fa fa-lock" aria-hidden="true"></i>
              </div>
            </div>
            
          <style type="text/css">
          .iconInput { position: relative }
          .iconInput input { padding-left: 28px }
          .iconInput i { position: absolute; padding: 0px 300px; top:9px; }
          .iconInput2 { position: relative }
          .iconInput2 input { padding-left: 28px }
          .iconInput2 i { position: absolute; padding: 0px 300px; top:9px; }
          </style>
            
            <g:if test="${ctl != null && act != null }">
            	<input type="hidden" name="ctl" value="${ctl}">
            	<input type="hidden" name="act" value="${act}">
            </g:if>
            <g:else>
            	<input type="hidden" name="ctl" value="ordemDeServico">
            	<input type="hidden" name="act" value="homeGrafico">
            </g:else>
            <p id="alertVerificador" class="text-red"></p>
            <g:if test="${ok}">
				<p id="mensagemOk" class="text-green">${ok}</p>
		  	</g:if>
		  	<g:if test="${erro}">
		  		<p id="mensagemErro" class="text-red">${erro}</p>
		  	</g:if>
            <div class="row">
              <div class="col-xs-12">
                <button type="submit" class="btn btn-primary btn-block btn-flat">Entrar</button>
              </div>  
            </div>
          </g:form>
        </div><!-- /.login-box-body -->
      </div>
      <footer class="main-footer" style="margin-left: 0; position: absolute; bottom: 0; width: 100%;">
          <div class="pull-right hidden-xs">
            <b>Version</b> 1.0
          </div>
          <strong>Copyright © 2016 <a style="font-weight: 400;" href="#"><b>S3U</a>.</strong> Todos os direitos reservados.
      </footer>
    </div>
    <!-- jQuery 2.1.3 -->
    <script src="/s3u/js/jQuery/jQuery-2.1.3.min.js" type="text/javascript"></script>
    <g:javascript src="jQuery/jQuery-2.1.3.min.js" />
    <!-- Bootstrap 3.3.2 JS -->
    <script src="/s3u/js/bootstrap.min.js" type="text/javascript"></script>
    <g:javascript src="bootstrap.min.js" />
  </body>
</html>
