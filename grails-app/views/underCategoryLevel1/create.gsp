

<%@ page import="dom.kiwi.insertion.UnderCategoryLevel1" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'underCategoryLevel1.label', default: 'UnderCategoryLevel1')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${underCategoryLevel1Instance}">
            <div class="errors">
                <g:renderErrors bean="${underCategoryLevel1Instance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name"><g:message code="underCategoryLevel1.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: underCategoryLevel1Instance, field: 'name', 'errors')}">
                                    <g:textField name="name" value="${underCategoryLevel1Instance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="category"><g:message code="underCategoryLevel1.category.label" default="Category" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: underCategoryLevel1Instance, field: 'category', 'errors')}">
                                    <g:select name="category.id" from="${dom.kiwi.insertion.Category.list()}" optionKey="id" value="${underCategoryLevel1Instance?.category?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="description"><g:message code="underCategoryLevel1.description.label" default="Description" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: underCategoryLevel1Instance, field: 'description', 'errors')}">
                                    <g:textField name="description" value="${underCategoryLevel1Instance?.description}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
