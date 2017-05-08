package com.chk.base;

import java.util.List;

public interface BaseDao <E extends BaseModel>{
	public E find(E e);
	public int findById(int id);
	public int save(E e);
	public List<E> findAll();
	public int detele(E e);
	public int update(E e);
}
