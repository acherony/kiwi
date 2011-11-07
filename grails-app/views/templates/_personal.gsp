<%--
  Created by IntelliJ IDEA.
  User: martin.knap
  Date: 29.06.11
  Time: 00:30
  To change this template use File | Settings | File Templates.
--%>


  <content tag="personal">
      <div id="content" class="confine">

  <div id="myxing">
          <sec:ifNotLoggedIn>
              <ul>
              <li class="myxing-profil">
                  <div>
                    <a id="loginLink" href="login/auth" >Log inF</a>
                    <a id="loginLink2" href="#" >Log inJ</a>
                   %{-- <div id="dialog" title="Dialog Title">I'm in a dialog</div>--}%

                    <script type="text/javascript">

/*                      $(document).ready(function() {
                        $("#loginLink2").dialog();
                      });*/


                       jQuery('#loginLink2').click(function() {
                           $('#loginLink2').dialog()
                           //$('#loginLink').show().dialog('open')
                                $('#username').focus();
                                //alert("Hello world!");
                       });

                      jQuery('#loginLink').fancybox();

/*                    jQuery('#loginLink').fancybox({
                        //'showCloseButton'	: true,
                        //'opacity'           : false,
                        //'modal'             : true
                        //'overlayOpacity'        : 0.5,
                        //'enableEscapeButton'    : true
                    });*/

                    </script>
                  </div>
              </li>
              </ul>
          </sec:ifNotLoggedIn>

          <sec:ifLoggedIn>
            <ul>
              <li class="myxing-profil">
  m
  +
  Logged in as <sec:username/> <g:link controller='logout'>Logout</g:link>
              <a class="tooltip inv-link" href="/profile/Martin_Knap?sc_o=mxb_p">
              <img width="30" height="40" alt="Martin Knap" class="user-pic" src="/img/users/7/a/7/d9e04a5c1.7000218_s2,1.jpg">
              <span class="tooltip-right">My profile</span>
              </a>

              <div>Basic</div>

              </li>
              <li class="flip-switch-wrapper">
              <div class="flip-switch">
              <a href="/app/billing?reagent=uplt_76" class="upgrade upgrade-ext-very-small">
              <img width="3" height="6" src="/img/sections/upsell/myxing_small_arrow.png">
              <em>Premium benefits</em>
              </a>
              </div>
              </li>
              <li>
              <a data-myxing-tracking="messages" data-myxing-bar="op=listbox;type=INBOX" class="icn icn-ext-myxing-messages open-link tooltip" href="/app/message">
              <div style="display:none" data-update-count="unread_messages" class="count">0</div>
              <span class="tooltip-right">Messages</span>
              </a>
              <div style="display:none" class="arrow"></div>
              </li>
              <li>
              <a data-myxing-tracking="jobs" data-myxing-bar="/myxing" class="icn icn-ext-myxing-jobs open-link tooltip" href="/jobs">
              <span class="tooltip-right">Jobs and Careers</span>
              </a>
              <div style="display:none" class="arrow"></div>
              </li>
              <li class="sub-top">
              <a class="icn icn-ext-myxing-settings open-link tooltip" href="/app/settings?sc_o=mxb_se">
              <span class="tooltip-right">Settings</span>
              </a>
              </li>
              <li>
              <a class="icn icn-ext-myxing-bill open-link tooltip" href="/app/billing?op=invoices;sc_o=mxb_b">
              <span class="tooltip-right">Invoices &amp; Accounts</span>
              </a>
              </li>
          </ul>
          </sec:ifLoggedIn>


  </div>
  <div style="display:none" class="myxing-container">
  <div class="myxing-content myxing-loading">
  <p style="display:none" class="sys-alert-message">Whoops....something went wrong. Please reload the page.</p>
  </div>
  <a href="#" class="close icon-links icn-ext-ctr-close-lightbox">Close window</a>
  </div>
  <div style="display: none;" id="modal-window-myxing">
  <div class="wrapper lightbox-inner">
  <h3>Really delete?</h3>
  <div class="txr clfx">
  <button class="cancel-button-inline mr10 do-cancel">Cancel</button>
  <button class="button submit-button-inline do-confirm">
  <span><em>Confirm</em></span>
  </button>
  </div>
  </div>
  </div>

  </div>
  </content>
