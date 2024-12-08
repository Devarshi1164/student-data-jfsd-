package com.klef.jfsd.SDP.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.klef.jfsd.SDP.model.Marks;
import com.klef.jfsd.SDP.service.MarksService;

import java.util.List;

@RestController
public class MarksController {

    @Autowired
    private MarksService marksService;

    @GetMapping("/marks")
    public List<Marks> getMarks(@RequestParam String studentName, @RequestParam Long id) {
        return marksService.getMarksByStudentNameAndId(studentName, id);
    }
}
