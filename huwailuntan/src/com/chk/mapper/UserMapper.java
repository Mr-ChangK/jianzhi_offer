package com.chk.mapper;


import com.chk.model.User;

public interface UserMapper {
	int save(User user);
	User findById(int id);
	int findByName(String name);
	User findByObject(User user);
}
