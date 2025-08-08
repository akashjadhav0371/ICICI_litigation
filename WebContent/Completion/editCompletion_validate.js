

function validateCompletion(){
	
	var liti_litigation_result 		= $("#liti_litigation_result").val();
	var liti_disposal_date 			= $("#liti_disposal_date").val();
	var liti_synopsis_of_order 		= $("#liti_synopsis_of_order").val();
	var liti_completion_court_id	= $("#liti_completion_court_id").val();
	var liti_last_date_for_filling_appeal = $("#liti_last_date_for_filling_appeal").val();
	
	
	
	if (liti_litigation_result == 0 ) {
   	 
  		$( "#liti_litigation_result" ).attr( "data-placement", "top" );
  		$( "#liti_litigation_result" ).attr( "data-content", "Please select result." );
  		$('#liti_litigation_result').popover('show');
	
         return false;
     } else {
      	$('#liti_litigation_result').popover('destroy');
      }
	
	if (liti_disposal_date == 0 ) {
	   	 
  		$( "#liti_disposal_date" ).attr( "data-placement", "top" );
  		$( "#liti_disposal_date" ).attr( "data-content", "Please select Disposal date." );
  		$('#liti_disposal_date').popover('show');
	
         return false;
     } else {
      	$('#liti_disposal_date').popover('destroy');
      }
	
	
	if (liti_synopsis_of_order == 0 ) {
	   	 
  		$( "#liti_synopsis_of_order" ).attr( "data-placement", "top" );
  		$( "#liti_synopsis_of_order" ).attr( "data-content", "Please enter Synopsis of order." );
  		$('#liti_synopsis_of_order').popover('show');
	
         return false;
     } else {
       	$('#liti_synopsis_of_order').popover('destroy');
       }
 	
	if (liti_completion_court_id == 0 ||  liti_completion_court_id == "NA") {
	   	 
  		$( "#liti_completion_court_id" ).attr( "data-placement", "top" );
  		$( "#liti_completion_court_id" ).attr( "data-content", "Please select court." );
  		$('#liti_completion_court_id').popover('show');
	
         return false;
     } else {
      	$('#liti_completion_court_id').popover('destroy');
      
      }
	
	
	if(liti_litigation_result == 'Against'){
	
	
	}
	 else {
		if(document.getElementById('file_yes').checked && liti_last_date_for_filling_appeal == 0){
			$( "#liti_last_date_for_filling_appeal" ).attr( "data-placement", "top" );
	  		$( "#liti_last_date_for_filling_appeal" ).attr( "data-content", "Please select Last Date for Filling Appeal." );
	  		$('#liti_last_date_for_filling_appeal').popover('show');
		
	         return false;
	     } else {
	      	$('#liti_last_date_for_filling_appeal').popover('destroy');
	      }
		}
	
}

var filecount = 1;
	function addFileInput2() {
	   // if(filecount <=5){
		$('#filesContainer2')
		.append(
				"<div class='form-group' id='file"+filecount+"'>"
				+"<label class='col-sm-3 control-label'>Upload Document :</label>"
				+"<div class='col-sm-4'><input type='file' name='edit_completion_documents' class='file-loading'/>"
				+"</div>"
				+"<div class='col-sm-1' style='text-align: right;'>"
				+"<i class='glyphicon glyphicon-remove-circle' onclick='deleteRow("+filecount+");' style='color: red;cursor:pointer;' title='Delete'></i>"
				+"</div></div>");
		filecount++;
	    //}
	}

	function deleteRow(filecount) {
		$("#file" + filecount).remove();
}
