package com.edu.servicei;

import java.util.List;
import com.edu.model.Students;

/**
 * Service interface defining the contract for student-related operations.
 * Contains methods for managing student data in the application.
 */
public interface StudentService {

    /**
     * Saves student details to the database.
     * @param st The student object to be saved.
     */
    public void saveStudentDetails(Students st);

    /**
     * Retrieves a list of all students from the database.
     * @return A list of all students.
     */
    public List<Students> getAllStudents();

    /**
     * Searches for students by their batch number.
     * @param stuBthNum The batch number to search for.
     * @return A list of students in the specified batch.
     */
    public List<Students> searchStudentByBatch(String stuBthNum);

    /**
     * Retrieves a single student by their ID.
     * @param studentId The ID of the student to retrieve.
     * @return The student object.
     */
    public Students getSingleStudent(int studentId);

    /**
     * Updates the fees paid by a student.
     * @param studentId The ID of the student to update.
     * @param ammount The amount of fees to be updated.
     */
    public void updateStudentFees(int studentId, float ammount);

    /**
     * Updates the batch of a student.
     * @param studentId The ID of the student to update.
     * @param newBatch The new batch to assign to the student.
     */
    public void UpdateBth(int studentId, String newBatch);

    /**
     * Removes a student from the database by their ID.
     * @param studentId The ID of the student to remove.
     */
    public void removeStd(int studentId);
}