<%--
  Created by IntelliJ IDEA.
  User: martin.knap
  Date: 09.06.11
  Time: 14:06
  To change this template use File | Settings | File Templates.
--%>

<%@ page import="org.springframework.webflow.engine.Flow" contentType="text/html;charset=UTF-8" %>
<html>
  <head><title>Simple GSP page</title></head>
  <body>
  <g:form action="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="homeAddress"><g:message code="inserat.homeAddress.label" default="Home Address" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: i, field: 'homeAddress', 'errors')}">
                                    <g:select name="homeAddress.id" from="${dom.kiwi.insertion.Address.list()}" optionKey="id" value="${i?.homeAddress?.id}"  />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name"><g:message code="inserat.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: i, field: 'name', 'errors')}">
                                    <g:textField name="name" value="${i?.name}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="title"><g:message code="inserat.title.label" default="Title" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: i, field: 'title', 'errors')}">
                                    <g:textField name="title" value="${i?.title}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="deliveryAddress"><g:message code="inserat.deliveryAddress.label" default="Delivery Address" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: i, field: 'deliveryAddress', 'errors')}">
                                    <g:select name="deliveryAddress.id" from="${dom.kiwi.insertion.Address.list()}" optionKey="id" value="${i.properties.deliveryAddress?.id}"  />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="description"><g:message code="inserat.description.label" default="Description" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: i, field: 'description', 'errors')}">
                                    <g:textField name="description" value="${i?.description}" />
                                </td>
                            </tr>

                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                <g:submitButton name="back" value="Back"></g:submitButton>
                <g:submitButton name="next" value="Continue"></g:submitButton>
                    %{--<span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>--}%
                </div>
            </g:form>
     <div class="message">${message}</div>
  <g:link action="post" event="step1">step1</g:link>
  <g:link action="post" event="step2">step2</g:link>
  <g:link action="post" event="step3">step3</g:link>
  <g:link action="post" event="step4">step4</g:link>

  </body>
</html>