<%--
  Created by IntelliJ IDEA.
  User: martin.knap
  Date: 25/10/11
  Time: 01:15
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<div id="content">
    <div id="row-in">
            <g:form action='forgotPassword' controller="register" name="forgotPasswordForm" autocomplete='off'>
            <g:if test='${emailSent}'>
            <br/>
            <g:message code='spring.security.ui.forgotPassword.sent'/>
            </g:if>
            <g:else>
            <br/>
            <table>
                <tr>
                    <td><label for="username"><g:message code='spring.security.ui.forgotPassword.username'/></label></td>
                    <td><g:textField name="username" size="25" /></td>
                </tr>
            </table>
            <g:submitButton name="submit" value="Password forgot">
                <g:message code='spring.security.ui.forgotPassword' default="Password Forgot"/>
            </g:submitButton>
            %{--<input type="submit" name="submit"class="bt_login"/>--}%
            %{--<s2ui:submitButton elementId='reset' form='forgotPasswordForm' messageCode='spring.security.ui.forgotPassword.submit'/>--}%
            </g:else>
            </g:form>
    </div>
</div>