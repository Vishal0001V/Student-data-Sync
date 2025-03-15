<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fees Payment</title>
<!-- Bootstrap CSS for styling -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
</head>
<body>

	<!-- Main container for the fees payment section -->
	<div class="d-flex justify-content-center align-center">

		<!-- Container for the fees payment form -->
		<div class="w-50 align-middle border border-info border-3 mt-2"
			style="height: 500px">
			<h6 class="p-3 text-primary">
				<u>Instalment Details :-</u>
			</h6>

			<!-- Inner container for the table and form -->
			<div class="border border-secondary m-3 p-2">

				<!-- Table to display student details -->
				<table class="table table-hover border border-secondary">
					<tbody>
						<tr class="table-primary fs-6">
							<th>Student Id</th>
							<td>${students.stuId}</td>
						</tr>
						<tr class="table-primary fs-6">
							<th>Student Name</th>
							<td>${students.stuName}</td>
						<tr class="table-primary fs-6">
							<th>Course Name</th>
							<td>${students.stuCourse}</td>
						</tr>
						<tr class="table-primary fs-6">
							<th>Batch Number</th>
							<td>${students.stuBthNum}</td>
						</tr>
						<tr class="table-danger fs-6">
							<th>Fees Paid</th>
							<td>${students.feesPaid}</td>
						</tr>
					</tbody>
				</table>

				<!-- Form to add installment payment -->
				<form action="payfees">
					<input type="hidden" name="studentId" value="${students.stuId}">
					<div class="bg-dark p-2 d-flex justify-content-between">
						<label for="amount" class="text-info"><b>Enter
								Installment<br> Amount
						</b></label> <input type="number" name="ammount" max="30000">
					</div>
					<div class="d-flex justify-content-center pt-5">
						<button class="btn btn-success btn-sm">Add Installment</button>
					</div>
				</form>

			</div>
		</div>

	</div>

</body>
</html>