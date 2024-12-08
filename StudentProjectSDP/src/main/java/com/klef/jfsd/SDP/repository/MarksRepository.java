package com.klef.jfsd.SDP.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.SDP.model.Marks;

@Repository
public interface MarksRepository extends JpaRepository<Marks, Integer> {
	
    List<Marks> findByStudentNameAndId(String studentName, Long id);
}
