<!DOCTYPE html>
<html>
    <head>
        <title><g:layoutTitle default="Grails" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <link rel="stylesheet" href="${resource(dir:'css',file:'jquery.fancybox-1.3.4.css')}" />
        <g:layoutHead />
        <g:javascript library="application" />
        <g:javascript library="prototype" />
        <g:javascript library="jquery-1.4.3.min" />
        <g:javascript library="jquery.fancybox-1.3.4" />
        <g:javascript library="jquery.mousewheel-3.0.4.pack" />
    </head>
    <body>
      <script type="text/javascript">
        $.noConflict();
      </script>
        <div id="spinner" class="spinner" style="display:none;">
            <img src="${resource(dir:'images',file:'spinner.gif')}" alt="${message(code:'spinner.alt',default:'Loading...')}" />
        </div>
        <div id="grailsLogo"><a href="http://grails.org"><img src="${resource(dir:'images',file:'grails_logo.png')}" alt="Grails" border="0" /></a></div>
        <g:layoutBody />
    </body>
</html>