package com.klef.jfsd.SDP.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.klef.jfsd.SDP.model.User;
import com.klef.jfsd.SDP.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService
{
	@Autowired 
	private UserRepository userRepository;
	
	@Override
	public String userRegistartion(User user) 
	{
		
		userRepository.save(user);
		return "User Registered Successfully";
	}

	@Override
	public User checkUserLogin(String email, String password) 
	{
		return userRepository.checkUserLogin(email, password);
	}

}
