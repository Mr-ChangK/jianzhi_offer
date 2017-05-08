package com.chk.model;

import java.util.Date;

import com.chk.base.BaseModel;

public class Article extends BaseModel{
	private String title;
	private int authorid;
	private String content;
	private int provinceid;
	private int itemid;
	private int objectid;
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getAuthorid() {
		return authorid;
	}
	public void setAuthorid(int authorid) {
		this.authorid = authorid;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getProvinceid() {
		return provinceid;
	}
	public void setProvinceid(int provinceid) {
		this.provinceid = provinceid;
	}
	public int getItemid() {
		return itemid;
	}
	public void setItemid(int itemid) {
		this.itemid = itemid;
	}
	public int getObjectid() {
		return objectid;
	}
	public void setObjectid(int objectid) {
		this.objectid = objectid;
	}
	
}
