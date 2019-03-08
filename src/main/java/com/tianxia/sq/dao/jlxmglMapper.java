package com.tianxia.sq.dao;


import com.jwcyzhpt.modules.manage.entity.vo.jlxmglVo;

import java.util.List;

/*专业管理*/
public interface jlxmglMapper {
    //查询
    List<jlxmglVo> findJlxm();
    //新增
    int  insertJlxm(jlxmglVo jlxmgl);
    //删除
    int  delJlxm(jlxmglVo jlxmgl);
    //修改
    int updateJlxm(jlxmglVo jlxmgl);

}