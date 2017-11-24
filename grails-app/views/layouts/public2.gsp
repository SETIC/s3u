<!DOCTYPE html>
<%@page import="java.lang.System"%>


<html>
<head>
<meta charset="UTF-8">
<title><g:layoutTitle
		default="Sistema de solicitação de chamados . Painel" /></title>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>

<!-- Bootstrap 3.3.2 -->
<link href="${resource(dir: 'css', file: 'bootstrap.css')}"
	rel="stylesheet">

<!-- Font Awesome Icons -->
<link
	href="${resource(dir: 'font-awesome-4.1.0/css', file: 'font-awesome.min.css')}"
	rel="stylesheet">

<!-- Ionicons -->
<link href="${resource(dir: 'css', file: 'ionicons.min.css')}"
	rel="stylesheet">

<!-- Morris chart -->
<link href="${resource(dir: 'css', file: 'morris/morris.css')}"
	rel="stylesheet">

<!-- jvectormap -->
<link
	href="${resource(dir: 'css', file: 'jvectormap/jquery-jvectormap-1.2.2.css')}"
	rel="stylesheet">

<!-- Daterange picker -->
<link
	href="${resource(dir: 'css', file: 'daterangepicker/daterangepicker-bs3.css')}"
	rel="stylesheet">

<!-- Bootstrap Select -->
<link href="${resource(dir: 'css', file: 'bootstrap-select.css')}"
	rel="stylesheet">

<!-- DataTable Bootstrap -->
<link href="${resource(dir: 'css', file: 'dataTables.bootstrap.css')}"
	rel="stylesheet">

<!-- Theme style -->
<link href="${resource(dir: 'css', file: 'AdminLTE.min.css')}"
	rel="stylesheet">

<!-- Form Wizard -->
<link href="${resource(dir: 'css', file: 'style-form-wizard.css')}"
	rel="stylesheet">

<!-- Jasny Mask Bootstrap -->
<link href="${resource(dir: 'css', file: 'jasny-bootstrap.min.css')}"
	rel="stylesheet">

<!-- Bootstrap Master -->
<link
	href="${resource(dir: 'css', file: 'bootstrap-modal-master/css/bootstrap-modal.css')}"
	rel="stylesheet">

<!-- AdminLTE Skins. Choose a skin from the css/skins 
         folder instead of downloading all of them to reduce the load. -->
<link href="${resource(dir: 'css', file: 'skins/_all-skins.min.css')}"
	rel="stylesheet">

<!-- Bootstrap Models Manager -->
<link
	href="${resource(dir: 'css', file: 'bootstrap-modal-master/css/bootstrap-modal.css')}"
	rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
<style type="text/css">
.box-white {
	border-radius: 0;
	border-top: 0;
	padding: 1%;
}

.link-black {
	color: #000 !important;
}

.link-black:hover {
	color: #000 !important;
	text-shadow: .5px .5px 1px #808080;
}

.no-active {
	pointer-events: none;
	cursor: default;
	color: #767676 !important;
	background-color: #E5E5E5;
}

.hidden {
	display: none;
}

.visible {
	display: block;
}
</style>
<!-- jQuery 2.1.3 -->
<g:javascript src="jQuery/jQuery-2.1.3.min.js" />
</head>

