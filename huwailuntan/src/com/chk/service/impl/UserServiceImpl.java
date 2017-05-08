package com.chk.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chk.base.State;
import com.chk.mapper.UserMapper;
import com.chk.model.User;
import com.chk.service.UserService;



@Service
@Transactional  
public class UserServiceImpl implements UserService {
	
	@Resource
	private UserMapper mapper;

	

	@Override
	public Map<String,Object>register(HttpServletRequest request,String name, String password, String email) {
		Map<String,Object> map=new HashMap<String,Object>();
		if(name==null||password==null||email==null){
			map.put("state", State.illegal_format);
			return map;
		}
		if(name.isEmpty()||password.isEmpty()||email.isEmpty()){
			map.put("state", State.illegal_format);
			return map;
		}
		int i=mapper.findByName(name);
		if(i!=0){
			map.put("state", State.user_already_exist);
			return map;
		}
		User user=new User();
		user.setName(name);
		user.setPassword(password);
		user.setEmail(email);
		user.setCreatetime(new Date());
		int flag=mapper.save(user);
		if(flag<0){
			map.put("state", State.register_fail);
			return map;
		}
		map.put("user", user);
		return map;
	}

	@Override
	public User loginIn(String name, String password) {
		User user=new User();
		user.setName(name);
		user.setPassword(password);
		user=mapper.findByObject(user);
		if(user==null){
			return null;
		}
		return user;
	}

}
