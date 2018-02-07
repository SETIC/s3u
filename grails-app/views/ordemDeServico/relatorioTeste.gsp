<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
    <head>
    <title>Invoice</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link type="text/css" href="${grailsApplication.config.grails.serverURL}/static/css/main.css" rel="stylesheet"/>
       
    </head>
    <body>
         <h1>Testando geração de PDF</h1>
         <g:form controller="ordemDeServico" action="report">
			<g:jasperReport action="createReport" controller="book" format="PDF" jasper="report" name="All Books"/>
         
         </g:form>
         
        
    </body>
</html> 
  