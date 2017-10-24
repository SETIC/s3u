<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
    <head>
    <title>Invoice</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link type="text/css" href="${grailsApplication.config.grails.serverURL}/static/css/main.css" rel="stylesheet"/>
       
    </head>
    <body>
         <h1>Testando geração de PDF 2</h1>
         <g:include controller="OrdemDeServico" action="gerarPdf"/>
         
                  
                 Html aqui -- ${raw(htm)}
                 Teste ------ ${raw(html1)}
         
    </body>
</html> 
  