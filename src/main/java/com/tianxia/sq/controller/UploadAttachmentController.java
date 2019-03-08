package com.tianxia.sq.controller;

import com.jwcyzhpt.common.util.EUIDataGridResult;
import com.jwcyzhpt.modules.supervise.entity.DeclarationCategory;
import com.jwcyzhpt.modules.sys.entity.po.UserLogin;
import com.jwcyzhpt.modules.sys.web.BaseController;
import com.jwcyzhpt.modules.uploadAttachment.entity.UploadAttachment;
import com.jwcyzhpt.modules.uploadAttachment.service.IUploadAttachmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileInputStream;
import java.util.List;
import java.util.Map;

/**
 * @program: jwcyzhpt
 * @Date: 2018/11/24 10:48
 * @Author: Zhang QingYang
 * @Description:
 */
@Controller
@RequestMapping("/uploadAttachment")
public class UploadAttachmentController extends BaseController {

    @Autowired
    private IUploadAttachmentService uploadAttachmentService;

    //获取附件类型信息
    @ResponseBody
    @RequestMapping("/getAttaType")
    public List<DeclarationCategory> getNation() {
        List<DeclarationCategory> result = null;
        try {
            result = uploadAttachmentService.getAttaType();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    /**
     * 上传附件
     *
     * @param request
     * @param base64
     * @param fileName
     * @param attachmentType
     * @return
     */
    @ResponseBody
    @RequestMapping("/addUploadAttachment")
    public Map<String, Object> addAfterWorkPerformance(HttpServletRequest request, String base64, String fileName, String attachmentType) {
        Map<String, Object> map = this.getMap();
        boolean flag = true;
        try {
            if (("").equals(base64) || ("").equals(fileName) || ("").equals(attachmentType) || ("==请选择==").equals(attachmentType)) {
                map.put("code", "300");
                map.put("msg", "请将信息填写完整！");
                flag = false;
            }
            if (flag) {
                // 获取登录用户的session信息
                UserLogin userlogin = (UserLogin) request.getSession().getAttribute("userlogin");
                String biaUesrBm = userlogin.getUser_bm();
                //将图片插入数据库
                map = uploadAttachmentService.addUploadAttachment(base64, fileName, biaUesrBm, attachmentType);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return map;
    }

    /**
     * 查看附件信息
     *
     * @param page
     * @param rows
     * @param request
     * @return
     */
    @ResponseBody
    @RequestMapping("/findBasicInformationAttaPage")
    public EUIDataGridResult findBasicInformationAttaPage(
            @RequestParam(value = "page", defaultValue = "1", required = false) Integer page,
            @RequestParam(value = "rows", defaultValue = "3", required = false) Integer rows,
            HttpServletRequest request) {
        // 驼峰转下划线,对应数据库字段
        /* String realSort = Hump2Underline.Humpl2Underline(sort); */
        // 排序字段,与数据库字段对应(默认:dept_id asc)
        /* String orderBy = realSort + " " + order; */
        // 获取登录用户的session信息
        UserLogin userlogin = (UserLogin) request.getSession().getAttribute("userlogin");
        String biaUesrBm = userlogin.getUser_bm();
        return uploadAttachmentService.findBasicInformationAttaPage(page, rows, biaUesrBm);
    }

    /**
     * 预览附件
     *
     * @param biaId
     * @param request
     * @param response
     * @throws Exception
     */
    @RequestMapping("/getImg")
    @ResponseBody
    public void getImg(String biaId, HttpServletRequest request, HttpServletResponse response) throws Exception {

        UploadAttachment uploadAttachment = uploadAttachmentService.previewAtta(biaId);
        byte[] picData = uploadAttachment.getBiaAttachmentBlob();

        if (picData == null || picData.length == 0) {
            String defaultPicPath = request.getSession().getServletContext().getRealPath("/images/zwtp.jpg");

            FileInputStream fis = new FileInputStream(defaultPicPath);
            picData = new byte[fis.available()];
            fis.read(picData);
            fis.close();
        }
        response.setContentType("image/jpeg");
        response.getOutputStream().write(picData);
        response.getOutputStream().close();
    }

    /**
     * 删除附件信息
     *
     * @param biaId
     * @return
     */
    @ResponseBody
    @RequestMapping("/delBasicInformationAtta")
    public Map<String, Object> delBasicInformationAtta(String biaId) {
        Map<String, Object> map = this.getMap();
        try {
            map = uploadAttachmentService.delBasicInformationAtta(biaId);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return map;
    }

    /**
     * 批量删除附件信息
     *
     * @param
     * @return
     */
    @ResponseBody
    @RequestMapping("/batchDelBasicInformationAttas")
    public Map<String, Object> batchDelBasicInformationAttas(String idArray) {
        Map<String, Object> map = this.getMap();
        try {
            map = uploadAttachmentService.batchDelBasicInformationAttas(idArray);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return map;
    }
}
