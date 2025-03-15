<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Shift Student Batch</title>
    <!-- Bootstrap CSS for styling -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Styling for the new batch label */
        label[for="newBatch"] {
            color: blue;
            font-size: 12px;
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <h4 class="text-center">Shift Student Batch</h4>
        <!-- Table to display current student details -->
        <table class="table table-bordered">
            <tr>
                <th>Student ID</th>
                <td>${student.stuId}</td>
            </tr>
            <tr>
                <th>Student Name</th>
                <td>${student.stuName}</td>
            </tr>
            <tr>
                <th>Current Batch</th>
                <td>${student.stuBthNum}</td>
            </tr>
        </table>

        <!-- Form to shift student batch -->
        <form action="shiftBatch" method="post">
            <input type="hidden" name="studentId" value="${student.stuId}">
            <label for="newBatch">Select New Batch:</label>
            <select name="newBatch" id="newBatch" class="form-select" required>
                <option value="" disabled selected>Select Batch</option>
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
            <div class="mt-3 text-center">
                <button type="submit" class="btn btn-success">Shift Batch</button>
            </div>
        </form>
    </div>
</body>
</html>