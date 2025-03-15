<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Student Enrollment</title>

<!-- Bootstrap CSS and Google Fonts -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap"
	rel="stylesheet">

<style>
/* General body styling */
body {
	font-family: 'Poppins', sans-serif;
	background-color: #f8f9fa;
}

/* Background image for the enrollment section */
.enroll {
	background-image: url("imagess/pexels-jplenio-2058946.jpg");
	background-size: cover;
	background-repeat: no-repeat;
	min-height: 100vh;
	display: flex;
	align-items: center;
	justify-content: center;
	padding: 20px;
	color: #fff;
}

/* Styling for the card containing the form */
.card-registration {
	background: linear-gradient(to bottom right, rgba(0, 0, 0, 0.6),
		rgba(52, 152, 219, 0.6));
	border-radius: 15px;
	box-shadow: 0px 8px 20px rgba(0, 0, 0, 0.6);
	padding: 30px;
	width: 100%;
	max-width: 800px;
	animation: fadeIn 1s ease-in-out;
	margin: auto;
	backdrop-filter: blur(10px); /* Blur effect for the card background */
	border: 1px solid rgba(255, 255, 255, 0.1);
}

/* Form input styling */
.form-control {
	border-radius: 8px;
	background: rgba(255, 255, 255, 0.1);
	color: #fff;
	border: 1px solid #3498db;
	transition: all 0.3s ease;
}

/* Submit button styling */
.btn-submit {
	background-color: #3498db;
	color: white;
	font-size: 18px;
	border-radius: 8px;
	padding: 12px;
	width: 100%;
	transition: all 0.3s ease;
}

/* Header styling */
.header {
	background: linear-gradient(90deg, rgba(0, 0, 0, 0.7),
		rgba(52, 152, 219, 0.7)), url("imagess/pexels-jplenio-2058946.jpg")
		no-repeat center center;
	background-size: cover;
	padding: 20px;
	display: flex;
	justify-content: space-between;
	align-items: center;
	color: white;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}
</style>
</head>
<body>
	<!-- Navigation Bar -->
	<div class="header">
		<div class="d-flex align-items-center">
			<img src="imagess/StudentPortalLogo.png" width="50px" height="50px"
				alt="Logo">
			<h1 class="ms-3">Student Portal</h1>
		</div>
		<div>
			<a href="#enroll" class="btn btn-outline-light">Enroll Student</a> <a
				href="viewStudents" class="btn btn-outline-light">View Student</a> <a
				href="/" class="btn btn-outline-light">Logout</a>
		</div>
	</div>

	<!-- Enrollment Section -->
	<section class="enroll" id="enroll">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-10">
					<div class="card card-registration">
						<div class="card-body">
							<h3 class="heading">Student Enrollment Form</h3>

							<!-- Enrollment Form -->
							<form action="enroll_student" method="post">
								<div class="row">
									<!-- Left Column -->
									<div class="col-md-6">
										<div class="mb-3">
											<label class="form-label">Full Name</label> <input
												type="text" class="form-control" name="stuName" required
												placeholder="Enter your full name">
										</div>
										<div class="mb-3">
											<label class="form-label">Email</label> <input type="email"
												class="form-control" name="stuEmail" required
												placeholder="Enter your email">
										</div>
										<div class="mb-3">
											<label class="form-label">Age</label> <input type="number"
												class="form-control" name="stuAge" required
												placeholder="Enter your age">
										</div>
										<div class="mb-3">
											<label class="form-label">College Name</label> <input
												type="text" class="form-control" name="clgName" required
												placeholder="Enter your college name">
										</div>
									</div>

									<!-- Right Column -->
									<div class="col-md-6">
										<div class="mb-3">
											<label class="form-label">Fees Paid</label> <input
												type="number" class="form-control" name="feesPaid" required
												placeholder="Enter fees paid">
										</div>
										<div class="mb-3">
											<label class="form-label">Select Course</label> <select
												class="form-control" name="stuCourse" required>
												<option value="Java">Java</option>
												<option value="Python">Python</option>
												<option value="Testing">Testing</option>
											</select>
										</div>
										<div class="mb-3">
											<label class="form-label">Batch Mode</label> <select
												class="form-control" name="stuBthMode" required>
												<option value="Online">Online</option>
												<option value="Offline">Offline</option>
											</select>
										</div>
										<div class="mb-3">
											<label class="form-label">Batch Number</label> <select
												class="form-control" name="stuBthNum" required>
												<option value="REG-160">REG-160</option>
												<option value="FDJ-161">FDJ-161</option>
												<option value="REG-161">REG-161</option>
												<option value="FDJ-162">FDJ-162</option>
												<option value="REG-162">REG-162</option>
												<option value="FDJ-163">FDJ-163</option>
												<option value="REG-163">REG-163</option>
												<option value="FDJ-164">FDJ-164</option>
												<option value="REG-164">REG-164</option>
												<option value="FDJ-165">FDJ-165</option>
												<option value="REG-165">REG-165</option>
											</select>
										</div>
									</div>
								</div>

								<!-- Submit Button -->
								<div class="mt-4 text-center">
									<button type="submit" class="btn btn-primary btn-lg btn-submit">Submit</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>