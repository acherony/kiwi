

<%@ page import="dom.kiwi.insertion.Inserat" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'inserat.label', default: 'Inserat')}" />
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
            <g:hasErrors bean="${inseratInstance}">
            <div class="errors">
                <g:renderErrors bean="${inseratInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="category"><g:message code="inserat.category.label" default="Category" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inseratInstance, field: 'category', 'errors')}">
                                    <g:select name="category.id" from="${dom.kiwi.insertion.Category.list()}" optionKey="id" value="${inseratInstance?.category?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="deliveryAddress"><g:message code="inserat.deliveryAddress.label" default="Delivery Address" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inseratInstance, field: 'deliveryAddress', 'errors')}">
                                    <g:select name="deliveryAddress.id" from="${dom.kiwi.insertion.Address.list()}" optionKey="id" value="${inseratInstance?.deliveryAddress?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="description"><g:message code="inserat.description.label" default="Description" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inseratInstance, field: 'description', 'errors')}">
                                    <g:textField name="description" value="${inseratInstance?.description}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="homeAddress"><g:message code="inserat.homeAddress.label" default="Home Address" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inseratInstance, field: 'homeAddress', 'errors')}">
                                    <g:select name="homeAddress.id" from="${dom.kiwi.insertion.Address.list()}" optionKey="id" value="${inseratInstance?.homeAddress?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name"><g:message code="inserat.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inseratInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" value="${inseratInstance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="title"><g:message code="inserat.title.label" default="Title" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inseratInstance, field: 'title', 'errors')}">
                                    <g:textField name="title" value="${inseratInstance?.title}" />
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
