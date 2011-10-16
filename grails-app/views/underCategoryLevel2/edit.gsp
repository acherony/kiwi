

<%@ page import="dom.kiwi.insertion.UnderCategoryLevel2" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'underCategoryLevel2.label', default: 'UnderCategoryLevel2')}" />
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
            <g:hasErrors bean="${underCategoryLevel2Instance}">
            <div class="errors">
                <g:renderErrors bean="${underCategoryLevel2Instance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${underCategoryLevel2Instance?.id}" />
                <g:hiddenField name="version" value="${underCategoryLevel2Instance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="name"><g:message code="underCategoryLevel2.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: underCategoryLevel2Instance, field: 'name', 'errors')}">
                                    <g:textField name="name" value="${underCategoryLevel2Instance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="description"><g:message code="underCategoryLevel2.description.label" default="Description" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: underCategoryLevel2Instance, field: 'description', 'errors')}">
                                    <g:textField name="description" value="${underCategoryLevel2Instance?.description}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="underCategoryLevel1"><g:message code="underCategoryLevel2.underCategoryLevel1.label" default="Under Category Level1" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: underCategoryLevel2Instance, field: 'underCategoryLevel1', 'errors')}">
                                    <g:select name="underCategoryLevel1.id" from="${dom.kiwi.insertion.UnderCategoryLevel1.list()}" optionKey="id" value="${underCategoryLevel2Instance?.underCategoryLevel1?.id}"  />
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
