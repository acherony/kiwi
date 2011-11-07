<%--
  Created by IntelliJ IDEA.
  User: martin.knap
  Date: 25/10/11
  Time: 01:15
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<script>
$(document).ready(function() {
	$('#username').focus();
});
</script>
<div id="content">
    <div id="row-in">
        <g:form action='register' controller="register" name='registerForm'>
	        <g:if test='${emailSent}'>
	            <g:message code='spring.security.ui.register.sent'/>
	        </g:if>
	        <g:else>
	        <table>
	            <tbody>
                    <s2ui:textFieldRow name='username' labelCode='user.username.label' bean="${command}"
                                     size='40' labelCodeDefault='Username' value="${command.username}"/>
                    <s2ui:textFieldRow name='email' bean="${command}" value="${command.email}"
                                       size='40' labelCode='user.email.label' labelCodeDefault='E-mail'/>
                    <s2ui:passwordFieldRow name='password' labelCode='user.password.label' bean="${command}"
                                         size='40' labelCodeDefault='Password' value="${command.password}"/>
                    <s2ui:passwordFieldRow name='password2' labelCode='user.password2.label' bean="${command}"
                                         size='40' labelCodeDefault='Password (again)' value="${command.password2}"/>
	            </tbody>
	            </table>
                <input type="submit" name="submit" value="Register" class="bt_login" />
	        %{--<s2ui:submitButton elementId='create' form='registerForm' messageCode='spring.security.ui.register.submit'/>--}%
	        </g:else>
        </g:form>
    </div>
</div>
