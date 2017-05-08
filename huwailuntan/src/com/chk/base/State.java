package com.chk.base;

public enum State {
	login_success(000,"登录成功"),
	Login_fail(101,"登录失败"),
	user_not_exist(102,"登录失败"),
	user_already_exist(103,"用户已存在"),
	illegal_format(104,"注册格式不对"),
	register_fail(105,"注册失败");
	private int id;
	private String des;
	State(int id,String des){
		this.id=id;
		this.des=des;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDes() {
		return des;
	}
	public void setDes(String des) {
		this.des = des;
	}
	
}
