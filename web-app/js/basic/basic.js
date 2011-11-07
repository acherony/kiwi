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
          $("#dialog").dialog();
        });

