<!DOCTYPE html>
<html lang="pt-br">
<head>
<title>Cadastro de OS</title>
<meta name="layout" content="public2" />
<meta content="width=device-width, initial-scale=1" name="viewport">

</head>
<body>
<p id="alertVerificador" class="text-red"></p>
	<section class="content-header" style="margin-left: 5%; margin-bottom:auto;">
		<h1>
			Ordem De Serviço
		</h1>

		<ul class="nav nav-tabs"> 
		<div style= "text-align:right;"><a href="/s3u/usuariosOs/login.gsp">Acesso</a></div></ul> 
		
	</section>
	<!-- CORPO DA PÁGINA -->
	<section class="content">
		<div>
			<g:if test="${ok}">
				<div class="alert alert-success">
					${ok}
				</div>
			</g:if>
			<g:if test="${erro}">
				<div class="alert alert-danger">
					${erro}
				</div>	
			</g:if>
			<div style="margin-left: 150px">

				<g:form name="ordemDeServico" controller="ordemDeServico" action="salvarOrdemDeServico" class="form-horizontal">
					<fieldset>
					   <div class="alert alert-info"><strong>Aviso. </strong> A SEMSUR informa que o s3u é de uso exclusivo para a abertura 
						  de chamados de utilidade pública.
						</div>
						<script src="/s3u/js/validarMatricula.js"></script>
						<div class="form-group">
							<label for="cpf" class="col-sm-2 control-label">CPF</label> 
							<div class="col-sm-4">
								<input class="form-control" id="cpf" placeholder="CPF do interessado" required name="cpf" type="text" value="" onblur="validarMatricula();"/>
							</div>
								<p id="mensagemErro" class="text-red">${erro}</p>

						</div>
												
						<div class="form-group">
							<label for="interessado" class="col-sm-2 control-label">Interessado</label>
							<div class="col-sm-4">
								<input class="form-control" placeholder="Interessado" id="interessado" required name="interessado" type="text" value="">
							</div>
						</div>
						<br>


						<!-- Início - Script para formatar telefone -->
						<script src="/s3u/js/FormatarTelefone.js"></script>
						<!-- Fim - Script para formatar telefone -->

						
						<script src="/s3u/js/validaTelefone.js"></script>
						<div class="form-group">
							<label for="telefone" class="col-sm-2 control-label">Telefone</label>
							<div class="col-sm-4">
								<g:textField class="form-control" placeholder="Digite apenas números" id="telefone" name="telefone" value="" onkeypress="mascara(this,mtel);" onblur="validaTelefone(telefone);" maxlength="10"/>
							</div>
							<p id="mensagemErroTelefone" class="text-red">${erro}</p>
						</div>
						<br>
						
						<div class="form-group">
							<label for="celular" class="col-sm-2 control-label">Celular</label>
							<div class="col-sm-4">
								<g:textField class="form-control" placeholder="Digite apenas números" id="celular" name="celular" value="" onkeypress="mascara(this,mtel);" onblur="validaTelefone(celular);" maxlength="10"/>
							</div>
							<p id="mensagemErroTelefone" class="text-red">${erro}</p>
						</div>
						
						<br>

						<script src="/s3u/js/validaEmail.js"></script>
						<div class="form-group">
							<label for="email" class="col-sm-2 control-label">E-mail</label>
							<div class="col-sm-4">
								<g:textField type="email" class="form-control"
									placeholder="E-mail" id="email" name="email" value="" required="true"
									name="email" onblur="validaEMAIL(email)" />
							</div>
							<p id="mensagemErroEmail" class="text-red">${erro}</p>
						</div>
						<br>
					
						<div class="form-group">
							<label for="descricao" class="col-sm-2 control-label">Descrição</label>
							<div class="col-sm-4">
								<textarea rows="4" cols="5" class="form-control" placeholder="Descreva o atendimento" name="descricao" required></textarea>
							</div>
						</div>
						<br>
						<br>
					
					
						<div class="form-group">
							<label for="tipoServico" class="col-sm-2 control-label">Tipo Serviço</label>
							<div class="col-sm-6">
								<select name="tipoServico" id="comboTipoServico"
									class="form-control" data-size="5"
									data-live-search="true" onclick="habilitaCampo();" required>
									
									<option value="">Selecione um tipo de serviço</option>
									
									<g:each in="${tipoServico}">
										<option value="${it.id}">
											${it.servico.servico + ' - ' + it.tipoServico} 
										</option>
									</g:each>
								</select>
							</div>
						</div>
						<br>
						
						<div class="form-group">
							<label for="numeroPoste" class="col-sm-2 control-label">Número do poste</label>
							<div class="col-sm-4">
								<input class="form-control" placeholder="Numero do poste" id="numeroPoste" name="numeroPoste" type="text" value="">
							</div>
						</div>
						<br>
												
						<div class="form-group">
							<label for="logradouro" class="col-sm-2 control-label">Logradouro</label>
							<div class="col-sm-6">
								<select name="logradouro" id="comboLogradouro"
									class="form-control select2 select2-hidden-accessible" >
									
									<option value="">Selecione um logradouro</option>
									
									<g:each in="${logradouro}">
										<option value="${it.id}">
											${it.logradouro + ' - ' + it.bairro.bairro + ' - ' + it.bairro.cidade.cidade + ' - ' + it.cep} 
										</option>
									</g:each>
								</select>
							</div>
						</div>
						<br>
						
						<div class="form-group">
							<label for="numero" class="col-sm-2 control-label">Número</label>
							<div class="col-sm-4">
								<input class="form-control" placeholder="Numero" id="numero" name="numero" type="text" value="">
							</div>
						</div>
						<br>
						
						<div class="form-group">
							<label for="referencia" class="col-sm-2 control-label">Referência</label>
							<div class="col-sm-4">
								<textarea rows="4" cols="5" class="form-control" placeholder="Referências do endereço" name="referencia" ></textarea>
							</div>
						</div>
						<br>
						<br>
					
						
						
						
					</fieldset>
					<div style="margin: 0 17% auto">
						<button type="submit" class="btn btn-primary btn-flat">
							Salvar
						</button>
						<ul style="display: inline-block; margin-left: -30px">
							<li class="btn btn-default btn-flat"><a
								href="/s3u/ordemDeServico/cadastrarOrdemDeServico/">Cancelar</a></li>
						</ul>
					</div>
				</g:form>
			</div>
		</div>
	</section>
	
    
	
</body>
</html>