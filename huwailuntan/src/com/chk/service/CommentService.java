package com.chk.service;

import java.util.List;

import com.chk.model.Comment;

public interface CommentService {
	public List<Comment> showComment(Integer articleId);
	public Integer addComment(String userid,Integer objectid,String content);
	public void test();
}
