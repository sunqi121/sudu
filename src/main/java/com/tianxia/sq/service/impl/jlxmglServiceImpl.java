package com.tianxia.sq.service.impl;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.jwcyzhpt.common.util.EUIDataGridResult;
import com.jwcyzhpt.modules.manage.dao.jlxmglMapper;
import com.jwcyzhpt.modules.manage.entity.vo.jlxmglVo;
import com.jwcyzhpt.modules.manage.entity.vo.majorVo;
import com.jwcyzhpt.modules.manage.service.jlxmglService;
import com.tianxia.sq.model.jlxmglVo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 专业管理
 * 
 * @author Administrator
 * 
 */

@Service
public class jlxmglServiceImpl implements jlxmglService {

	@Resource
	private jlxmglMapper jlxmglmapper;


	@Override
	public EUIDataGridResult findJlxm(Integer page, Integer rows, jlxmglVo jlxm) {
		System.out.println(666);
		EUIDataGridResult result = new EUIDataGridResult();
		// 分页
		PageHelper.startPage(page, rows);
		// 查询
		List<jlxmglVo> list = jlxmglmapper.findJlxm();

		PageInfo<jlxmglVo> pageInfo = new PageInfo<jlxmglVo>(list);

		result.setTotal(pageInfo.getTotal()).setRows(list);

		return result;

	}

	@Override
	public int insertJlxm(jlxmglVo jlxm) {
		//新增
		System.out.println("新增~~~");
		return jlxmglmapper.insertJlxm(jlxm);
	}


	@Override
	public int delJlxm(jlxmglVo jlxm) {
		System.out.println("删除~~~");
		return jlxmglmapper.delJlxm(jlxm);
	}

	@Override
	public int updateJlxm(jlxmglVo jlxm) {
		//修改
		System.out.println("修改~~~");
		return jlxmglmapper.updateJlxm(jlxm);
	}
}
