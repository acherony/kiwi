
<%@ page import="dom.kiwi.insertion.Category" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
%{--        <jqgrid:resources />
        <script type="text/javascript">
           $(document).ready(function() {
                        <jqgrid:grid
                               id="category"
                               url="'${createLink(action: 'listCategory')}'"
                               colNames="'Name', 'Description'"
                               colModel="{name:'name', editable: true},
                                         {name:'description', editable: true}"
                               sortname="'name'"
                               caption="'Category List'"
                               height="300"
                               autowidth="true"
                               scrollOffset="0"
                               viewrecords="true"
                               showPager="true"
                               datatype="'json'">
                        </jqgrid:grid>
              });
    </script>--}%
        <link rel="stylesheet" href="${resource(dir:'js/jquery.jqGrid-4.1.2/css',file:'ui.jqgrid.css')}" />

        <g:javascript library="jquery-1.5.2.min"/>
        <g:javascript library="jquery-ui-1.7.2.custom.min"/>
        <g:javascript library="grid.locale-en"/>
        <g:javascript library="jquery.jqGrid.min"/>

    </head>

<!-- table tag will hold our grid -->
<table id="customer_list" class="scroll jqTable" cellpadding="0" cellspacing="0"></table>
<!-- pager will hold our paginator -->
<div id="customer_list_pager" class="scroll" style="text-align:center;"></div>

<script type="text/javascript">// <![CDATA[
  /* when the page has finished loading.. execute the follow */
  $(document).ready(function () {
    jQuery("#customer_list").jqGrid({
      url:'listCategory',
      datatype: "json",
      colNames:['Name','Desc'],
      colModel:[
        {name:'name'},
        {name:'description'}
     ],
    /*pager: jQuery('#customer_list_pager'),*/
    viewrecords: true,
    gridview: true
    });
  });
// ]]></script>



    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'category.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="name" title="${message(code: 'category.name.label', default: 'Name')}" />
                        
                            <g:sortableColumn property="description" title="${message(code: 'category.description.label', default: 'Description')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${categoryInstanceList}" status="i" var="categoryInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${categoryInstance.id}">${fieldValue(bean: categoryInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: categoryInstance, field: "name")}</td>
                        
                            <td>${fieldValue(bean: categoryInstance, field: "description")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${categoryInstanceTotal}" />
            </div>
            <jqgrid:wrapper id="category"/>
        </div>
    </body>
</html>
