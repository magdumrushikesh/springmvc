package com.springmvc.dao;

import java.util.ArrayList;
import com.springmvc.beans.Users;

public interface UsersDAO {
	boolean registerUser(String userName, String password,String name,String email);
	boolean chnagePassword(String userName, String password);
	Users getUserDetails(String userName);
	ArrayList<Users> getAllUser();
	
	

}
