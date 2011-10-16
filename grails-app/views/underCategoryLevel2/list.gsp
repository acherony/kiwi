
<%@ page import="dom.kiwi.insertion.UnderCategoryLevel2" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'underCategoryLevel2.label', default: 'UnderCategoryLevel2')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'underCategoryLevel2.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="name" title="${message(code: 'underCategoryLevel2.name.label', default: 'Name')}" />
                        
                            <g:sortableColumn property="description" title="${message(code: 'underCategoryLevel2.description.label', default: 'Description')}" />
                        
                            <th><g:message code="underCategoryLevel2.underCategoryLevel1.label" default="Under Category Level1" /></th>
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${underCategoryLevel2InstanceList}" status="i" var="underCategoryLevel2Instance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${underCategoryLevel2Instance.id}">${fieldValue(bean: underCategoryLevel2Instance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: underCategoryLevel2Instance, field: "name")}</td>
                        
                            <td>${fieldValue(bean: underCategoryLevel2Instance, field: "description")}</td>
                        
                            <td>${fieldValue(bean: underCategoryLevel2Instance, field: "underCategoryLevel1")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${underCategoryLevel2InstanceTotal}" />
            </div>
        </div>
    </body>
</html>
