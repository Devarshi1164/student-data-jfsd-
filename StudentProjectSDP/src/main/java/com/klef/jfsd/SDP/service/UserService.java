package com.klef.jfsd.SDP.service;

import com.klef.jfsd.SDP.model.User;

public interface UserService {
	
	public String userRegistartion(User user);
	public User checkUserLogin(String email,String password);

}