<body class="skin-blue row sidebar-collapse">
	<div class="wrapper"
		style="float: inherit; margin-left: auto; margin-right: auto;">
		<header class="main-header">

			<!-- Header Navbar: style can be found in header.less -->

			<div class="wrapper">

				<header class="main-header">

					<!-- Logo -->
					<a href="/s3u/ordemDeServico/listarOrdemDeServico" class="logo"> <div class="pull-left image">&nbsp;&nbsp;&nbsp;
								<g:img dir="img" file="setic.png" style="height:35px;" />

							</div><!-- mini logo 50x50 pixels -->
						<span class="logo-mini"><b></b></span> <!-- logo regular --> <span
						class="logo-lg"><b>S3U</b></span>
					</a>

					<!-- Header Navbar: style can be found in header.less -->
					<nav class="navbar navbar-static-top">
						
						<!-- Navbar Right Menu -->
						<div class="navbar-custom-menu">
							<ul class="nav navbar-nav">
								<!-- Messages: style can be found in dropdown.less-->
								<li class="dropdown messages-menu">
									<!-- User Account: style can be found in dropdown.less -->
								<li class="dropdown user user-menu"><a href="#"
									class="dropdown-toggle" data-toggle="dropdown"> <span
										class="hidden-xs">Sistema de Solicitação de Serviços Urbanos</span>&nbsp;&nbsp;&nbsp;&nbsp;
								</a>
									<ul class="dropdown-menu">

						<div class="navbar-custom-menu">
							<ul class="nav navbar-nav">
								<!-- Messages: style can be found in dropdown.less-->
								<li class="dropdown messages-menu">
									<!-- User Account: style can be found in dropdown.less -->
								
									<ul class="dropdown-menu">
										<!-- User image -->

						</div>

					</nav>
				</header>
				<!-- Left side column. contains the logo and sidebar -->
						</header>
		<!-- Left side column. contains the logo and sidebar -->
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper col-md-10 col-md-offset-1"
			style="float: inherit; margin-left: auto; margin-right: auto; width: 100%; margin-top: 1px">
			<g:layoutBody />
		</div>
		<footer class="main-footer">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<g:img dir="img" file="envato.png" style="height:30px;" />
			<%--<img alt="" src="img\envato.jpg" height="40x"> &nbsp;&nbsp;&nbsp;&nbsp;--%>
			&nbsp;&nbsp;<div class="pull-right hidden-xs">
				<b>Version</b> 2.0
			</div>
			<strong>Copyright &copy; 2016 <a
				href="http://www.saogoncalo.rn.gov.br/portal-setic/">SETIC -
					Subsecretaria de Tecnologia da Informação e Ciência</a>.
			</strong>&nbsp;&nbsp; <b>Contato:</b> 98146-6686
		</footer>
		
	</div>
	</div>
	</div>
	<!-- ./wrapper -->
	<!-- Bootstrap 3.3.2 JS -->
	<g:javascript src="bootstrap.js" />
	<!-- Jasny Mask Bootstrap -->
	<g:javascript src="jasny-bootstrap.min.js" />
	<!-- FastClick -->
	<g:javascript src="plugins/fastclick/fastclick.min.js" />
	<!-- AdminLTE App -->
	<g:javascript src="app.min.js" />
	<!-- Script Form Wizard -->
	<g:javascript src="script-form-wizard.js" />
	<!-- jQuery Data Tables -->
	<g:javascript src="jquery.dataTables.min.js" />
	<!-- Data Tables Bootstrap -->
	<g:javascript src="dataTables.bootstrap.js" />
	<!-- Data Table Script -->
	<g:javascript src="dataScript.js" />
	<!-- Bootstrap Select Search -->
	<g:javascript src="dist/js/bootstrap-select.js" />
	<!-- Sparkline -->
	<g:javascript src="plugins/sparkline/jquery.sparkline.min.js" />
	<!-- jvectormap -->
	<g:javascript src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js" />
	<g:javascript
		src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js" />
	<!-- daterangepicker -->
	<g:javascript src="plugins/daterangepicker/daterangepicker.js" />
	<!-- datepicker -->
	<g:javascript src="plugins/datepicker/bootstrap-datepicker.js" />
	<!-- iCheck -->
	<g:javascript src="plugins/iCheck/icheck.min.js" />
	<!-- SlimScroll 1.3.0 -->
	<g:javascript src="plugins/slimScroll/jquery.slimscroll.min.js" />
	<!-- ChartJS 1.0.1 -->
	<g:javascript src="plugins/chartjs/Chart.min.js" />
	<!-- Bootstrap Master -->
	<g:javascript src="bootstrap-modal-master/js/bootstrap-modal.js" />
	<!-- Bootstrap Master -->
	<g:javascript src="bootstrap-modal-master/js/bootstrap-modalmanager.js" />

	<!-- AdminLTE dashboard demo (This is only for demo purposes) 
	<g:javascript src="dashboard2.js" /> -->

	<!-- AdminLTE for demo purposes 
    <g:javascript src="demo.js" /> -->
</body>
</html>
