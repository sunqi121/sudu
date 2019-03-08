package com.tianxia.sq.controller;

import com.jwcyzhpt.modules.supervise.entity.Grxx;
import com.jwcyzhpt.modules.supervise.service.IGrxxService;
import com.jwcyzhpt.modules.sys.entity.po.UserLogin;
import com.jwcyzhpt.modules.sys.web.BaseController;
import com.jwcyzhpt.modules.uploadAttachment.entity.Photo;
import com.jwcyzhpt.modules.uploadAttachment.service.IUploadAttachmentService;
import com.jwcyzhpt.modules.uploadAttachment.service.IZpscService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileInputStream;
import java.util.Map;

/**
 * @program: jwcyzhpt
 * @Date: 2018/11/24 10:48
 * @Author: Zhang QingYang
 * @Description:
 */
@Controller
@RequestMapping("/Zpsc")
public class ZpscController extends BaseController {

    @Autowired
    private IGrxxService grxxService;
    @Autowired
    private IZpscService zpscService;

    @ResponseBody
    @RequestMapping("/addzpsc")
    public Map<String, Object> addAfterWorkPerformance(HttpServletRequest request, String base64, String fileName, String attachmentType) {
        Map<String, Object> map = this.getMap();
        boolean flag = true;
        try {
            if (("").equals(base64) || ("").equals(fileName) || ("").equals(attachmentType)) {
                map.put("code", "300");
                map.put("msg", "请将信息填写完整！");
                flag = false;
            }
            if (flag) {
                // 获取登录用户的session信息
                UserLogin userlogin = (UserLogin) request.getSession().getAttribute("userlogin");
                String biaUesrBm = userlogin.getUser_bm();

                //删除用户对应的头像
                zpscService.delZp(biaUesrBm);
                //将图片插入数据库
                map = zpscService.addZpsc(base64, fileName, biaUesrBm, attachmentType);
                //获取存入的id
                Grxx grxx=new Grxx();
                grxx.setZpId(zpscService.previewAtta("").getBiaId());
                grxx.setUserBm(biaUesrBm);
                grxxService.updategrxb(grxx);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return map;
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
        Photo photo=zpscService.previewAtta(biaId);
        if(photo==null){
            return;
        }
       // UploadAttachment uploadAttachment = uploadAttachmentService.previewAtta(biaId);
        byte[] picData = photo.getBiaAttachmentBlob();

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

}
