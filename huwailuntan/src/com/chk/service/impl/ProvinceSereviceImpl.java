package com.chk.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.chk.mapper.ProvinceMapper;
import com.chk.model.Province;
import com.chk.service.ProvinceService;
@Service
public class ProvinceSereviceImpl implements ProvinceService{
	@Resource
	ProvinceMapper provinceMapper;
	@Override
	public List<Province> load() {
		Object o=provinceMapper.findAllName();
		List<Province> list=provinceMapper.findAllName();
		System.out.println(11111);
//		list=province.findAllName();
		return list;
	}

}
