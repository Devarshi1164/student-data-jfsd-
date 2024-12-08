package com.klef.jfsd.SDP.service;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.klef.jfsd.SDP.model.Marks;
import com.klef.jfsd.SDP.repository.MarksRepository;

@Service
public class MarksServiceImpl implements MarksService {

    @Autowired
    private MarksRepository marksRepository;

    @Override
    public String addMarksFromFile(MultipartFile file, String subject) {
        try {
            BufferedReader br = new BufferedReader(new InputStreamReader(file.getInputStream()));
            String line;
            List<Marks> marksList = new ArrayList<>();
            
            while ((line = br.readLine()) != null) {
                String[] data = line.split(",");
                int studentId = Integer.parseInt(data[0].trim());
                int marks = Integer.parseInt(data[1].trim());

                Marks mark = new Marks();
                mark.setStudentId(studentId);
                mark.setSubject(subject);
                mark.setMarks(marks);

                marksList.add(mark);
            }
            marksRepository.saveAll(marksList);
            return "Marks added successfully!";
        } catch (Exception e) {
            e.printStackTrace();
            return "Error while uploading marks: " + e.getMessage();
        }
    }

    @Override
    public List<Marks> viewAllMarks() {
        return marksRepository.findAll();
    }
    
    public List<Marks> getMarksByStudentNameAndId(String studentName, Long id) {
        return marksRepository.findByStudentNameAndId(studentName, id);
    }
}
