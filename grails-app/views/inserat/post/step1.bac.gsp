<%--
  Created by IntelliJ IDEA.
  User: martin.knap
  Date: 09.06.11
  Time: 14:06
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>

  <head><title>Simple GSP page</title></head>
   <g:javascript library="jquery" />
%{--   <jqui:resources themeCss="/custom-theme/jquery-ui-1.8.16.custom.css"/>--}%
    %{--<jqui:resources theme="darkness" />--}%
    <script type="text/javascript">
        $(document).ready(function()
        {
          $("#datepicker").datepicker({dateFormat: 'yy/mm/dd', selectOtherMonths: true} );
        })
    </script>
  <body>
    <g:render template="/templates/header" />
    <g:render template="/templates/personal" />
  <g:applyLayout name="main">
%{--  <div class="message">Category:${inseratInstance}</div>
  <div class="message">Session:${session}</div>
  <div class="message">params:${flabel}</div>

  <div class="message">Flash:${message1}/div>
  <div class="message">Request:${request} ${rlabel} ${request.rlabel}</div>
  <div class="message">Coversation:${conversation} x: ${clabel}</div>--}%

  %{--<g:form action="post">
    <td valign="top" class="value ${hasErrors(bean: inseratInstance, field: 'category', 'errors')}">

    <g:select name="category.id" from="${dom.kiwi.insertion.Category.list()}" optionKey="id" value="${inseratInstance?.category?.id}"  />

    --}%%{--TODO radiogroup tag does not recognize "labels" arguments from list--}%%{--
    <g:each in="${catList}" var="i">
      <g:radioGroup name="catRadioGroup" values="i">
            <p><g:message code="$i"/>:${it.radio}</p>
      </g:radioGroup>
    </g:each>

  </td>
      <g:submitButton name="next" value="Continue"></g:submitButton>
  </g:form>--}%
    <div class="message">${message}</div>
  <g:form action="post" >
                <div class="dialog">
                    <table>
                        <tbody>



                            <div>
                              <p> Between <input type="text" id="datepicker"> </p>
                            </div>



                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="category"><g:message code="inserat.category.label" default="Category" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: i, field: 'category', 'errors')}">
%{--
                                    <g:select name="category.id" from="${dom.kiwi.insertion.Category.list()}" optionKey="id" value="${inseratInstance?.category?.id}"  />
--}%
                                    <g:select name="category.id" from="${dom.kiwi.insertion.Category.list()}" optionKey="id" value="${i.properties.category?.id}"  />

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
                    <g:submitButton name="next" value="Continue"></g:submitButton>
                    %{--<span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>--}%
                </div>
            </g:form>

  <g:link action="post" event="step1">step1</g:link>
  <g:link action="post" event="step2">step2</g:link>
  <g:link action="post" event="step3">step3</g:link>
  <g:link action="post" event="step4">step4</g:link>
  </g:applyLayout>
  <g:render template="/templates/footer" />
  </body>
</html>