package com.chk.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.forwardedUrl;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chk.base.State;
import com.chk.model.User;
import com.chk.service.UserService;

@Controller
@RequestMapping("login")
public class LoginAction {
	@Autowired
	UserService userService;
	/**
	 * 登录
	 * @param request
	 * @param name
	 * @param password
	 * @return
	 */
	@RequestMapping("/in")
	public String in(HttpServletRequest request,String name,String password){
		User user=userService.loginIn(name, password);
		if(user==null){
			request.setAttribute("state","密码或者账户名不对，请重新填写或注册");
			return "error";
		}
		HttpSession session=request.getSession();
		session.setAttribute("user", name);
		return "index";
	}
	/**
	 * 注销
	 * @return
	 */
	@RequestMapping("/out")
	public String out(HttpServletRequest request){
		HttpSession session=request.getSession();
		session.invalidate();
		return "index";
	}
	/**
	 * 注册
	 * @param request
	 * @param name
	 * @param password
	 * @param email
	 * @return
	 */
	@RequestMapping("/register")
	public String register(HttpServletRequest request){
		String name=request.getParameter("name");
		String password=request.getParameter("password");
		String email=request.getParameter("email");
		Map <String,Object>map=userService.register(request,name,password,email);
		Set<String>set=map.keySet();
		Iterator it=set.iterator();
		if(it.next().toString()=="user"){
			HttpSession session=request.getSession();
			session.setAttribute("user", name);
		}else if ((String)it.next()=="state"){
			State s=(State)map.get("state");
			request.setAttribute("state",s.getDes());
			return "error";
		}
		return "index";
	}
	@RequestMapping("/test")
	public void test(){
		System.out.println(11111);
	}
}
