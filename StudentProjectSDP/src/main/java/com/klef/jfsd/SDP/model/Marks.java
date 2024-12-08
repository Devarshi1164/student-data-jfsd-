package com.klef.jfsd.SDP.model;

import jakarta.persistence.*;

@Entity
@Table(name = "markstable")
public class Marks {
	
	 @Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	 private int id;

    @Column(name = "student_id", nullable = false)
    private int studentId;

    @Column(name = "subject", nullable = false, length = 100)
    private String subject;

    @Column(name = "marks", nullable = false)
    private int marks;

    
    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getStudentId() {
        return studentId;
    }

    public void setStudentId(int studentId) {
        this.studentId = studentId;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public int getMarks() {
        return marks;
    }

    public void setMarks(int marks) {
        this.marks = marks;
    }
}
