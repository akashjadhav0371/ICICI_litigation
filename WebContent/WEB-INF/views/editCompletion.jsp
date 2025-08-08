<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

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

<div class="page_container">
	<!--heading text-->

	<sf:form class="form-horizontal" role="form"
		enctype="multipart/form-data" commandName="editCompletion"
		action="./updateCompletion" method="post"
		onsubmit="return validateCompletion();">

		<div class="col-md-10">
			<div class="header_button">
				<!--<button type="button" class="btn btn-primary" id="wdt_re">Litigation Summary</button>-->
				<h2 style="color: #a72f14; font-size: 24px; float: left;">Edit
					Completion</h2>
				<a
					href="./litigationDetails?liti_id=<%=request.getParameter("liti_id")%>"><img
					src="images/DashboardIcons/backold.png" class="backButton"
					width="100px;"></a>
			</div>
		</div>

		<div style="clear: both"></div>
		<div class="f_form_content">
			<h2>Edit</h2>

			<table>


				<div class="form-group" style="display: none">
					<label class="control-label col-sm-5" for="sel1">Litigation
						ID :</label>
					<div class="col-sm-7">
						<sf:input class="form-control" path="liti_id" />
					</div>
				</div>


				<tr>
					<td style="text-align: right; padding: 10px;"><strong>Result
							: <i style="color: red;">*</i>
					</strong></td>
					<td style="text-align: left; padding: 10px;"><sf:select
							class="form-control" path="liti_litigation_result">
							<sf:option value="0">-- Select --</sf:option>
							<sf:option value="Against">Against</sf:option>
							<sf:option value="In Favour">In Favour</sf:option>
							<!-- <option value="Partially Against">Partially Against</option>
											<option value="Partially In Favour">Partially In Favour</option> -->
							<sf:option value="Settled">Settled</sf:option>
							<sf:option value="WithDrawn">WithDrawn</sf:option>
						</sf:select>
				</tr>
				<tr>
					<td style="text-align: right; padding: 10px;"><strong>Disposal
							Date : <i style="color: red;">*</i>
					</strong></td>

					<td style="text-align: left; padding: 10px;"><div
							id="datepicker1" class="input-group date" data-date-format="MM">
							<sf:input class="form-control" type="text"
								path="liti_disposal_date" id="liti_disposal_date"
								name="liti_disposal_date" readonly="true" />
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-calendar"></i></span>
						</div></td>
				</tr>
				<!-- <tr id="against_tab" style="display: none;">
					<td style="text-align: right; padding: 10px;"><strong>Whether
							want to filing Appeal : </strong></td>
					<td style="text-align: left; padding: 5px;"><input
						type="radio" value="Yes" name="file_appeal_result" id="file_yes">
						Yes &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
						type="radio" checked="checked" value="No"
						name="file_appeal_result" id="file_no"> No<br></td>
				</tr> -->
				<tr id="synopsis_div">
					<td style="text-align: right; padding: 10px;"><strong>Synopsis
							of the order :<i style="color: red;">*</i>
					</strong></td>
					<td style="text-align: left; padding: 10px;"><sf:textarea
							class="form-control" path="liti_synopsis_of_order"></sf:textarea></td>
				</tr>


				<tr id="court_div">
					<td style="text-align: right; padding: 10px;"><strong>Court/Tribunal
							: <i style="color: red;">*</i>
					</strong></td>
					<td style="text-align: left; padding: 10px;"><sf:select
							path="liti_completion_court_id" class="form-control">
							<sf:option value="0">--Select--</sf:option>
							<c:forEach items="${allCourt}" var="court">
								<sf:option value="${court.court_id}">${court.court_name}</sf:option>
							</c:forEach>
						</sf:select></td>
				</tr>


				<tr id="last_date_div">
					<td style="text-align: right; padding: 10px;"><strong>Last
							Date for Fillig Appeal : </strong></td>
					<td style="text-align: left; padding: 10px;">
						<div id="datepicker2" class="input-group date"
							data-date-format="MM">
							<sf:input class="form-control" type="text"
								path="liti_last_date_for_filling_appeal"
								id="liti_last_date_for_filling_appeal"
								name="liti_last_date_for_filling_appeal" readonly="true" />
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-calendar"></i></span>
						</div>
					</td>
				</tr>
				<tr>
					<td style="text-align: right; padding: 10px;"><strong>Comments
							:<!-- <i style="color: red;">*</i> -->
					</strong></td>
					<td style="text-align: left; padding: 10px;"><sf:textarea
							class="form-control" path="liti_comments"></sf:textarea></td>
				</tr>
				<!-- <tr>
												<td style="text-align: right; padding: 10px;"><strong>Upload
														File :</strong></td>
												<td style="text-align: left; padding: 10px;"><input
													type="file" name="liti_completion_doc" /></td>
											</tr> -->

				<tr>
					<td id="filesContainer2"></td>
					<td class="form-group"><label class="control-label col-sm-5"></label>
						<div class="col-sm-7">
							<td class="col-md-6 litigation_buttons">
								<button type="button" class="btn btnTaskCompDoc"
									onclick="addFileInput2();">Document</button>
							</td>
						</div></td>
				</tr>
				<tr>
					<td style="text-align: right; padding: 10px;"><input
						type="submit" class="btn btn-success" name="Update" value="Update"></td>
					<td style="text-align: left; padding: 10px;"></td>
				</tr>
			</table>
		</div>

	</sf:form>
	<div style="clear: both"></div>
</div>
</div>


<script type="text/javascript">
	$(document).ready(function() {

		//alert("previous id: "+ '${litigation_details_by_id.liti_previous_liti_ref_no}');
		$("#liti_completion_court_id").multiselect({
			buttonWidth : '290px',
			enableFiltering : true,
			filterBehavior : 'text',
			enableCaseInsensitiveFiltering : true,
			maxHeight : 200,
			onChange : function(option, checked) {
				var values = [];
				$('#liti_completion_court_id option').each(function() {
					if ($(this).val() !== option.val()) {
						values.push($(this).val());
					}
				});

				$('#liti_completion_court_id').multiselect('deselect', values);
			}
		});
	});

	$('#liti_litigation_result').on('click', function() {
		var e = document.getElementById("liti_litigation_result");
		var strUser = e.options[e.selectedIndex].text;
		//alert("onclick "+strUser);
		
		if (strUser == 'Against') {
			/* $("#synopsis_div").hide();
			$("#court_div").hide();
			$("#last_date_div").hide(); */
			$("#against_tab").show();

		} else {

			/* $("#synopsis_div").show();
			$("#court_div").show();
			$("#last_date_div").hide(); */
			$("#against_tab").hide();
		}
	});

	$('input[name="file_appeal_result"]').on("click", function() {
		if ($(this).val() == 'Yes') {

			$("#last_date_div").show();

		} else {
			$("#last_date_div").hide();
		}
	});

	/* $("#liti_litigation_result").on('change', function() {
		if ($(this).val() == 'Against') {
			$("#court_div").hide();
		} else {
			$("#court_div").show();
		}
	});
	
	$("#liti_litigation_result").on('change', function() {
		if ($(this).val() == 'Against') {
			$("#synopsis_div").hide();
		} else {
			$("#synopsis_div").show();
		}
	}); */
</script>

<script src="appJs/Litigation/litigation.js"></script>
<script src="appJs/Completion/editCompletion_validate.js"></script>
<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
