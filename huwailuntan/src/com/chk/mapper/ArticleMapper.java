package com.chk.mapper;

import java.util.List;

import com.chk.base.BaseDao;
import com.chk.model.Article;
import com.chk.model.User;

public interface ArticleMapper {
	public int save(Article article);
	public Article find(int id);
	public List<Article> findByProvince(int provinceid);
	public List<Article> findByItem(int itemid);
	public List<Article> findByPANDI(int provinceid,int itemid);
	public List<Article> findAll();
}
