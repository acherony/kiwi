<%--
  Created by IntelliJ IDEA.
  User: martin.knap
  Date: 02/11/11
  Time: 10:38
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<div id="header">
<span class="hk-bg"></span>
<div class="navigation">
    <h1 id="logo" title="KIWI">
    <a href="/">
        <span>KIWI</span>
    </a>
</h1>
<ul>
    <li class="item-1 odd first has-sub">
        <a title="Job" href="/games">
        <span>JOBS</span>
        </a>
    <span class="hk-bg"></span>
    <div class="menu">
    <ul>
    <li class="item-1 odd first">
    <ul>
    <li class="item-1 odd first">
    <a title="Browse Games" href="/games">
    <span> Browse Games</span>
    </a>
    </li>
    <li class="item-2 even">
    <a title="Latest Releases" href="/new">
    <span> Latest Releases</span>
    </a>
    </li>
    <li class="item-3 odd">
    <a title="Upcoming Games" href="/coming-soon">
    <span> Upcoming Games</span>
    </a>
    </li>
    <li class="item-4 even">
    <a title="Play Free Games" href="/1/play-free-games">
    <span> Play Free Games</span>
    </a>
    </li>
    </ul>
    </li>
    <li class="item-2 even last">
    <span class="title"> Featured Platforms</span>
    <ul>
    <li class="item-1 odd first">
    <a title="PC Games" href="/pc">
    <span> PC Games</span>
    </a>
    </li>
    <li class="item-2 even">
    <a title="Xbox 360® " href="/xbox-360">
    <span> Xbox 360&reg; </span>
    </a>
    </li>
    <li class="item-3 odd">
    <a title="PlayStation®3" href="/ps3">
    <span> PlayStation&reg;3</span>
    </a>
    </li>
    <li class="item-4 even">
    <a title="Wii™ " href="/wii">
    <span> Wii&trade; </span>
    </a>
    </li>
    <li class="item-5 odd">
    <a title="iPhone" href="/iphone">
    <span> iPhone</span>
    </a>
    </li>
    <li class="item-6 even">
    <a title="iPad" href="/ipad">
    <span> iPad</span>
    </a>
    </li>
    <li class="item-7 odd">
    <a title="Android" href="/android">
    <span> Android</span>
    </a>
    </li>
    <li class="item-8 even">
    <a title="Facebook Games" href="/facebook">
    <span> Facebook Games</span>
    </a>
    </li>
    <li class="item-9 odd last view-all">
    <a title="View All Platforms" href="/games">
    <span> View All Platforms</span>
    </a>
    </li>
    </ul>
    </li>
    </ul>
    </div>
    </li>
    <li class="item-2 even">
        <a title="News" href="/news">
        <span>BUSINESS</span>
        </a>
    </li>
    <li class="item-3 odd">
        <a title="Help" href="http://localhost:8080/kiwi">
        <span>HELP</span>
        </a>
    </li>
    <li class="item-4 even last">
        <a class="link link-origin" title="Business Directory" href="http://www.localhost:8080/kiwi">
        <span>Business Directory</span>
        </a>
    </li>
</ul>
<form id="search-form" action="/search" method="GET">
<div class="fieldset">
<div class="field">
<span>
<input id="field-search" class="text" type="text" maxlength="255" title="Search" name="q">
</span>
</div>
</div>
<div class="actions">
<input type="submit" value="" title="Search">
</div>
</form>
</div>
</div>