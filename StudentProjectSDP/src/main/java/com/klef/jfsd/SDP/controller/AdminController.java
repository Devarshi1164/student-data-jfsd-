package com.klef.jfsd.SDP.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.SDP.model.Admin;
import com.klef.jfsd.SDP.model.User;
import com.klef.jfsd.SDP.service.AdminService;
import com.klef.jfsd.SDP.service.MarksService;

import jakarta.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
    @Autowired
    private MarksService marksService;
	
	@GetMapping("adminlogin")
	public ModelAndView adminlogin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	
	@GetMapping("adminhome")
	public ModelAndView adminhome()
	{
		ModelAndView mv = new ModelAndView("adminhome");
		//mv.setViewName("adminhome");
		
		long count = adminService.usercount();
		mv.addObject("count", count);
		
		return mv;
	}
	
	
	@PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		String auname = request.getParameter("auname");
		String apwd = request.getParameter("apwd");
		
		Admin admin = adminService.checkAdminLogin(auname, apwd);
		
		if(admin!=null)
		{
			mv.setViewName("adminhome"); //login success
			
			long count = adminService.usercount();
			mv.addObject("count", count);
		}
		else
		{
			mv.setViewName("adminloginfail");
			mv.addObject("message", "Login Failed");
		}
		return mv;
	}
	
	@GetMapping("viewallusers")
	public ModelAndView viewallusers()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewallusers");
		
		long count = adminService.usercount();
		mv.addObject("count", count);
		
		List<User> users = adminService.viewAllUsers();
		mv.addObject("userlist", users);
		
		return mv;
	}
	
	@GetMapping("deleteuser")
	public ModelAndView deleteuser()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("deleteuser");
		
		
		List<User> users = adminService.viewAllUsers();
		mv.addObject("userlist", users);
		
		return mv;
	}
	
	@GetMapping("delete")
	public String delete(@RequestParam int id)
	{
		adminService.deleteUser(id);
		return "redirect:/deleteuser";
	}
	
	@GetMapping("viewuserbyid")
	public ModelAndView viewuserbyid()
	{
		ModelAndView mv = new ModelAndView();

		List<User> users = adminService.viewAllUsers();
		mv.addObject("userlist", users);
		
		mv.setViewName("viewuserbyid");
		return mv;
	}
	
	@PostMapping("displayuser")
	public ModelAndView displayuser(HttpServletRequest request)
	{
		int id = Integer.parseInt(request.getParameter("id"));
		
		User user = adminService.displayUserById(id);
		
		ModelAndView mv = new ModelAndView("displayuser");
		mv.addObject("u",user);
		
		return mv;
	}
	
	  @GetMapping("/uploadmarks")
	    public ModelAndView uploadMarksPage() {
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("uploadmarks");
	        return mv;
	    }

	    @PostMapping("/uploadmarks")
	    public ModelAndView uploadMarks(@RequestParam("file") MultipartFile file, @RequestParam("subject") String subject) {
	        ModelAndView mv = new ModelAndView();
	        String message = marksService.addMarksFromFile(file, subject);
	        mv.addObject("message", message);
	        mv.setViewName("uploadmarksresult");
	        return mv;
	    }
	
	
}
