package com.springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.springmvc.beans.Users;

public class UserRowMapper implements RowMapper<Users>{

	@Override
	public Users mapRow(ResultSet rs, int rowNum) throws SQLException {
		Users objUser = new Users();
		
		objUser.setUserName(rs.getString("username"));
		objUser.setPassword(rs.getString("password"));
		objUser.setName(rs.getString("name"));
		objUser.setEmail(rs.getString("email"));
		return objUser;
	}


	
}
