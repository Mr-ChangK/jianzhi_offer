package com.chk.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.chk.model.Article;
import com.chk.model.Comment;
import com.chk.service.ArticleService;
import com.chk.service.CommentService;

@Controller
@RequestMapping("article")
public class ArticleAction {
	@Autowired
	private ArticleService article;
	@Resource
	private CommentService comment;
	@RequestMapping("/add.htm")
	public String article(String userid,String province,String item,String title,String context){
		System.out.println(userid);
		System.out.println(context);
		article.add(userid, province, item, title, context);
		return "index";
	}
	@RequestMapping("/find.htm")
	public ModelAndView find(String articleid){
		ModelAndView mav=new ModelAndView("show");
		Article a=article.selectById(articleid);
//		List <Comment> comment=new CommentAction().find(Integer.parseInt(articleid));
		List<Comment> list=new ArrayList<Comment>();
		list=comment.showComment(Integer.parseInt(articleid));
		mav.addObject("article", a);
		mav.addObject("list",list);
		return mav;
	}
}
