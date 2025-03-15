package com.edu.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import com.edu.model.Students;

/**
 * Repository interface for performing database operations on the Students entity.
 * Extends JpaRepository to inherit common CRUD operations.
 */
public interface StuRepo extends JpaRepository<Students, Integer> {

    /**
     * Finds all students belonging to a specific batch number.
     *
     * @param stuBthNum The batch number to search for.
     * @return A list of students in the specified batch.
     */
    public List<Students> findAllBystuBthNum(String stuBthNum);

}