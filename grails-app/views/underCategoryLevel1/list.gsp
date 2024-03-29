
<%@ page import="dom.kiwi.insertion.UnderCategoryLevel1" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'underCategoryLevel1.label', default: 'UnderCategoryLevel1')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'underCategoryLevel1.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="name" title="${message(code: 'underCategoryLevel1.name.label', default: 'Name')}" />
                        
                            <th><g:message code="underCategoryLevel1.category.label" default="Category" /></th>
                        
                            <g:sortableColumn property="description" title="${message(code: 'underCategoryLevel1.description.label', default: 'Description')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${underCategoryLevel1InstanceList}" status="i" var="underCategoryLevel1Instance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${underCategoryLevel1Instance.id}">${fieldValue(bean: underCategoryLevel1Instance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: underCategoryLevel1Instance, field: "name")}</td>
                        
                            <td>${fieldValue(bean: underCategoryLevel1Instance, field: "category")}</td>
                        
                            <td>${fieldValue(bean: underCategoryLevel1Instance, field: "description")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${underCategoryLevel1InstanceTotal}" />
            </div>
        </div>
    </body>
</html>
