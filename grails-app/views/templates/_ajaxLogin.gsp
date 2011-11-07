<style>
input.login {
	display: block;
}
</style>

<div class='s2ui_center'>

<div id="loginFormContainer" style='display:none' title="${message(code:'spring.security.ui.login.signin')}">
	<g:form controller='j_spring_security_check' name="loginForm" autocomplete='off'>

	<label for="username"><g:message code='spring.security.ui.login.username'/></label>
	<input class='login' name="j_username" id="username" size="20" />

	<label for="password"><g:message code='spring.security.ui.login.password'/></label>
	<input class='login'type="password" name="j_password" id="password" size="20" />

	<input type="checkbox" class="checkbox" name="_spring_security_remember_me" id="remember_me" checked="checked" />
	<label for='remember_me'><g:message code='spring.security.ui.login.rememberme'/></label> |

	<g:link controller='register' action='forgotPassword'><g:message code='spring.security.ui.login.forgotPassword'/></g:link>
	<g:link controller='register'><g:message code='spring.security.ui.login.register'/></g:link>

	<input type='submit' class='s2ui_hidden_button' />

	</g:form>
	<div id='loginMessage' style='color: red; margin-top: 10px;'></div>
</div>
</div>

<script>
var loginButtonCaption = "<g:message code='spring.security.ui.login.login'/>";
var logoutLink = '<%=link(controller: 'logout') { 'Logout' }%>';
var loggingYouIn = "<g:message code='spring.security.ui.login.loggingYouIn'/>";
</script>
<g:javascript src='jquery/jquery.form.js'/>
<g:javascript src='slidingLogin/ajaxLogin.js'/>

<%@ page contentType="text/html;charset=UTF-8" %>
    <div id="toppanel">
        <div id="panel">
            <div class="content clearfix">
                <div class="left">
                    <h1>Welcome to Web-Kreation</h1>
                    <h2>Sliding login panel Demo with jQuery</h2>
                    <p class="grey">You can put anything you want in this sliding panel: videos, audio, images, forms... The only limit is your imagination!</p>
                    <h2>Download</h2>
                    <p class="grey">To download this script go back to <a href="http://web-kreation.com/index.php/tutorials/nice-clean-sliding-login-panel-built-with-jquery" title="Download">article &raquo;</a></p>
                </div>
                <div class="left">
                    <!-- Login Form -->
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
                <div class="left right">
                    <!-- Register Form -->
                    <form action="#" method="post">
                        <h1>Not a member yet? Sign Up!</h1>
                        <label class="grey" for="signup">Username:</label>
                        <input class="field" type="text" name="signup" id="signup" value="" size="23" />
                        <label class="grey" for="email">Email:</label>
                        <input class="field" type="text" name="email" id="email" size="23" />
                        <label>A password will be e-mailed to you.</label>
                        <input type="submit" name="submit" value="Register" class="bt_register" />
                    </form>
                </div>
            </div>
        </div> <!-- /login -->

	<!-- The tab on top -->
	<div class="tab">

		<ul class="login">
			<li class="left">&nbsp;</li>
            <sec:ifLoggedIn>
                <li><sec:username/>!</li>
                <li class="sep">|</li>
                <li>
                    <g:link controller='logout'>Logout</g:link>
                </li>
            </sec:ifLoggedIn>
            <sec:ifNotLoggedIn>
                <li id="toggle">
                    <a id="open" class="open" href="#">Log In | Register</a>
                    <a id="close" style="display: none;" class="close" href="#">Close Panel</a>
                </li>
            </sec:ifNotLoggedIn>
            <li class="right">&nbsp;</li>
		</ul>
	</div> <!-- / top -->
</div> <!--panel -->