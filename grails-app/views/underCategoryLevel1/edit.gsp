

<%@ page import="dom.kiwi.insertion.UnderCategoryLevel1" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'underCategoryLevel1.label', default: 'UnderCategoryLevel1')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${underCategoryLevel1Instance}">
            <div class="errors">
                <g:renderErrors bean="${underCategoryLevel1Instance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${underCategoryLevel1Instance?.id}" />
                <g:hiddenField name="version" value="${underCategoryLevel1Instance?.version}" />
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
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="underCategoriesLevel2"><g:message code="underCategoryLevel1.underCategoriesLevel2.label" default="Under Categories Level2" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: underCategoryLevel1Instance, field: 'underCategoriesLevel2', 'errors')}">
                                    
<ul>
<g:each in="${underCategoryLevel1Instance?.underCategoriesLevel2?}" var="u">
    <li><g:link controller="underCategoryLevel2" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="underCategoryLevel2" action="create" params="['underCategoryLevel1.id': underCategoryLevel1Instance?.id]">${message(code: 'default.add.label', args: [message(code: 'underCategoryLevel2.label', default: 'UnderCategoryLevel2')])}</g:link>

                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
