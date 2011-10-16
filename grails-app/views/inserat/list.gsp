
<%@ page import="dom.kiwi.insertion.Inserat" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'inserat.label', default: 'Inserat')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'inserat.id.label', default: 'Id')}" />
                        
                            <th><g:message code="inserat.category.label" default="Category" /></th>
                        
                            <th><g:message code="inserat.deliveryAddress.label" default="Delivery Address" /></th>
                        
                            <g:sortableColumn property="description" title="${message(code: 'inserat.description.label', default: 'Description')}" />
                        
                            <th><g:message code="inserat.homeAddress.label" default="Home Address" /></th>
                        
                            <g:sortableColumn property="name" title="${message(code: 'inserat.name.label', default: 'Name')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${inseratInstanceList}" status="i" var="inseratInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${inseratInstance.id}">${fieldValue(bean: inseratInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: inseratInstance, field: "category")}</td>
                        
                            <td>${fieldValue(bean: inseratInstance, field: "deliveryAddress")}</td>
                        
                            <td>${fieldValue(bean: inseratInstance, field: "description")}</td>
                        
                            <td>${fieldValue(bean: inseratInstance, field: "homeAddress")}</td>
                        
                            <td>${fieldValue(bean: inseratInstance, field: "name")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${inseratInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
