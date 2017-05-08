package com.chk.mapper;

import java.util.List;

import com.chk.model.Comment;

public interface CommentMapper {
	public int saveComment(Comment comment);
	public List<Comment> findComment(Integer objectid);
	public Integer findCount(Integer objectid);
}
