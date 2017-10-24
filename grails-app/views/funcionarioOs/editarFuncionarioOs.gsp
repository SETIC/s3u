<!DOCTYPE html>
<html lang="pt-br">
<head>
<title>Cadastro de Funcionarios</title>
<meta name="layout" content="public" />
<g:javascript src="jquery.js" />
<g:javascript src="jquery.maskedinput.js" />
</head>
<body>
	
	
	<div class="wrapper">
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			
			<!-- CORPO DA PÁGINA -->
	
	<section class="content-header">
		<h1>
			<small>Editar Funcionários</small>
		</h1>
		<ol class="breadcrumb">
			<li class="active"><g:link controller="Layout" action="index">
					<i class="fa fa-dashboard"></i> Inicio</g:link></li>
			<li><g:link controller="Setor" action="listar">Funcionário</g:link></li>
		</ol>
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
				<div class="alert alert-danger">  Brain
					${erro}
				</div>
			</g:if>
			<g:each in='${funcionarioOs?}'>
			</g:each>
			<div class="row">
				<div class="col-md-10 col-md-offset-1">
					<g:form controller="FuncionarioOs" action="atualizarFuncionarioOs"
						class="form-horizontal">
						<g:hiddenField type="number" name="id" value="${it.id}" />
						<fieldset>
							<div>
								<label for="nome">Nome</label>
								<div>
									<input class="form-control"  required name="nomeFuncionario" type="text" style="width: 500px"
										value="${it.nomeFuncionario}">
								</div>
							</div>
							<br>
							<div>
								<label for="matricula">Matricula</label>
								<div>
									<g:textField class="form-control" name="matricula" style="width: 200px"
										value="${it.matricula}" />
								</div>
							</div>
							<br>
							<div>
								<label for="status">Status</label>
								<div>
								  <div class="controls">
									<select class="form-control" name="status">
												<option value="Ativo" <g:if test="${it.status == 'Ativo'}"> selected </g:if>>ATIVO</option>
												<option value="Inativo" <g:if test="${it.status == 'Inativo'}"> selected </g:if>>INATIVO</option>
									</select>
								  </div>
								</div>
							</div>
							<br>
						</fieldset>


						<div>
							<button type="submit" class="btn btn-primary btn-flat">
								<i class="fa fa-refresh"></i> Atualizar
							</button>
							<ul style="display: inline-block; margin-left: -30px">
								<li class="btn btn-default btn-flat"><a
									href="/s3u/funcionarioOs/listarFuncionarioOs/">Cancelar</a></li>
							</ul>
						</div>
					</g:form>
				</div>
			</div>
			<script type="text/javascript">
				$(document).ready(function() {
					$('#example').DataTable();
					var tabela = $('#example').dataTable();
					// Ordena por nome e "desempata" com o id
					tabela.fnSort([ [ 1, 'asc' ] ]);
				});
			</script>
		</div>


		<script type="text/javascript">
			$().ready(
					function() {
						$('#add').click(
								function() {

									return !$('#select1 option:selected')
											.remove().appendTo('#select2');

								});
						$('#remove').click(
								function() {

									return !$('#select2 option:selected')
											.remove().appendTo('#select1');
								});

					});
		</script>


		<script>
			function myFunction() {

				var table = document.getElementById("table-responsavel");

				while (table.rows.length > 1) {
					table.deleteRow(1);
				}

				var row = table.insertRow(1);

				var id = row.insertCell(0);
				var nome = row.insertCell(1);
				var opcoes = row.insertCell(2);

				var funcionarios = document
						.getElementsByClassName("filter-option pull-left");

				var str = funcionarios[0].innerText;

				var res = str.split(",");
				var vetFunc

				console.log(str);

				for (i = 0; i < res.length; i++) {

					var row = table.insertRow(i + 1);

					var id = row.insertCell(0);
					var nome = row.insertCell(1);
					var opcoes = row.insertCell(2);

					vetFunc

					id.innerHTML = "<input type=\"checkbox\" value=\""+res[i]+"\">";
					nome.innerHTML = res[i];
					opcoes.innerHTML = "<button type=\"button\" class=\"btn btn-danger btn-xs\"><i class=\"fa fa-minus\"></i></button>";

				}

			}

			function addSelectOptions() {

				var x = document.getElementById("select1");
				var y = document.getElementById("select2");

				var listOptions;

				listOptions = document.getElementById("select2").options;

				x.options.length = 0;

				var funcionarios = document
						.getElementsByClassName("filter-option pull-left");

				var selectFuncionario = document.getElementById("funcionariosList");
				var seletcValues = [];

				for (var i = 0; i < selectFuncionario.selectedOptions.length; i++) {
					console.log(selectFuncionario.selectedOptions[i].value);
					seletcValues.push(selectFuncionario.selectedOptions[i].value);
					
				}

				var values = seletcValues;
				console.log("Teste - " + values);

				console.log(funcionarios[0].innerText);

				var str = funcionarios[0].innerText;
				var res = str.split(",");
				var contOption;

				contOption = 0;

				for (i = 0; i < res.length; i++) {

					var option = document.createElement("option");
					option.value = values[i];
					option.text = res[i];

					//x.add(option);

					//alterado aqui
					for (j = 0; j < listOptions.length; j++) {
						console.log("Teste ++ " + values[i] + " == "
								+ listOptions[j].value);

						if (values[i] == listOptions[j].value) {
							contOption = contOption + 1;

						}
					}

					if (contOption == 0) {
						x.add(option);
					}
					contOption = 0;
					//----------------

				}

				//continuar aqui
				var contOption2;
				contOption2 = 0;
				var contLinha = 0;

				for (j = 0; j < listOptions.length; j++) {
					for (i = 0; i < res.length; i++) {

						console.log("Teste --- " + values[i] + " == "
								+ listOptions[j].value);
						if (values[i] == listOptions[j].value) {
							contOption2 = contOption2 + 1;
							contLinha = i
						}

					}

					if (contOption2 == 0) {
						console.log("Remover >>> " + contLinha);
						listOptions.remove(j);
					}
					contLinha = 0;
					contOption2 = 0;

				}

			}

			function ClearOptionsFast(id) {
				var selectObj = document.getElementById(id);
				var selectParentNode = selectObj.parentNode;
				var newSelectObj = selectObj.cloneNode(false); // Make a shallow copy
				selectParentNode.replaceChild(newSelectObj, selectObj);
				return newSelectObj;
			}

			function getResponsaveis() {

				var txt = "";
				var hiddenResponsaveis, hiddenNaoResponsaveis
				var texto, texto1
				var x = document.getElementById("select1");
				if (x.value != null) {
					for (i = 0; i < x.options.length; i++) {
						txt = txt + " " + x.options[i].value;
					}
					console.log(txt);
					hiddenNaoResponsaveis = document
							.getElementById("funcionariosNaoResponsaveisHiddenId");
					texto = txt.trim();
					//hiddenNaoResponsaveis.value = texto.replace(' ',',');

					i = 0;
					while ((i = texto.indexOf(" ", i)) != -1) {
						texto = texto.replace(" ", ",");
					}
					hiddenNaoResponsaveis.value = texto;

				}

				var txt1 = "";
				var y = document.getElementById("select2");
				if (y.value != null) {
					for (i = 0; i < y.options.length; i++) {
						txt1 = txt1 + " " + y.options[i].value;
					}
					console.log(txt1);
					hiddenResponsaveis = document
							.getElementById("funcionariosResponsaveisHiddenId");
					texto1 = txt1.trim();
					

					i = 0;
					while ((i = texto1.indexOf(" ", i)) != -1) {
						texto1 = texto1.replace(" ", ",");
					}
					hiddenResponsaveis.value = texto1;

				}

			}
		</script>


	</section>
	</div>
	</div>
</body>
</html>