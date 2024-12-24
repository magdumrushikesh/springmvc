package com.springmvc.dao;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.springmvc.beans.Users;

import jakarta.annotation.PostConstruct;

@Component
public class UsersDAOImpl implements UsersDAO {

	@Autowired
	JdbcTemplate jdbcTemplate;

	String sqlRegister;
	String sqlChangePassword;
	String sqlAllUser;
	String sqlUserDetails;

	@Autowired
	Environment env;

	@PostConstruct
	public void initialize() {

		sqlRegister = env.getProperty("sql.register");
		sqlChangePassword = env.getProperty("sql.chnagepassword");
		sqlAllUser = env.getProperty("sql.alluser");
		sqlUserDetails = env.getProperty("sql.userdetails");
	}

	@Override
	public boolean registerUser(String userName, String password, String name, String email) {
		jdbcTemplate.update(sqlRegister, userName, password, name, email);
		return true;
	}

	@Override
	public boolean chnagePassword(String userName, String password) {
		jdbcTemplate.update(sqlChangePassword, password, userName);
		return true;
	}

	@Override
	public Users getUserDetails(String userName) {
//		try {
			return (Users) jdbcTemplate.queryForObject(sqlUserDetails, new UserRowMapper(), userName);
//		} catch (EmptyResultDataAccessException e) {
//			return null;
//		}
	}

	@Override
	public ArrayList<Users> getAllUser() {
		return (ArrayList<Users>) jdbcTemplate.query(sqlAllUser, new UserRowMapper()).iterator();
	}

}
