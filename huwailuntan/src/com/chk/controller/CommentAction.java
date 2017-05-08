package com.chk.controller;

import java.util.ArrayList;
import java.util.List;




import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chk.model.Comment;
import com.chk.service.CommentService;

@Controller
@RequestMapping("comment")
public class CommentAction {
	@Resource
	private CommentService commentt;
	@RequestMapping("/add.htm")
	public String article(String userid,String itemid,String objectid,String content){
		commentt.addComment(userid,Integer.parseInt(objectid),content);
		return "show";
	}
	@RequestMapping("/find.htm")
	public List<Comment> find(Integer objectid){
		List<Comment> list=new ArrayList<Comment>();
		list=commentt.showComment(objectid);
		commentt.test();
		return list;
	}
	@RequestMapping("/test.htm")
	public void test(){
		commentt.test();
	}
}
