package com.chk.mapper;

import java.util.List;
import java.util.Map;

import com.chk.model.Province;

public interface ProvinceMapper {
	public int findByName(String province);
//	public List<Province> findAllName();
	public List<Province> findAllName();
}
