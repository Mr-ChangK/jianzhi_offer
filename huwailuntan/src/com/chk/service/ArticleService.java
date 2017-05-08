package com.chk.service;

import java.util.List;

import com.chk.model.Article;

public interface ArticleService {
	public Article add(String userid,String province,String item,String title,String context);
	public List<Article> selectByProvince(String province);
	public List<Article> selectByItem(String item);
	public List<Article> selectByIANDP(String item,String province);
	public List<Article> selectAll();
	public Article selectById(String id);
}
