package com.tianxia.sq.service;

import com.jwcyzhpt.common.util.EUIDataGridResult;
import com.jwcyzhpt.modules.supervise.entity.DeclarationCategory;
import com.jwcyzhpt.modules.uploadAttachment.entity.UploadAttachment;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * @program: jwcyzhpt
 * @Date: 2018/11/24 10:51
 * @Author: Zhang QingYang
 * @Description:
 */
public interface IUploadAttachmentService {

    //上传图片
    Map<String, Object> addUploadAttachment(String baseDate, String fileName, String biaUesrBm, String attachmentType);

    //显示附件信息
    EUIDataGridResult findBasicInformationAttaPage(Integer page, Integer rows, String biaUesrBm);

    //    删除附件信息
    Map<String, Object> delBasicInformationAtta(String biaId);

    //    批量删除附件信息
    Map<String, Object> batchDelBasicInformationAttas(String idArray);

    //    预览附件
    UploadAttachment previewAtta(String biaId);

    //获取附件类型信息
    List<DeclarationCategory> getAttaType();
}
