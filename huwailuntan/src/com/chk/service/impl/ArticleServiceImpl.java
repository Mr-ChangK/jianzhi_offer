package com.chk.service.impl;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.chk.mapper.ArticleMapper;
import com.chk.mapper.ItemMapper;
import com.chk.mapper.ProvinceMapper;
import com.chk.mapper.UserMapper;
import com.chk.model.Article;
import com.chk.service.ArticleService;

@Service
public class ArticleServiceImpl implements ArticleService{
	@Resource
	private ArticleMapper articleMapper;
	@Resource
	private UserMapper userMapper;
	@Resource
	private ProvinceMapper provinceMapper;
	@Resource
	private ItemMapper itemMapper;
	@Override
	public Article add(String user,String province,String item,String title,String context) {
		Article article=new Article();
		int userid=userMapper.findByName(user);
		article.setAuthorid(userid);
		int provinceid=provinceMapper.findByName(province);
		article.setProvinceid(provinceid);
		int itemid=itemMapper.findByName(item);
		article.setItemid(itemid);
		article.setTitle(title);
		article.setContent(context);
		article.setCreatetime(new Date());
		articleMapper.save(article);
		return article;
	}
	@Override
	public List<Article> selectByProvince(String province) {
		int provinceid=provinceMapper.findByName(province);
		List<Article> list=articleMapper.findByProvince(provinceid);
		return list;
	}
	@Override
	public List<Article> selectByItem(String item) {
		int itemid=provinceMapper.findByName(item);
		List<Article> list=articleMapper.findByProvince(itemid);
		return list;
	}
	@Override
	public List<Article> selectByIANDP(String item, String province) {
		// TODO Auto-generated method stub
		int provinceid=provinceMapper.findByName(province);
		int itemid=provinceMapper.findByName(item);
		List<Article> list=articleMapper.findByPANDI(provinceid, itemid);
		return list;
	}
	@Override
	public List<Article> selectAll() {
		List<Article> list=articleMapper.findAll();
		return list;
	}
	@Override
	public Article selectById(String id) {
		Article article=articleMapper.find(Integer.parseInt(id));
		return article;
	}

}
