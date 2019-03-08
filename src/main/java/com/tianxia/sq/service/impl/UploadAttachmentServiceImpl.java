package com.tianxia.sq.service.impl;

import com.alibaba.fastjson.JSONArray;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.jwcyzhpt.common.util.EUIDataGridResult;
import com.jwcyzhpt.modules.supervise.entity.DeclarationCategory;
import com.jwcyzhpt.modules.sys.service.imp.BaseServiceImp;
import com.jwcyzhpt.modules.uploadAttachment.dao.UploadAttachmentMapper;
import com.jwcyzhpt.modules.uploadAttachment.entity.UploadAttachment;
import com.jwcyzhpt.modules.uploadAttachment.service.IUploadAttachmentService;
import com.jwcyzhpt.modules.uploadAttachment.utils.BaseDate;
import com.jwcyzhpt.modules.workPerformance.entity.WorkPerformance;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import sun.misc.BASE64Decoder;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * @program: jwcyzhpt
 * @Date: 2018/11/24 10:52
 * @Author: Zhang QingYang
 * @Description:
 */
@Service("/UploadAttachmentService")
public class UploadAttachmentServiceImpl extends BaseServiceImp implements IUploadAttachmentService {

    @Autowired
    private UploadAttachmentMapper uploadAttachmentMapper;
    @Autowired
    private HttpServletRequest request;

    /**
     * 上传图片
     *
     * @param baseDate       base64字符串
     * @param fileName       文件名
     * @param biaUesrBm
     * @param attachmentType 附件类型
     * @return
     */
    @Override
    public Map<String, Object> addUploadAttachment(String baseDate, String fileName, String biaUesrBm, String attachmentType) {
        boolean flag = false;
        boolean checkDir = false;
        Map<String, Object> map = this.getMap();
        UploadAttachment uploadAttachment = new UploadAttachment();
        try {
            if (("").equals(baseDate) || ("").equals(fileName) || ("").equals(attachmentType) || ("==请选择==").equals(attachmentType)) {
                map.put("code", "300");
                map.put("msg", "请将信息填写完整！");
                flag = false;
            }else {
                //去掉base64数据头部data:image/png;base64,和尾部的” " “
                String[] ww = baseDate.split(",");
                baseDate = ww[1];
                String[] aa = baseDate.split("\"");
                baseDate = aa[0];
                //图片保存到本地,项目的目录底下
                String targetPath = request.getServletContext().getRealPath("/images/uploadAttas/");

                File dir = new File(targetPath);
                //判断目录存不存在
                if (!dir.exists()) {
                    //创建目录
                    if (dir.mkdirs()) {
                        checkDir = true;
                    } else {
                        checkDir = false;
                    }
                } else {
                    checkDir = true;
                }
                String path = targetPath + fileName;
            }


            BaseDate file = new BaseDate();
            //目录存在就执行上传
            if (checkDir) {
                //图片保存到本地,项目的目录底下
//                file.decoderBase64File(baseDate, path);

                byte[] bytes = file.base64String2ByteFun(baseDate);

                uploadAttachment.setBiaAttachmentBlob(bytes);
                uploadAttachment.setBiaGuId(biaUesrBm);
                uploadAttachment.setBiaUesrBm(biaUesrBm);
                uploadAttachment.setBiaAttachmentType(attachmentType);
                uploadAttachment.setBiaAttachmentName(fileName);
                uploadAttachment.setBiaCreateTime(new Date());
                flag = uploadAttachmentMapper.addUploadAttachment(uploadAttachment);
            }

            if (flag) {
                map.put("code", "100");
                map.put("msg", "上传成功");
                map.put("operation", "add");
            } else {
                map.put("code", "200");
                map.put("msg", "上传失败");
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return map;
    }

    /**
     * 显示附件信息
     *
     * @param page
     * @param rows
     * @param biaUesrBm
     * @return
     */
    @Override
    public EUIDataGridResult findBasicInformationAttaPage(Integer page, Integer rows, String biaUesrBm) {
        PageHelper.startPage(page, rows);
        //排序
        /*	PageHelper.orderBy(orderBy);*/
        //查询
        List<UploadAttachment> basicInformationAttaPage = uploadAttachmentMapper.findBasicInformationAttaPage(biaUesrBm);

        BaseDate baseDate = new BaseDate();

        for (UploadAttachment uploadAttachment : basicInformationAttaPage) {
            byte[] biaAttachmentBlob = uploadAttachment.getBiaAttachmentBlob();
            String blobStr = baseDate.byte2Base64StringFun(biaAttachmentBlob);
        }
        EUIDataGridResult result = new EUIDataGridResult();

        PageInfo<UploadAttachment> pageInfo = new PageInfo<UploadAttachment>(basicInformationAttaPage);

        result.setTotal(pageInfo.getTotal()).setRows(basicInformationAttaPage);
        return result;
    }

    /**
     * 删除附件信息
     *
     * @param biaId
     * @return
     */
    @Override
    public Map<String, Object> delBasicInformationAtta(String biaId) {
        boolean flag = false;
        Map<String, Object> map = this.getMap();
        try {
            flag = uploadAttachmentMapper.delBasicInformationAtta(biaId);
            if (flag) {
                map.put("code", "100");
                map.put("msg", "删除成功");
            } else {
                map.put("code", "200");
                map.put("msg", "删除失败");
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return map;
    }

    /**
     * 批量删除附件信息
     *
     * @param idArray
     * @return
     */
    @Override
    public Map<String, Object> batchDelBasicInformationAttas(String idArray) {
        boolean flag = false;
        int count = 0;
        Map<String, Object> map = this.getMap();
        try {
            //将字符串转换为数组
            JSONArray parse = (JSONArray) JSONArray.parse(idArray);
            for (int i = 0; i < parse.size(); i++) {
                flag = uploadAttachmentMapper.delBasicInformationAtta(String.valueOf(parse.get(i)));
                if (flag) {
                    count += 1;
                    flag = false;
                }
            }
            if (count == parse.size()) {
                map.put("code", "100");
                map.put("msg", "删除成功");
            } else {
                map.put("code", "200");
                map.put("msg", "删除失败");
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return map;
    }

    /**
     * 预览附件
     *
     * @param biaId
     * @return
     */
    @Override
    public UploadAttachment previewAtta(String biaId) {

        return uploadAttachmentMapper.previewAtta(biaId);
    }

    /**
     * 获取附件信息
     *
     * @return
     */
    @Override
    public List<DeclarationCategory> getAttaType() {
        return uploadAttachmentMapper.getAttaType();
    }
}
