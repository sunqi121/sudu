package com.tianxia.sq.service.impl;

import com.jwcyzhpt.modules.sys.service.imp.BaseServiceImp;
import com.jwcyzhpt.modules.uploadAttachment.dao.ZpscMapper;
import com.jwcyzhpt.modules.uploadAttachment.entity.Photo;
import com.jwcyzhpt.modules.uploadAttachment.service.IZpscService;
import com.jwcyzhpt.modules.uploadAttachment.utils.BaseDate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.Date;
import java.util.Map;

/**
 * @program: jwcyzhpt
 * @Date: 2018/11/24 10:52
 * @Author: Zhang QingYang
 * @Description:
 */
@Service("/zpscService")
public class ZpscServiceImpl extends BaseServiceImp implements IZpscService {

    @Autowired
    private ZpscMapper zpscMapper;
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
    public Map<String, Object> addZpsc(String baseDate, String fileName, String biaUesrBm, String attachmentType) {
        boolean flag = false;
        boolean checkDir = false;
        Map<String, Object> map = this.getMap();
        Photo photo = new Photo();
        try {
//		去掉base64数据头部data:image/png;base64,和尾部的” " “
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
            BaseDate file = new BaseDate();
            //目录存在就执行上传
            if (checkDir) {
                file.decoderBase64File(baseDate, path);
                byte[] bytes = file.base64String2ByteFun(baseDate);

//            File newFile = new File(path);
//            byte[] fileToByte = file.getFileToByte(newFile);
                photo.setBiaAttachmentBlob(bytes);
                photo.setBiaGuId(biaUesrBm);
                photo.setBiaUesrBm(biaUesrBm);
                photo.setBiaAttachmentType(attachmentType);
                photo.setBiaAttachmentName(fileName);
                photo.setBiaCreateTime(new Date());
                flag = zpscMapper.addZp(photo);
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
     * 预览附件
     * @param biaId
     * @return
     */
    @Override
    public Photo previewAtta(String biaId) {
            if(biaId==null){
                return null;
            }
        return zpscMapper.previewzp(biaId);
    }

    //删除所有照片
    public Integer delZp(String bm){

        return zpscMapper.delZp(bm);
    }

}
