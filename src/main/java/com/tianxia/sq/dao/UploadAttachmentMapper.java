package com.tianxia.sq.dao;

import com.jwcyzhpt.modules.supervise.entity.DeclarationCategory;
import com.jwcyzhpt.modules.uploadAttachment.entity.UploadAttachment;
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
public interface UploadAttachmentMapper {

    //上传附件
    boolean addUploadAttachment(UploadAttachment uploadAttachment);
//    boolean addUploadAttachment(@Param(value = "baseDate") String baseDate);

    //显示附件类表
    List<UploadAttachment> findBasicInformationAttaPage(String biaUesrBm);

    //删除附件
    boolean delBasicInformationAtta(String biaId);

    //预览附件
    UploadAttachment previewAtta(String biaId);

    //获取附件类型信息
    List<DeclarationCategory> getAttaType();
}
