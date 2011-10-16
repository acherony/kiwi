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
  <body>4
  <g:form action="post">
      <g:submitButton name="back" value="Back"></g:submitButton>
      <g:submitButton name="next" value="Continue"></g:submitButton>
  </g:form>

  <g:link action="post" event="step1">step1</g:link>
  <g:link action="post" event="step2">step2</g:link>
  <g:link action="post" event="step3">step3</g:link>
  <g:link action="post" event="step4">step4</g:link>

  </body>
</html>