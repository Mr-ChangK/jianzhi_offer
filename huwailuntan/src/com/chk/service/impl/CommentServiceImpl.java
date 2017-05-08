package com.chk.service.impl;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.chk.mapper.CommentMapper;
import com.chk.mapper.UserMapper;
import com.chk.model.Comment;
import com.chk.service.CommentService;
@Service
public class CommentServiceImpl implements CommentService{
	@Resource
	private CommentMapper commentmapper;
	@Resource
	private UserMapper usermapper;
	@Override
	public List<Comment> showComment(Integer objectid) {
		Integer i=commentmapper.findCount(objectid);
		if(i==0){
			return null;
		}
		List <Comment> list=commentmapper.findComment(objectid);
		// TODO Auto-generated method stub
		return list;
	}

	@Override
	public Integer addComment(String userid,Integer objectid,String content) {
		Comment comment=new Comment();
		comment.setUserid(userid);
		comment.setObjectid(objectid);
		comment.setContent(content);
		comment.setCreatetime(new Date(0));
		Integer i=commentmapper.saveComment(comment);
		return i;
	}

	@Override
	public void test() {
		// TODO Auto-generated method stub
		System.out.println(111111111);
	}

}
