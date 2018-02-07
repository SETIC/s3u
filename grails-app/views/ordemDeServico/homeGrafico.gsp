
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta content="width=device-width, initial-scale=1" name="viewport">
<script src="/s3u/js/jQuery/jQuery-2.1.3.min.js"
	type="text/javascript"></script>
<script src="/s3u/js/data.js"></script>
<script type="text/javascript" src="/s3u/js/jQuery/Chart.min.js"></script>
<title>Grafico</title>
<meta name="layout" content="public" />
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
			
<script>
  function printDiv(id)
   {
  var divToPrint = document.getElementById(id);
  var grafico = document.getElementById('GraficoPizza').toDataURL();
  newWin = window.open("");
  newWin.document.write("<style=''>");

  newWin.document.write("<td> <img src='${request.getRequestURL().substring(0, request.getRequestURL().indexOf('s3u/'))}s3u/static/images/brasao.jpg'; style='width:100px; float:left; margin-top:-9px;'> </td>");
  newWin.document.write("<h4 style=' margin-left:220px; '>PREFEITURA MUNICIPAL DE SÃO GONÇALO DO AMARANTE - RN</h4>");
  newWin.document.write("<h4 style='margin-top:20px; margin-left:330px;'>TOTAL DE ORDENS DE SERVIÇOS</h4>");
  newWin.document.write("<style type='text/css' >");
  newWin.document.write("</style>");
  newWin.document.write("");
  newWin.document.write("<br>");
  newWin.document.write("<p style = 'margin-left:200px;'><img src='"  + grafico + "'></p>");
  newWin.document.write("<p style = 'margin-left:20px;'>Abertos: " +abertos+ " </p>");
  newWin.document.write("<p style = 'margin-left:20px;'>Pendentes: " +pendentes+ " </p>");
  newWin.document.write("<p style = 'margin-left:20px;'>Concluidos: " +concluidos+ " </p>");
  
  newWin.document.write(divToPrint.outerHTML);
  newWin.print();
  newWin.close();
}
</script>
	<!-- Content Header (Page header) -->
	
	      <h1>
	        Sistema de Solicitação de Serviços Urbanos
	      </h1>
	      <ol class="breadcrumb">
	        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
	        <li><a href="#">UI</a></li>
	        <li class="active">Modals</li>
	      </ol>
	</section>
	<section class="content" style="margin-left: 5%; margin-bottom:2px;">
	    <br>
     		<style type="text/css">
		    .box {
		        margin: 0px auto;
		        width: 60%;
		        top:-50px;
		        margin-left:20%;
		    }
		
		    .box-chart {
		        width: 70%;
		        margin: 0 auto;
		        padding: 10px;
		    }

				<style type="text/css">
				.box {
					margin: 0px auto;
					width: 60%;
					top: -175px;
					margin-left: 20%;
					
				}
				
				.box-chart {
					width: 70%;
					margin: 0 auto;
					padding: 10px;
				}
				</style>
				<g:form controller="ordemDeServico" action="homeGrafico" class="form">
				</g:form>
				

				<div class="box" id="divGrafico" style="margin-top: 100px;">
					
					<div class="box-header with-border" style="margin-top: 20px; margin-left: 20px;">
						<label>Total :${totalStatus}</label>
					</div>
					<div class="box-body box-chart">
						<canvas id="GraficoPizza" style="width: 400px; height: 400px;"></canvas>
						

					<script type="text/javascript">
							var abertos = ${tipoStatusAberto}
							var pendentes = ${tipoStatusPendente}
							var concluidos = ${tipoStatusConcluido}
							var total = ${totalStatus}
							//grafico 
							var options = {
							responsive : true
							};
							var data = [
							{
								value : abertos,
								color : "#FF5A5E ",
								highlight : "#FF3333",
								label : "Abertos",
								scaleBeginAtZero : false,
								showScale : true
							}, {
								value : concluidos,
								color : "#00994C",
								highlight : "#336600",
								label : "Concluidos",
								scaleBeginAtZero : false,
								showScale : true
							}, {
								value : pendentes,
								color : "#FFC870",
								highlight : "#FFA500",
								label : "Pendentes",
								scaleBeginAtZero : false,
								showScale : true
							},
							]
							window.onload = function() {
								var ctx = document.getElementById(
										"GraficoPizza").getContext("2d");
								var PizzaChart = new Chart(ctx).Pie(data,
										options);
							}
						</script>


						<table
							style="position: absolute; top: 5px; right: 5px; font-size: smaller; color: #545454">
							<tbody>
								<tr>
									<td class="legendColorBox">
										<div style="border: 1px solid #ccc; padding: 1px">
											<div
												style="width: 4px; height: 0; border: 5px solid #FF3333; overflow: hidden"></div>
										</div>
									</td>
									<td class="legendLabel">Abertos</td>
								</tr>
								<tr>
									<td class="legendColorBox"><div
											style="border: 1px solid #ccc; padding: 1px">
											<div
												style="width: 4px; height: 0; border: 5px solid #FFA500; overflow: hidden"></div>
										</div></td>
									<td class="legendLabel">Pendentes</td>
								</tr>
								<tr>
									<td class="legendColorBox">
										<div style="border: 1px solid #ccc; padding: 1px">
											<div
												style="width: 4px; height: 0; border: 5px solid #336600; overflow: hidden"></div>
										</div>
									</td>
									<td class="legendLabel">Concluidos</td>
								</tr>
								<tr>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="box-footer">Footer</div>
				</div>
				<div style="margin: 0 20% auto; margin-top: -150px;">
					<button class="btn btn-primary btn-flat"
						onclick="printDiv('divGrafico')">
						<i class="fa fa-print" aria-hidden="true"></i> Imprimir
					</button>
				</div>
			</section>
</body>
</html>