<%--
  Created by IntelliJ IDEA.
  User: martin.knap
  Date: 09.06.11
  Time: 14:06
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head><title>Inserat Post</title></head>
    <meta name="layout" content="main  "/>

    <style>
        #feedback { font-size: 1.4em; }
        #selectable .ui-selecting { background: #FECA40; }
        #selectable .ui-selected { background: #F39814; color: white; }
        #selectable { list-style-type: none; margin: 0; padding: 0; width: 60%; }
        #selectable li { margin: 3px; padding: 0.4em; font-size: 1.4em; height: 18px; }
        #selectable option { margin: 3px; padding: 0.4em; font-size: 1.4em; height: 18px; }

    </style>
%{--    <jqgrid:resources />--}%
    <g:javascript library="jquery" />
    <g:javascript plugin="jquery-ui"/>
    <g:javascript plugin="jqgrid"/>
    <jqgrid:resources/>
    <jqui:resources/>
    <jq:resources/>
%{--    <g:javascript library="jquery.jqGrid-4.1.2"/>--}%
    <script type="text/javascript">
        $(document).ready(function()
        {
          $("#datepicker").datepicker({dateFormat: 'yy/mm/dd', selectOtherMonths: true} );

          $( "#selectable" ).selectable({
			stop: function() {
				var result = $( "#select-result" ).empty();
				$( ".ui-selected", this ).each(function() {
					var index = $( "#selectable li" ).index( this );
					result.append( " #" + ( index + 1 ) );
				});
			}
		  });

        })
    </script>

    <script type="text/javascript">
	        $(document).ready(function() {
                         alert("'${createLink(controller: 'category',action: 'listCategory')}'")
                         <jqgrid:grid
                                id="category"
                                url="'${createLink(controller: 'customer',action: 'jq_customer_list')}'"
                                colNames="'First Name', 'Last Name', 'E-mail', 'Phone', 'id'"
                                colModel="{name:'firstName', editable: true},
                                                {name:'lastName', editable: true},
                                                {name:'email', editable: true},
                                                {name:'phone', editable: true},
                                                {name:'id', hidden: true}"
                                sortname="'lastName'"
                                caption="'Contact List'"
                                height="300"
                                autowidth="true"
                                scrollOffset="0"
                                viewrecords="true"
                                showPager="true"
                                datatype="'json'">
                                <jqgrid:filterToolbar id="contactStandard" searchOnEnter="false" />
                                <jqgrid:navigation id="contactStandard" add="true" edit="true"
                                      del="true" search="true" refresh="true" />
                                <jqgrid:resize id="contactStandard" resizeOffset="-2" />
                         </jqgrid:grid>
               });
        </script>

<body>

<p id="feedback">
<span>You've selected:</span> <span id="select-result">none</span>.
</p>

<div id="selectable">
	<li class="ui-widget-content">Item 1</li>
	<li class="ui-widget-content">Item 2</li>
	<li class="ui-widget-content">Item 3</li>
	<li class="ui-widget-content">Item 4</li>
	<li class="ui-widget-content">Item 5</li>
	<li class="ui-widget-content">Item 6</li>
</div>

<div>
 <g:select id="selectable" name="selectable" from="${dom.kiwi.insertion.UnderCategoryLevel1.list()}" optionKey="id" value="${inseratInstance?.underCategoryLevel1?.id}" multiple="true" />
</div>

<div>
   <p> Between <input type="text" id="datepicker"> </p>
    <p>Jqgrid<jqgrid:wrapper id="category"/></p>
</div>


    <g:javascript>
        function updateUnderCategoryLevel1(e) {
            alert (e)

        // Set select to the element "selectbox."
   var select=document.getElementById("categoryL1");
   // Set options to an array of all "option" tags that
   // are children of the select element.
   var options=select.getElementsByTagName("name");
   var i;
   // Loop through the array of options and remove each
   // each one from the parent's childNode list.
   for (i=0; i<options.length; i++)
   {
      select.removeChild(options[i]);
   }// end for i

            alert ("xxx")


	    }

	// This is called when the page loads to initialize city
	//alert ("textOnPageLoad")
	//var zselect = document.getElementById('category.name')
	//var zopt = zselect.options[zselect.selectedIndex]
	${remoteFunction(controller:"category", action:"ajaxGetCategory", params:"\'id=\' + zopt.value", onComplete:"updateUnderCategoryLevel1(e)")}

    </g:javascript>


    <g:render template="/templates/header" />
    <g:render template="/templates/personal" />
    <div class="message">${message}</div>
    <g:form action="post" >
        <td valign="top" class="value ${hasErrors(bean: inseratInstance, field: 'category', 'errors')}">

            <g:select
                name="category.id"
                from="${dom.kiwi.insertion.Category.list()}"
                optionKey="id"
                value="${inseratInstance?.category?.id}"
                multiple="true"
                onchange="${
                    remoteFunction(
                        controller:'category',
                        action:'ajaxGetCategory',
                        params:'\'id=\' + escape(this.value)',
                        onComplete:'alert(e)'
                    )
                }"
            />
            <g:select id="categoryL1" name="categoryL1" from="${dom.kiwi.insertion.UnderCategoryLevel1.list()}" optionKey="id" value="${inseratInstance?.underCategoryLevel1?.id}" multiple="true" />
%{--            --}%%{--TODO radiogroup tag does not recognize "labels" arguments from list--}%%{--
            <g:each in="${catList}" var="i">
                <g:radioGroup name="catRadioGroup" values="i">
                    <p><g:message code="$i"/>:${it.radio}</p>
                </g:radioGroup>
            </g:each>--}%
                                                                                                                  80
        </td>
        <div class="buttons">
            <g:submitButton name="next" value="Continue"></g:submitButton>
        </div>
    </g:form>
  <g:render template="/templates/footer" />
  </body>
</html>