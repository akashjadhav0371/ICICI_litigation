<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

<div class="page_container">
	<div class="container">
		<!-- Header -->
		<div class="row">
			<div class="col-md-12">
				<div class="header_button">
					<!--<button type="button" class="btn btn-primary" id="wdt_re">Litigation Summary</button>-->
					<h2 style="color: #a72f14; font-size: 24px; float: left;">Customisable Listing</h2>
					<a href="./listLitigation"><img
						src="images/DashboardIcons/backold.png" class="backButton"
						width="100px;"></a>
				</div>
			</div>
		</div>
		</div>
		
		<div class="f_form_content" style="margin-top: 10px;">
						<h2>Select Columns</h2>
						<div class="col-md-12">
						 <form class="toggles">
						
	
	<div class="col-md-12">
	<div class="col-md-3">	
				<label> <span>Litigation Id</span> <input type="checkbox"
					name="toggle[]" value="liti_client_liti_id">
				</label>
	</div>	
	<div class="col-md-3">					
				<label> <span>Company (By/Against)</span> <input type="checkbox"
					name="toggle[]" value="liti_against_by_id">
				</label>
			 </div>		
			 	<div class="col-md-3">		
				<label> <span>Case Reference No</span> <input type="checkbox"
					name="toggle[]" value="liti_case_reference_no">
				</label>
	 </div>		
	 		
		 <div class="col-md-3">		
				<label> <span>Category</span> <input type="checkbox"
					name="toggle[]" value="liti_type_name">
				</label>
				
				</div>
				</div>
	
	
	<div class="col-md-12">
	<div class="col-md-3">			
				<label> <span>Next Hearing Date</span> <input type="checkbox"
					name="toggle[]" value="liti_next_hearing_date">
				</label>
				 </div>	
		
		<div class="col-md-3">	
				<label> <span>Case Title</span> <input type="checkbox"
					name="toggle[]" value="liti_case_title">
				</label>
		 </div>	
		 		
		 		
		 <div class="col-md-3">		
				<label> <span>Jurisdiction name</span> <input type="checkbox"
					name="toggle[]" value="liti_jurisdiction_name">
				</label>
				</div>	
				
				
			<div class="col-md-3">	
				<label> <span>Company External counsel</span> <input type="checkbox"
					name="toggle[]" value="liti_external_counsel">
				</label>
				</div>	
				</div>	
		 		
		<div class="col-md-12">
	<div class="col-md-3">		
				<label> <span>Matter Handled by</span> <input type="checkbox"
					name="toggle[]" value="liti_internally_handled_name">
				</label>
		</div>	
				
	<div class="col-md-3">
				<label> <span>Internal contact person</span> <input type="checkbox"
					name="toggle[]" value="liti_intenal_person">
				</label>
				</div>
		<div class="col-md-3">
				<label> <span>By Party</span> <input type="checkbox"
					name="toggle[]" value="liti_party_by">
				</label>
				</div>
		<div class="col-md-3">		
				<label> <span>Against Party</span> <input type="checkbox"
					name="toggle[]" value="liti_party_against">
				</label>
				
				</div>
				</div>
				
	<div class="col-md-12">
	<div class="col-md-3">
				
				<label> <span>Opposite Party address</span> <input type="checkbox"
					name="toggle[]" value="liti_oppo_party_address">
				</label>
				</div>
			
	<div class="col-md-3">	
				<label> <span>Opposite Party Advocate Law Firm</span> <input type="checkbox"
					name="toggle[]" value="liti_oppo_advo_law_firm">
				</label>
				</div>
		<div class="col-md-3">			
				<label> <span>Opposite Party Advocate name</span> <input type="checkbox"
					name="toggle[]" value="liti_opposite_party_advocate">
				</label>
				</div>
	<div class="col-md-3">				
				<label> <span>Advocate contact number</span> <input type="checkbox"
					name="toggle[]" value="liti_oppo_advo_contact">
				</label>
				</div>
				</div>
				
				
				
		<div class="col-md-12">
		<div class="col-md-3">	
				<label> <span>Court/Tribunal</span> <input type="checkbox"
					name="toggle[]" value="liti_court">
				</label>
				</div>
				
		<div class="col-md-3">		
				<label> <span>Amount Involved</span> <input type="checkbox"
					name="toggle[]" value="liti_amount_involved">
				</label>
				</div>
				
		<div class="col-md-3">		
				<label> <span>Relevant Law</span> <input type="checkbox"
					name="toggle[]" value="liti_relevant_law">
				</label>
				</div>
		
		<div class="col-md-3">
		<label> <span>Brief Description</span> <input type="checkbox"
					name="toggle[]" value="liti_brief_description">
				</label>
				</div>
				</div>
				
				
	<div class="col-md-12">
		<div class="col-md-3">			
				<label> <span>Primary Responsible Person</span> <input type="checkbox"
					name="toggle[]" value="liti_assigned_name">
				</label>
				</div>
				
		<div class="col-md-3">				
				<label> <span>Secondary Responsible Person</span> <input type="checkbox"
					name="toggle[]" value="liti_secondary_responsible_name">
				</label>			
	    </div>
			<div class="col-md-3">	
				<label> <span>Third Responsible Person</span> <input type="checkbox"
					name="toggle[]" value="liti_third_responsible_person_name">
				</label>
		 </div>		
				
	<div class="col-md-3">			
				<label> <span>Update Status</span> <input type="checkbox"
					name="toggle[]" value="liti_updated_by">
				</label>
			</div>
			</div>
			</div>
			
			<div class="col-md-10" style="margin-bottom: 10px;">
			<a href="#" id="exportXls"
				class="list-group-item col-md-2 btn btn-success"><img
				src='images/reportIcons/xls.png' width="22" />Export XLS</a>
		</div>
				</div>
						
		<div class="table_data1">
		
		<!-- ---------------------------------------------------------------------------------------------------------------------------------------------- -->


		<!-- -------------------------------------------------------------------------------------------------------------------------------------------- -->
		<div class="container">
			<!-- <div class="col-md-12">
				<p>
					<b>Total Records : </b><label id="count"></label>
				</p>
			</div> -->
			<table id="LitigationList" class="table table-striped table-bordered" 
				width="100%" cellspacing="0">
				<thead>
					<tr style="background: #a72f14; color: #fff; display:column">

						<th class="liti_client_liti_id">Litigation Id</th>
						<th class="liti_against_by_id">Company (By/Against)</th>
						<th class="liti_case_reference_no">Case Reference No</th>
						<th class="liti_type_name" class="demo visi">Category</th>
						<th class="liti_case_filing_date" class="demo visi">Case Filling Date</th>
						
						<th class="liti_next_hearing_date">Next Hearing Date</th>
						<th class="liti_case_title">Case Title</th>
						<th class="liti_jurisdiction_name" class="demo visi">Jurisdiction name</th>
						<th class="liti_external_counsel" class="demo visi">Company External counsel</th>
						<th class="liti_internally_handled_name" class="demo visi">Matter Handled by</th>
						<th class="liti_intenal_person" class="demo visi">Internal contact person</th>
						
						<th class="liti_party_by" class="demo visi">By Party</th>
						<th class="liti_party_against" class="demo visi">Against Party</th>
						<th class="liti_oppo_party_address" class="demo visi">Opposite Party address</th>
						<th class="liti_oppo_advo_law_firm" class="demo visi">Opposite Party Advocate Law Firm</th>
						<th class="liti_opposite_party_advocate" class="demo visi">Opposite Party Advocate name</th>
						<th class="liti_oppo_advo_contact" class="demo visi">Advocate contact number</th>
						<th class="liti_court" class="demo visi">Court/Tribunal</th>
						<th class="liti_amount_involved" class="demo visi">Amount Involved</th>
						<th class="liti_relevant_law" class="demo visi">Relevant Law</th>
						<th class="liti_brief_description" class="demo visi">Brief Description</th>
						<th class="liti_litigation_result">Status</th>
						<th class="liti_assigned_name">Primary Responsible Person</th>
						<th class="liti_secondary_responsible_name">Secondary Responsible Person</th>
						<th class="liti_third_responsible_person_name">Third Responsible Person</th>
						<th class="liti_updated_by">Update Status</th>
						<th>Action</th>
						
					</tr>
				</thead>

				<tbody id="searchResult">
					<c:forEach items="${list_litigation}" var="litigation">
						<tr id="row_${litigation.liti_id}">
							<td class="liti_client_liti_id">${litigation.liti_client_liti_id}</td>
							<td class="liti_against_by_id">${litigation.liti_against_by_id}Company</td>
							<td class="liti_case_reference_no">${litigation.liti_case_reference_no}</td>
							
							<td class="liti_type_name" class="demo visi">${litigation.liti_type_name}</td>
							<td class="liti_case_filing_date" class="demo visi">${litigation.liti_case_filing_date}</td>
							<td class="liti_next_hearing_date">${litigation.liti_next_hearing_date}</td>
							<td class="liti_case_title">${litigation.liti_case_title}</td>
							
							<td class="liti_jurisdiction_name" class="demo visi">${litigation.liti_jurisdiction_name}</td>
							<td class="liti_external_counsel" class="demo visi">${litigation.liti_external_counsel}</td>
							<td class="liti_internally_handled_name" class="demo visi">${litigation.liti_internally_handled_name}</td>
							<td class="liti_intenal_person" class="demo visi">${litigation.liti_intenal_person}</td>
							
							<td class="liti_party_by" class="demo visi">${litigation.liti_party_by}</td>
							<td class="liti_party_against" class="demo visi">${litigation.liti_party_against}</td>
							<td class="liti_oppo_party_address" class="demo visi">${litigation.liti_oppo_party_address}</td>
							<td class="liti_oppo_advo_law_firm" class="demo visi">${litigation.liti_oppo_advo_law_firm}</td>
							<td class="liti_opposite_party_advocate" class="demo visi">${litigation.liti_opposite_party_advocate}</td>
							
							<td class="liti_oppo_advo_contact" class="demo visi">${litigation.liti_oppo_advo_contact}</td>
							<td class="liti_court" class="demo visi">${litigation.liti_court}</td>
							<td class="liti_amount_involved" class="demo visi">${litigation.liti_amount_involved}</td>
							<td class="liti_relevant_law" class="demo visi">${litigation.liti_relevant_law}</td>
							<td class="liti_brief_description" class="demo visi">${litigation.liti_brief_description}</td>
							
							<td class="liti_litigation_result">${litigation.liti_litigation_result}</td>
							<td class="liti_assigned_name">${litigation.liti_assigned_name}</td>
							<td class="liti_secondary_responsible_name">${litigation.liti_secondary_responsible_name}</td>
							<td class="liti_third_responsible_person_name">${litigation.liti_third_responsible_person_name}</td>
							<td class="liti_updated_by">${litigation.liti_updated_by}</td>
							<%-- <td class="liti_updated_at">${litigation.liti_updated_at}</td> --%>

					
						</tr>
					</c:forEach>

				</tbody>
			</table>
		</div>
	</div>
		
		<div class="modal fade" id="dialogBox" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header" style="background-color: #e26d1c;">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">
					<span class="glyphicon glyphicon-remove-sign"></span> &nbsp;Error
				</h4>
			</div>
			<div class="modal-body"></div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			</div>
		</div>

	</div>
