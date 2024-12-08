package com.klef.jfsd.SDP.service;

import java.util.List;
import org.springframework.web.multipart.MultipartFile;
import com.klef.jfsd.SDP.model.Marks;

public interface MarksService {

    public String addMarksFromFile(MultipartFile file, String subject);
    public List<Marks> viewAllMarks();
    public List<Marks> getMarksByStudentNameAndId(String studentName, Long id);
    
}
