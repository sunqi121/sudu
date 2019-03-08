package com.tianxia.sq.dao;

import com.jwcyzhpt.modules.uploadAttachment.entity.Photo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @program: jwcyzhpt
 * @Date: 2018/11/24 10:56
 * @Author: Zhang QingYang
 * @Description:
 */
@Repository
public interface ZpscMapper {

    //上传附件
    boolean addZp(Photo photo);

    //预览附件
    Photo previewzp(@Param("biaId") String biaId);
    //删除所有照片
    Integer delZp(String bm);

}
