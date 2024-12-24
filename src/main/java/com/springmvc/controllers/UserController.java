package com.springmvc.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import com.springmvc.beans.Users;
import com.springmvc.dao.UsersDAO;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

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
	
	@RequestMapping(method =RequestMethod.POST, value = "/newUser")
	public String checkNewUser(@Valid @ModelAttribute("objUser") Users objUser, BindingResult result) {
		if(result.hasErrors()) {
			return "newUser";
		}
		else {
			return "forward:register";
		}
		
	}
	
	
	@RequestMapping(method =RequestMethod.POST, value = "/login")
	public String checkUser(@Valid @ModelAttribute("objUser") Users objUser, BindingResult result) {
		if(result.hasErrors()) {
			return "login";
		}
		else {
			return "forward:authenticate";
		}
	}
	
	
	@RequestMapping("/authenticate")
	public ModelAndView validateUser(@ModelAttribute("objUser") Users objUser) {
		
		Users dbusers = null;
		try {
			dbusers = usersDAO.getUserDetails(objUser.getUserName());
		} catch (Exception e) {
			return new ModelAndView("error","errordata",e.getMessage()); 
			
		}
		if (dbusers == null) {
		    return new ModelAndView("failure", "message", "User not found");
		}

		
		if(objUser.getUserName().equals(dbusers.getUserName()) && objUser.getPassword().equals(dbusers.getPassword())){
			
			//session.setAttribute("userName",objUser.getUserName());
			return new ModelAndView("welcome","data","Welcome "+objUser.getUserName()+" to the Online shopping portal");
		}
		else {
			return new ModelAndView("failure","message","Invalid Authentication");
			
		}
		
//			if(objUser.getUserName().equals("cdac") && objUser.getPassword().equals("Acts")) {
//				return new ModelAndView("welcome","data","Welcome" + objUser.getUserName() 
//				+ "to the online shopping site");
//				
//			}else {
//				return new ModelAndView("failure", "message", "Invalid Authentication");
//			}
		
	}
	
	@RequestMapping("/register")
	public ModelAndView registerUser(@ModelAttribute("objUser") Users objUser) {
		
		try {
			usersDAO.registerUser(objUser.getUserName(),
					objUser.getPassword(),
					objUser.getName(),
					objUser.getEmail());
		} catch (Exception e) {
			return new ModelAndView("error","errordata",e.getMessage()); 
		}
		return new ModelAndView("login","logindata","Registration Successfull");
	}
	

}
