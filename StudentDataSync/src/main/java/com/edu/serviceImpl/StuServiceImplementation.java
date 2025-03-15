package com.edu.serviceImpl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edu.model.Students;
import com.edu.repository.StuRepo;
import com.edu.servicei.StudentService;

/**
 * Service implementation class for student-related operations.
 * Implements the StudentService interface to provide concrete functionality.
 */
@Service
public class StuServiceImplementation implements StudentService {

    @Autowired
    private StuRepo sr; // Repository for database operations on Students

    /**
     * Saves student details to the database.
     * @param st The student object to be saved.
     */
    @Override
    public void saveStudentDetails(Students st) {
        sr.save(st); // Save the student using the repository
    }

    /**
     * Retrieves a list of all students from the database.
     * @return A list of all students.
     */
    @Override
    public List<Students> getAllStudents() {
        return sr.findAll(); // Fetch all students using the repository
    }

    /**
     * Searches for students by their batch number.
     * @param stuBthNum The batch number to search for.
     * @return A list of students in the specified batch.
     */
    @Override
    public List<Students> searchStudentByBatch(String stuBthNum) {
        List<Students> bthstu = sr.findAllBystuBthNum(stuBthNum); // Fetch students by batch number
        return bthstu;
    }

    /**
     * Retrieves a single student by their ID.
     * @param studentId The ID of the student to retrieve.
     * @return The student object.
     */
    @Override
    public Students getSingleStudent(int studentId) {
        Optional<Students> opStu = sr.findById(studentId); // Fetch student by ID
        return opStu.get(); // Return the student object
    }

    /**
     * Updates the fees paid by a student.
     * @param studentId The ID of the student to update.
     * @param ammount The amount of fees to be added.
     */
    @Override
    public void updateStudentFees(int studentId, float ammount) {
        Optional<Students> opStu = sr.findById(studentId); // Fetch student by ID
        Students students = opStu.get(); // Get the student object
        students.setFeesPaid(students.getFeesPaid() + ammount); // Update fees
        sr.save(students); // Save the updated student
    }

    /**
     * Updates the batch of a student.
     * @param studentId The ID of the student to update.
     * @param newBatch The new batch to assign to the student.
     */
    @Override
    public void UpdateBth(int studentId, String newBatch) {
        Students s = sr.findById(studentId).get(); // Fetch student by ID
        s.setStuBthNum(newBatch); // Update batch number
        sr.save(s); // Save the updated student
    }

    /**
     * Removes a student from the database by their ID.
     * @param studentId The ID of the student to remove.
     */
    @Override
    public void removeStd(int studentId) {
        sr.deleteById(studentId); // Delete student by ID
    }
}