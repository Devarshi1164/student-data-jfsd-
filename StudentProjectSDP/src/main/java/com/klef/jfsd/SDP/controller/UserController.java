package com.klef.jfsd.SDP.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.SDP.model.Admin;
import com.klef.jfsd.SDP.model.User;
import com.klef.jfsd.SDP.service.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class UserController 
{
	@Autowired
	private UserService userService;
	
	@GetMapping("/")
	public ModelAndView home()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
	
	@GetMapping("usereg")
	public ModelAndView userreg()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("userreg");
		return mv;
	}
	
	@GetMapping("userhome")
	public ModelAndView userhome()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("userhome");
		return mv;
	}
	
	@GetMapping("userprofile")
	public ModelAndView userprofile()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("userprofile");
		return mv;
	}
	
	@PostMapping("/insertuser")
	public ModelAndView insertuser(HttpServletRequest request)
	{
		//take the data from html to middle
		String name = request.getParameter("cname");
		String gender = request.getParameter("cgender");
		String dob = request.getParameter("cdob");
		String email = request.getParameter("cemail");
		String contact = request.getParameter("ccontact");
		String password = request.getParameter("cpwd");
		
		User user = new User();
		user.setName(name);
		user.setGender(gender);
		user.setDob(dob);
		user.setEmail(email);
		user.setContact(contact);
		user.setPassword(password);

		String message = userService.userRegistartion(user);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("regsuccess");
		mv.addObject("message", message);
		
		return mv;
	}
	
	@GetMapping("userlogin")
	public ModelAndView userlogin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("userlogin");
		return mv;
	}
	
	@PostMapping("checkuserlogin")
	public ModelAndView checkuserlogin(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		String cemail = request.getParameter("cemail");
		String cpwd = request.getParameter("cpwd");
		
		User user = userService.checkUserLogin(cemail, cpwd);
		
		if(user!=null)
		{
			HttpSession session = request.getSession();
			session.setAttribute("user", user); //user is session object
			
			mv.setViewName("userhome");  //login success
		}
		else
		{
			mv.setViewName("userlogin");
			mv.addObject("message", "Login Failed");
		}
		return mv;
	}
	
	@GetMapping("userlogout")
	public ModelAndView userlogout()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("userlogin");
		return mv;
	}
}
	
