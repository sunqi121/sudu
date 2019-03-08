package com.tianxia.sq.service;


import com.jwcyzhpt.common.util.EUIDataGridResult;
import com.jwcyzhpt.modules.manage.entity.vo.jlxmglVo;

public interface jlxmglService {

    //查询专业
    EUIDataGridResult findJlxm(Integer page, Integer rows, jlxmglVo jlxm);

    int insertJlxm(jlxmglVo jlxm);
    //删除
    int  delJlxm(jlxmglVo jlxm);
    //修改
    int updateJlxm(jlxmglVo jlxm);


}
