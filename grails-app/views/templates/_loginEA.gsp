<%--
  Created by IntelliJ IDEA.
  User: martin.knap
  Date: 02/11/11
  Time: 13:31
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<div id="mod-user-menu" class="">
    <div class="mod-header">

    </div>
    <div class="mod-content">
        <div class="content">
            <ul>
                <sec:ifNotLoggedIn>
                    <li class="login">
				        %{--<s2ui:submitButton elementId='loginButton' form='loginForm' messageCode='spring.security.ui.login.login'/>--}%
                        <g:link controller="login" action="auth"><g:message code="spring.security.ui.login.login" default="Login"/></g:link>
                        %{--<a id="mod-user-menu-login" href="https://www.ea.com/profile/login?returnurl=http://www.ea.com/">LOGIN</a>--}%
                    </li>
                    <li class="register">
                        <s2ui:linkButton elementId='register' controller='register' messageCode='spring.security.ui.login.register'/>
                        %{--<a id="mod-user-menu-register" href="https://www.ea.com/profile/register?returnurl=http://www.ea.com/">REGISTER</a>--}%
                    </li>
                </sec:ifNotLoggedIn>
                <sec:ifLoggedIn>
                    <li class="login">
                        <g:link controller='profile'><sec:username/></g:link>
                    </li>
                    <li class="register">
                         <g:link controller='logout'><g:message code="spring.security.logout" default="logout"/></g:link>
                    </li>
                </sec:ifLoggedIn>

            </ul>
        </div>
    </div>
    <div class="mod-footer">

    </div>
</div>