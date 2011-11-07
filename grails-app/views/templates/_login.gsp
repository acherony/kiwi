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
            <g:form controller='j_spring_security_check' name="loginForm" autocomplete='off'>
                <h1><g:message code='slidingLogin.login.title'/></h1>
                <label class="grey" for="username" >Username:</label>
                <input class="field" type="text" name="j_username" id="username" value="" size="23" />
                <label class="grey" for="password">Password:</label>
                <input class="field" type="password" name="j_password" id="password" size="23" />
                <label for='remember_me'><g:message code='spring.security.ui.login.rememberme'/>
                   <input type="checkbox" class="checkbox" name="_spring_security_remember_me" id="remember_me" checked="checked" />
                </label>
                <input type="submit" name="submit" value="Login" class="bt_login" />
                <div id='loginMessage' style='color: red; margin-top: 10px;'></div>
                <g:link class="lost-pwd" controller='register' action='forgotPassword'><g:message code='spring.security.ui.login.forgotPassword'/></g:link>
            </g:form>
    </div>
</div>