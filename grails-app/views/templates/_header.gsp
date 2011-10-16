<%--
  Created by IntelliJ IDEA.
  User: martin.knap
  Date: 29.06.11
  Time: 00:30
  To change this template use File | Settings | File Templates.
--%>
<g:applyLayout name="main">
  <content tag="header">
         <div id="header">
                <div class="confine">
                    <ul id="nav-main">
                    <li class="home"><strong><a href="/"><g:message code="mainMenu.logo.label" default="DoWeDo"/></a></strong></li>
                    <li class="ie6-hover"><strong><a href="/"><g:message code="mainMenu.jobs.label" default="Jobs"/></a></strong>
                        <ul>
                            %{--<!--[if lte IE 6]><iframe frameborder="0" src="javascript:'&lt;html&gt;&lt;/html&gt;'"></iframe><![endif]-->--}%
                            <li><a href="/"><g:message code="mainMenu.overview.label" default="Overview"/></a></li>
                            <li><a href="/"><g:message code="mainMenu.findJobs.label" default="Find Jobs"/></a></li>
                            <li class="spacer"><a href="/"><g:message code="mainMenu.myJobs.label" default="My Jobs"/></a></li>
                            <li><a href="/"><g:message code="mainMenu.closedJobs.label" default="Closed Jobs"/></a></li>
                        </ul>
                    </li>
                    <li class="ie6-hover selected"><strong><a href="/"><g:message code="mainMenu.business.label" default="Business"/></a></strong>
                        <ul>
                            %{--<!--[if lte IE 6]><iframe frameborder="0" src="javascript:'&lt;html&gt;&lt;/html&gt;'"></iframe><![endif]-->--}%
                            <li><a href="/"><g:message code="mainMenu.overview.label" default="Overview"/></a></li>
                            <li><a href="/"><g:message code="mainMenu.findBusiness.label" default="Find Business"/></a></li>
                            <li class="spacer"><a href="/"><g:message code="mainMenu.myBusiness.label" default="My Business"/></a></li>
                        </ul>
                    </li>
                    <li class="ie6-hover"><strong><a href="/"><g:message code="mainMenu.deals.label" default="Deals"/></a></strong>
                        <ul>
                            %{--<!--[if lte IE 6]><iframe frameborder="0" src="javascript:'&lt;html&gt;&lt;/html&gt;'"></iframe><![endif]-->--}%
                            <li><a href="/"><g:message code="mainMenu.overview.label" default="Overview"/></a></li>
                            <li><a href="/"><g:message code="mainMenu.dealOfTheDay.label" default="Deal of the Day"/></a></li>
                            <li><a href="/"><g:message code="mainMenu.findDeals.label" default="Find Deals"/></a></li>
                            <li class="spacer"><a href="/"><g:message code="mainMenu.myBusiness.label" default="My Deals"/></a></li>
                        </ul>
                    </li>
                    <li class="ie6-hover"><strong><a href="/"><g:message code="mainMenu.advice.label" default="Need a Advice?"/></a></strong>
                        <ul>
                            %{--<!--[if lte IE 6]><iframe frameborder="0" src="javascript:'&lt;html&gt;&lt;/html&gt;'"></iframe><![endif]-->--}%
                            <li><a href="/"><g:message code="mainMenu.overview.label" default="Overview"/></a></li>
                            <li><a href="/"><g:message code="mainMenu.dealOfTheDay.label" default="Advice of the Day"/></a></li>
                            <li><a href="/"><g:message code="mainMenu.findAdvice.label" default="Find Help"/></a></li>
                        </ul>
                    </li>
                </ul>
                </div>
         </div>
  </content>
</g:applyLayout>