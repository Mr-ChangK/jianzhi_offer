package com.chk.model;

import com.chk.base.BaseModel;

public class Comment extends BaseModel{
	private String userid;//为字符串，用户名，不是用户id
	private String content;
	private int objectid;
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getObjectid() {
		return objectid;
	}
	public void setObjectid(int objectid) {
		this.objectid = objectid;
	}
	
}
