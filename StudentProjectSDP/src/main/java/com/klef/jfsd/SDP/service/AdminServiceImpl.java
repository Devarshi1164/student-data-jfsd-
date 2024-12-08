package com.klef.jfsd.SDP.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.SDP.model.Admin;
import com.klef.jfsd.SDP.model.User;
import com.klef.jfsd.SDP.repository.AdminRepository;
import com.klef.jfsd.SDP.repository.UserRepository;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private AdminRepository adminRepository;
	
	@Override
	public List<User> viewAllUsers() {
		
		return userRepository.findAll();
	}

	@Override
	public Admin checkAdminLogin(String uname, String pwd) 
	{
		
		return adminRepository.checkAdminLogin(uname, pwd);
	}

	public long usercount() 
	{
		return userRepository.count();
	}

	@Override
	public String deleteUser(int id) {
		userRepository.deleteById(id);
		return "User Deleted Successfully";
	}

	@Override
	public User displayUserById(int id) {
		return userRepository.findById(id).get();
	}



	
}
