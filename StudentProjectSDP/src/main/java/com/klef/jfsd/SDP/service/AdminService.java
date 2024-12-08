package com.klef.jfsd.SDP.service;

import java.beans.Customizer;
import java.util.List;

import com.klef.jfsd.SDP.model.Admin;
import com.klef.jfsd.SDP.model.User;

public interface AdminService {

	public List<User> viewAllUsers();
	public Admin checkAdminLogin(String uname,String pwd);
	public long usercount();
	
	public String deleteUser(int id);
	public User displayUserById(int id);

}
