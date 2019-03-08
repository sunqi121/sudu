package com.tianxia.sq.service;

import com.jwcyzhpt.modules.uploadAttachment.entity.Photo;

import java.util.Map;

/**
 * @program: jwcyzhpt
 * @Date: 2018/11/24 10:51
 * @Author: Zhang QingYang
 * @Description:
 */
public interface IZpscService {

    //上传图片
    Map<String, Object> addZpsc(String baseDate, String fileName, String biaUesrBm, String attachmentType);


    //    预览附件
    Photo previewAtta(String biaId);
    //删除所有照片
    Integer delZp(String bm);
}
