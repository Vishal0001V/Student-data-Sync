package com.edu.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

/**
 * Represents a Student entity in the database.
 * This class is mapped to a database table using JPA annotations.
 */
@Entity
public class Students {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int stuId; // Primary key, auto-generated by the database

    private String stuName; // Name of the student
    private String stuEmail; // Email of the student
    private String stuAge; // Age of the student
    private String clgName; // Name of the college
    private String stuCourse; // Course enrolled by the student
    private String stuBthNum; // Batch number of the student
    private String stuBthMode; // Mode of the batch (e.g., online/offline)
    private float feesPaid; // Fees paid by the student

    // Getter and Setter methods for all fields

    public int getStuId() {
        return stuId;
    }

    public void setStuId(int stuId) {
        this.stuId = stuId;
    }

    public String getStuName() {
        return stuName;
    }

    public void setStuName(String stuName) {
        this.stuName = stuName;
    }

    public String getStuEmail() {
        return stuEmail;
    }

    public void setStuEmail(String stuEmail) {
        this.stuEmail = stuEmail;
    }

    public String getStuAge() {
        return stuAge;
    }

    public void setStuAge(String stuAge) {
        this.stuAge = stuAge;
    }

    public String getClgName() {
        return clgName;
    }

    public void setClgName(String clgName) {
        this.clgName = clgName;
    }

    public String getStuCourse() {
        return stuCourse;
    }

    public void setStuCourse(String stuCourse) {
        this.stuCourse = stuCourse;
    }

    public String getStuBthNum() {
        return stuBthNum;
    }

    public void setStuBthNum(String stuBthNum) {
        this.stuBthNum = stuBthNum;
    }

    public String getStuBthMode() {
        return stuBthMode;
    }

    public void setStuBthMode(String stuBthMode) {
        this.stuBthMode = stuBthMode;
    }

    public float getFeesPaid() {
        return feesPaid;
    }

    public void setFeesPaid(float feesPaid) {
        this.feesPaid = feesPaid;
    }
}