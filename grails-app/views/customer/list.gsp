<%@ page import="net.dbws.tutorials.Customer" %>
<html>
    <head>
                <jq:resources />
                <jqui:resources />
                <jqgrid:resources />
                <script type="text/javascript">
                    $(document).ready(function() {
                                 <jqgrid:grid
                                        id="contact"
                                        url="'${createLink(action: 'jq_customer_list')}'"
                                        colNames="'First Name', 'Last Name', 'E-mail', 'Age', 'id'"
                                        colModel="{name:'firstName', editable: true},
                                                        {name:'lastName', editable: true},
                                                        {name:'email', editable: true},
                                                        {name:'age', editable: true},
                                                        {name:'id', hidden: true}"
                                        sortname="'lastName'"
                                        caption="'Customer List'"
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

    </head>
    <body>
       <div class="body">
           <jqgrid:wrapper id="contact" />
        </div>
    </body>
</html>
