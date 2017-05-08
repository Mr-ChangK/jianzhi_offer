package com.chk.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;

import com.chk.model.Article;
import com.chk.service.ArticleService;
 
@Service
@RequestMapping("select")
public class SelectAction {
	@Resource
	private ArticleService article;
	@RequestMapping("/ditu.htm")
	public ModelAndView showditu(HttpServletRequest request) throws UnsupportedEncodingException{
		request.setCharacterEncoding("utf-8");
		ModelAndView mav=new ModelAndView("fenlei");
		String province=request.getParameter("province");
//		if(province==null){
//			province=request.getParameter("province");
//		}
		String str=new String(province.getBytes("ISO-8859-1"),"utf-8");
		List <Article> list=article.selectByProvince(str);
		mav.addObject("list",list);
		return mav;
	}
	@RequestMapping("/all.htm")
	public ModelAndView showAll(){
		ModelAndView mav=new ModelAndView("fenlei");
		List <Article> list=article.selectAll();
		mav.addObject("list",list);
		return mav;
	}
}
