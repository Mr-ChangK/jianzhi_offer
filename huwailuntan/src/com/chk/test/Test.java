package com.chk.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/test")
public class Test {
	@RequestMapping("/test.htm")
	public void test(){
		System.out.println(1111);
	}
}
