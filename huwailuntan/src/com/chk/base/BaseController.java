package com.chk.base;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BaseController {
	@RequestMapping("/enter.htm")
	public String enter(String method){
		return method;
	}
}
