package com.edu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.edu.model.Students;
import com.edu.servicei.StudentService;

@Controller
public class Homeontroller {

    @Autowired
    private StudentService ss; // Service layer for student-related operations
     // this is the main or default controller
    // Displays the login page
    @RequestMapping("/")
    public String preLogin() {
        return "login";
    }

    // Handles login request and validates credentials
    @RequestMapping("/login")
    public String onLogin(@RequestParam String password, @RequestParam String username, Model m) {
        if (password.equals("1234") && username.equals("admin@gmail.com")) {
            return "adminScreen"; // Redirect to admin screen if credentials are valid
        } else {
            m.addAttribute("message", "Login Failed...! Please enter valid login credentials.");
            return "login"; // Return to login page with error message
        }
    }

    // Saves student details submitted from the enrollment form
    @RequestMapping("/enroll_student")
    public String saveStudent(@ModelAttribute Students student) {
        ss.saveStudentDetails(student); // Save student details using service
        return "adminScreen"; // Redirect to admin screen
    }

    // Fetches and displays all student details
    @RequestMapping("/viewStudents")
    public String stuDetails(ModelMap m) {
        List<Students> students = ss.getAllStudents(); // Fetch all students from the database
        m.addAttribute("data", students); // Add student list to the model
        return "viewStudents"; // Display the viewStudents page
    }

    // Searches for students by batch number
    @RequestMapping("/search")
    public String getBatchStu(@RequestParam String stuBthNum, Model m) {
        List<Students> result = ss.searchStudentByBatch(stuBthNum); // Search students by batch
        if (result.size() > 0) {
            m.addAttribute("data", result); // Add search results to the model
        } else {
            List<Students> stu = ss.getAllStudents(); // Fetch all students if no batch match
            m.addAttribute("data", stu);
            m.addAttribute("Message", "No record available for Batch " + stuBthNum + "....!");
        }
        return "viewStudents"; // Display the viewStudents page
    }

    // Displays the fees payment page for a specific student
    @RequestMapping("/fees")
    public String payFees(@RequestParam int studentId, Model m) {
        Students students = ss.getSingleStudent(studentId); // Fetch student details
        m.addAttribute("students", students); // Add student details to the model
        return "fees"; // Display the fees payment page
    }

    // Processes the fees payment for a student
    @RequestMapping("/payfees")
    public String payFees(@RequestParam int studentId, @RequestParam float ammount, Model m) {
        ss.updateStudentFees(studentId, ammount); // Update student fees
        List<Students> stu = ss.getAllStudents(); // Fetch updated student list
        m.addAttribute("data", stu); // Add updated list to the model
        return "viewStudents"; // Display the viewStudents page
    }

    // Displays the batch shift page for a specific student
    @RequestMapping("/batch")
    public String bthshift(@RequestParam int studentId, Model m) {
        Students s = ss.getSingleStudent(studentId); // Fetch student details
        m.addAttribute("student", s); // Add student details to the model
        return "batchShift"; // Display the batch shift page
    }

    // Updates the batch for a student
    @RequestMapping("/shiftBatch")
    public String updateBth(@RequestParam int studentId, @RequestParam String newBatch, Model m) {
        ss.UpdateBth(studentId, newBatch); // Update student batch
        List<Students> stu = ss.getAllStudents(); // Fetch updated student list
        m.addAttribute("data", stu); // Add updated list to the model
        return "viewStudents"; // Display the viewStudents page
    }

    // Removes a student from the database
    @RequestMapping("/remove")
    public String rmv(@RequestParam int studentId, Model m) {
        ss.removeStd(studentId); // Remove student by ID
        List<Students> st = ss.getAllStudents(); // Fetch updated student list
        m.addAttribute("data", st); // Add updated list to the model
        return "viewStudents"; // Display the viewStudents page
    }
}