</div>
<!-- Fail Modal END -->

<style>
table {
  border-collapse: collapse;
  margin-bottom: 50px;
}

table, tr, td {
  border: 1px solid black;
}

th, td {
  display: none;
  padding: 5px;
}

th.show, td.show {
  display: table-column;
  
}

.toggles {
  display: flex;
  flex-direction: column;
}
</style>

<div class="page_container">
	<!--heading text-->

	

	<div style="clear: both"></div>


	<!--first form-->

	
</div>

<!-- Fail Modal -->
<div class="modal fade" id="actionFail" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header" style="background-color: #e26d1c;">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">
					<span class="glyphicon glyphicon-remove-sign"></span> &nbsp;Error
				</h4>
			</div>
			<div class="modal-body">
				<p>This Litigation Field is used in External Counsel. Can't be
					deleted</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			</div>
		</div>

	</div>
</div>

<style>
.visi {
	display: none;
	/* visibility:hidden */
}
</style>
<script type="text/javascript">
	$(document)
			.ready(
					function() {

						document.getElementById('count').innerHTML = ($('#LitigationList >tbody >tr').length);
					});
	$("#exportXls").click(function() {
		$("th").removeClass("visi");
		$("td").removeClass("visi");

		//alert("acm"+exportXls);
		/* console.log("Hiii"); */
		$('#LitigationList').tableExport({
			type : 'excel',
			escape : 'false',
			ignoreColumn : [ 21 ]
		});
		$(".demo").addClass("visi");
		$(".demo").addClass("visi");

	})

	
	
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


<script src="appJs/Litigation/litigation.js"></script>
<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>