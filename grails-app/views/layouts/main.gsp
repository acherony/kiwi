<!DOCTYPE html>
<html>
    <head>
        <title><g:layoutTitle default="DoWeDo" /></title>
        %{--<link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}"--}%
        <link rel="stylesheet" href="${resource(dir:'css',file:'xing.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <link rel="stylesheet" href="${resource(dir:'css',file:'jquery.fancybox-1.3.4.css')}" />
        <g:layoutHead />
        %{--<g:javascript library="application" />--}%
%{--        <g:javascript library="prototype" />
        <g:javascript library="jquery-1.4.3.min" />--}%
        <g:javascript library="jquery.fancybox-1.3.4" />
%{--        <g:javascript library="jquery.mousewheel-3.0.4.pack" />--}%
%{--        <g:javascript src='spring-security-ui.js'/>--}%
%{--        <g:javascript src="jquery/jquery.form.js"/>
        <g:javascript plugin="jquery-ui"/>
        <g:javascript plugin="jquery"/>--}%
        <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>
        <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
    </head>
    <body>
           %{-- <script type="text/javascript">
                $.noConflict();
            </script>--}%
            <g:pageProperty name="page.header"/>
            <g:pageProperty name="page.personal"/>
            <g:layoutBody/>
            <g:pageProperty name="page.footer"/>
    </body>
</html>

