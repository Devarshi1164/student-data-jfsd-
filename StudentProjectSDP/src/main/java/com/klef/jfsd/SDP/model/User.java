package com.klef.jfsd.SDP.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "User_table")

public class User {
	
	@Id //primary key = unique + not null
	@GeneratedValue(strategy = GenerationType.IDENTITY) //auto increment
	@Column(name = "User_id")
	private int id;
	@Column(name = "User_name",nullable = false,length = 100)
	private String name;
	@Column(name = "User_gender",nullable = false,length = 10)
	private String gender;
	@Column(name = "User_dob",nullable = false,length = 20)
	private String dob;
	@Column(name = "User_email",nullable = false,unique = true,length = 100)
	private String email;
	@Column(name = "User_password",nullable = false,length = 100)
	private String password;
	@Column(name = "User_contact",nullable = false,unique = true,length = 20)
	private String contact;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	
}
