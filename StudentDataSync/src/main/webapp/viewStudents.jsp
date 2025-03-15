<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Details</title>
<!-- Bootstrap CSS for styling -->
<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
    rel="stylesheet">
<!-- FontAwesome for icons -->
<link rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<style>
    /* Background image with blur effect */
    body {
        margin: 0;
        padding: 0;
        font-family: 'Arial', sans-serif;
        color: white;
        overflow: hidden;
    }

    /* Background image container */
    .background-image {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-image: url('imagess/pexels-pixabay-268533.jpg');
        background-size: cover;
        background-position: center;
        filter: blur(5px); /* Blur effect */
        z-index: -1;
    }

    /* Overlay for better readability */
    .overlay {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: rgba(0, 0, 0, 0.5); /* Semi-transparent overlay */
        z-index: -1;
    }

    /* Main container for the table */
    .view {
        position: relative;
        z-index: 1;
        padding: 20px;
    }

    /* Search box styling */
    .search-box {
        background: rgba(255, 255, 255, 0.2); /* Semi-transparent background */
        backdrop-filter: blur(10px); /* Glassmorphism effect */
        border-radius: 10px;
        padding: 10px;
        margin-bottom: 20px;
        display: flex;
        align-items: center;
        gap: 10px;
        max-width: 400px; /* Smaller width */
        margin-left: auto;
        margin-right: auto;
    }

    .search-box select, .search-box button {
        border: none;
        border-radius: 50px;
        padding: 8px 15px;
        font-size: 0.9rem;
        background: rgba(255, 255, 255, 0.1);
        color: white;
        transition: all 0.3s ease;
    }

    .search-box select {
        flex: 1; /* Take up remaining space */
    }

    .search-box select:hover {
        background: rgba(255, 255, 255, 0.2); /* Hover effect */
    }

    .search-box button {
        background: linear-gradient(135deg, #007bff, #00bfff);
        cursor: pointer;
    }

    .search-box button:hover {
        transform: translateY(-3px); /* Lift button on hover */
    }

    /* Dropdown options styling */
    .search-box select option {
        background: rgba(0, 0, 0, 0.8); /* Dark background for options */
        color: white;
    }

    /* Modern message box styling */
    .message-box {
        position: fixed;
        top: 20px;
        right: 20px;
        background: rgba(255, 255, 255, 0.1); /* Transparent background */
        backdrop-filter: blur(10px); /* Glassmorphism effect */
        border-radius: 10px;
        padding: 15px 20px;
        color: white;
        font-size: 1rem;
        display: flex;
        align-items: center;
        gap: 10px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
        animation: slideIn 0.5s ease-in-out;
        z-index: 1000; /* Ensure it's above other elements */
    }

    @keyframes slideIn {
        from {
            transform: translateX(100%);
            opacity: 0;
        }
        to {
            transform: translateX(0);
            opacity: 1;
        }
    }

    .message-box i {
        font-size: 1.2rem;
    }

    /* Table styling */
    .student-table {
        width: 100%;
        border-collapse: separate;
        border-spacing: 0 10px; /* Spacing between rows */
    }

    /* Sticky header with glassmorphism effect */
    .student-table thead {
        position: sticky;
        top: 0;
        background: rgba(255, 255, 255, 0.2); /* Semi-transparent header */
        backdrop-filter: blur(10px); /* Glassmorphism effect */
        z-index: 1;
    }

    /* Header cell styling */
    .student-table th {
        padding: 15px;
        text-align: left;
        font-size: 1rem;
        color: white;
        border-bottom: 2px solid rgba(255, 255, 255, 0.3);
    }

    /* Table row styling */
    .student-table tbody tr {
        background: rgba(255, 255, 255, 0.1); /* Semi-transparent row */
        backdrop-filter: blur(10px); /* Glassmorphism effect */
        border-radius: 10px;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    /* Hover effect for rows */
    .student-table tbody tr:hover {
        transform: scale(1.02); /* Scale up on hover */
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3); /* Add shadow on hover */
    }

    /* Table cell styling */
    .student-table td {
        padding: 15px;
        font-size: 0.9rem;
        color: #ddd;
        border-bottom: 1px solid rgba(255, 255, 255, 0.1);
    }

    /* Rounded corners for the first and last cells in a row */
    .student-table td:first-child {
        border-top-left-radius: 10px;
        border-bottom-left-radius: 10px;
    }

    .student-table td:last-child {
        border-top-right-radius: 10px;
        border-bottom-right-radius: 10px;
    }

    /* Action buttons container */
    .actions {
        display: flex;
        gap: 10px;
    }

    /* Button styling */
    .actions .btn {
        border: none;
        border-radius: 50px;
        padding: 8px 15px;
        font-size: 0.8rem;
        transition: background 0.3s ease, transform 0.3s ease;
    }

    /* Button hover effect */
    .actions .btn:hover {
        transform: translateY(-3px); /* Lift button on hover */
    }

    /* Gradient button colors */
    .btn-success {
        background: linear-gradient(135deg, #00b09b, #96c93d);
    }

    .btn-primary {
        background: linear-gradient(135deg, #007bff, #00bfff);
    }

    .btn-danger {
        background: linear-gradient(135deg, #ff416c, #ff4b2b);
    }

    /* No students message styling */
    .no-students {
        text-align: center;
        color: rgba(255, 255, 255, 0.7);
        font-style: italic;
        padding: 20px;
    }

    /* Custom scrollbar for table body */
    .table-container {
        max-height: 70vh;
        overflow-y: auto;
    }

    .table-container::-webkit-scrollbar {
        width: 8px;
    }

    .table-container::-webkit-scrollbar-thumb {
        background: rgba(255, 255, 255, 0.3);
        border-radius: 10px;
    }

    .table-container::-webkit-scrollbar-track {
        background: rgba(255, 255, 255, 0.1);
    }
</style>
</head>
<body>
    <!-- Background image with blur effect -->
    <div class="background-image"></div>
    <!-- Overlay for better readability -->
    <div class="overlay"></div>

    <!-- Main content -->
    <section class="view" id="view">
        <h1 class="text-center text-white mb-4"
            style="text-shadow: 0 0 10px rgba(255, 255, 255, 0.7);">Student
            Details</h1>

        <!-- Search box -->
        <div class="search-box">
            <form action="search" method="get"
                class="d-flex w-100 align-items-center gap-3">
                <select class="form-select" name="stuBthNum">
                    <option value="#" selected>Select Batch Number</option>
                    <option value="FDJ-160">FDJ-160</option>
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
                <button type="submit" class="btn btn-primary">Search</button>
            </form>
        </div>

        <!-- Modern message box for "Batch not found" -->
        <c:if test="${not empty Message}">
            <div class="message-box" id="messageBox">
                <i class="fas fa-exclamation-circle"></i> ${Message}
            </div>
        </c:if>

        <!-- Student table -->
        <div class="table-container">
            <table class="student-table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Student Name</th>
                        <th>Email</th>
                        <th>Age</th>
                        <th>College</th>
                        <th>Course</th>
                        <th>Batch No</th>
                        <th>Mode</th>
                        <th>Fees Received</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${data}" var="student">
                        <tr>
                            <td>${student.stuId}</td>
                            <td>${student.stuName}</td>
                            <td>${student.stuEmail}</td>
                            <td>${student.stuAge}</td>
                            <td>${student.clgName}</td>
                            <td>${student.stuCourse}</td>
                            <td>${student.stuBthNum}</td>
                            <td>${student.stuBthMode}</td>
                            <td>${student.feesPaid}</td>
                            <td>
                                <div class="actions">
                                    <!-- Pay Fees button -->
                                    <button class="btn btn-success"
                                        onclick="window.location.href='/fees?studentId=${student.stuId}'">
                                        <i class="fas fa-money-bill-wave"></i> Pay Fees
                                    </button>
                                    <!-- Shift Batch button -->
                                    <button class="btn btn-primary"
                                        onclick="window.location.href='/batch?studentId=${student.stuId}'">
                                        <i class="fas fa-exchange-alt"></i> Shift Batch
                                    </button>
                                    <!-- Remove button -->
                                    <button class="btn btn-danger"
                                        onclick="window.location.href='/remove?studentId=${student.stuId}'">
                                        <i class="fas fa-trash"></i> Remove
                                    </button>
                                </div>
                            </td>
                        </tr>
                    </c:forEach>
                    <c:if test="${empty data}">
                        <tr>
                            <td colspan="10" class="no-students">No students found.</td>
                        </tr>
                    </c:if>
                </tbody>
            </table>
        </div>
    </section>

    <!-- Bootstrap JS for functionality (optional) -->
    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

    <!-- JavaScript to hide the message box after 5 seconds -->
    <script>
        // Function to hide the message box after 5 seconds
        setTimeout(function() {
            var messageBox = document.getElementById('messageBox');
            if (messageBox) {
                messageBox.style.display = 'none';
            }
        }, 5000); // 5000 milliseconds = 5 seconds
    </script>
</body>
</html>