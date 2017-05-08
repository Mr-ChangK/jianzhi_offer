package com.chk.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.chk.model.User;


public interface UserService {
	public User loginIn(String name, String password);
	public Map<String, Object> register(HttpServletRequest request, String name, String password, String email);
}
