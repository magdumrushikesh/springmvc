package com.springmvc.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.springjdbc.dao.UserDao;
import com.springmvc.beans.Users;
import com.springmvc.dao.UsersDAO;

import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {
	
	@Autowired
	UsersDAO usersDAO;
	
	@Autowired
	HttpSession session;
	
	@RequestMapping("/login")
	public void prepareUser(Model data) {
		Users objUser = new Users();
		data.addAttribute("objUser", objUser);
		
	}
	
	@RequestMapping("/newUser")
	public void prepareNewUser(Model data) {
		Users objUser = new Users();
		data.addAttribute("objUser", objUser);
		
	}
	
	
	@RequestMapping("/authenticate")
	public ModelAndView validateUser(@ModelAttribute("objUser") Users objUser) {
		
//		Users dbusers = userDAO
		
		return null;
//			if(objUser.getUserName().equals("cdac") && objUser.getPassword().equals("Acts")) {
//				return new ModelAndView("welcome","data","Welcome" + objUser.getUserName() 
//				+ "to the online shopping site");
//				
//			}else {
//				return new ModelAndView("failure", "message", "Invalid Authentication");
//			}
		
	}
	

}
