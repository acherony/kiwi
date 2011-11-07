<!DOCTYPE html>
<html>
    <head>
        <title><g:layoutTitle default="DoWeDo" /></title>
        %{--<link rel="stylesheet" href="${resource(dir:'css',file:'xing.css')}" />--}%
        <link rel="stylesheet" href="${resource(dir:'css',file:'ea/ea.css')}" />
        %{--<link rel="stylesheet" href="${resource(dir:'css',file:'ea/eaLogin.css')}" />--}%
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <link rel="stylesheet" href="${resource(dir:'css',file:'jquery.fancybox-1.3.4.css')}" />
        <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/jquery-ui.min.js"></script>
        %{--<link rel="stylesheet" href="${resource(dir:'css',file:'slidingLogin/style.css')}"/>--}%
  	    %{--<link rel="stylesheet" href="${resource(dir:'css',file:'slidingLogin/slide.css')}"/>--}%
        <g:javascript src="basic/basic.js"/>
        <g:javascript src="slidingLogin/slide.js"/>
        <g:javascript src="slidingLogin/ajaxLogin.js"/>
        <link href='http://fonts.googleapis.com/css?family=Ubuntu+Mono:700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Expletus+Sans:700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Delius+Unicase:700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:700' rel='stylesheet' type='text/css'>

        <g:layoutHead />
    </head>
    <body>
            %{--<script type="text/javascript">--}%
                %{--$.noConflict();--}%
            %{--</script>--}%
            %{--<g:pageProperty name="page.login"/>--}%
            <g:pageProperty name="page.headerEA"/>
            <g:pageProperty name="page.loginEA"/>
            %{--<g:pageProperty name="page.main"/>--}%
            %{--<g:pageProperty name="page.personal"/>--}%
            <g:pageProperty name="page.content"/>
            <g:layoutBody/>
            <g:pageProperty name="page.footerEA"/>
            %{--<g:pageProperty name="page.footer"/>--}%
    </body>
</html>

