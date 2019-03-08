package com.tianxia.sq.controller;

import com.jwcyzhpt.modules.supervise.entity.Grxx;
import com.jwcyzhpt.modules.supervise.entity.jyclxx;
import com.jwcyzhpt.modules.supervise.service.IGrxxService;
import com.jwcyzhpt.modules.sys.entity.po.UserLogin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

import java.util.List;

@Controller
@RequestMapping(value="/jbxxtx")
public class jbxxtxController  {

    @Autowired
    private IGrxxService grxxService;
    //获取当前用户编码
    public String toupdejbxx(HttpServletRequest request) {
        UserLogin userlogin=(UserLogin) request.getSession().getAttribute("userlogin");
        return userlogin.getUser_bm();
    }

    //个人信息
    @RequestMapping("/toryxx")
    public ModelAndView toryxx(Grxx grxx, HttpServletRequest request, ModelMap map) {
        ModelAndView mav = new ModelAndView();
       //根据账号获取该账号绑定的个人信息
        grxx=grxxService.finGrxxBybm(toupdejbxx(request));
        //将获取到的个人信息绑定到ModelMap
        map.addAttribute("grxx",grxx);

        System.out.println("刷新页面时检测信息grxx  ："+grxx);
        mav.setViewName("personalWeb/ryxx/哈哈");
        return mav;
    }

    /**
     * 修改保存个人信息
     * @param request
     * @param grxx
     * @param map
     * @return
     */
    @RequestMapping("/toupdejbxx")
    public ModelAndView toupdejbxx(HttpServletRequest request,@RequestBody  Grxx grxx,ModelMap map) {
       // UserLogin userlogin=(UserLogin) request.getSession().getAttribute("userlogin");
        grxx.setUserBm(toupdejbxx(request));
        System.out.println("保存个人基本信息测试：："+grxx);
        grxxService.updategrxb(grxx);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("personalWeb/ryxx/gr_ryxx");
        toryxx(grxx,request,map);
        return mav;
    }

    //学历信息获取
    @ResponseBody
    @RequestMapping("/tofinjyxx")
    public List<jyclxx> tofinjyxx(HttpServletRequest request) {
        List<jyclxx> lisyy=grxxService.finjyclxxBybm(toupdejbxx(request));
      return  lisyy;
    }

    //学历信息添加
    @ResponseBody
    @RequestMapping(value = "/toaddjyxx", method= RequestMethod.POST)
    public ModelAndView toaddjyxx(HttpServletRequest request,@RequestBody jyclxx jyclxx) {
        jyclxx.setUserBm(toupdejbxx(request));
        grxxService.addjyxx(jyclxx);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("personalWeb/ryxx/gr_ryxx");

        return mav;
    }
    //学历信息删除
    @ResponseBody
    @RequestMapping("/todeljyxx")
    public Integer todeljyxx(HttpServletRequest request,Integer jyxxid) {
        jyclxx jyclxx=new jyclxx();
        jyclxx.setJyxxid(jyxxid);
        jyclxx.setUserBm(toupdejbxx(request));
        return  grxxService.deljyxx(jyclxx);
    }

    //任职前工作业绩
    @RequestMapping("/torzqgzyj")
    public ModelAndView torzqgzyj() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("personalWeb/ryxx/gr_rxzqgzyj");
        return mav;
    }
    //任职后工作业绩
    @RequestMapping("/torzhgzyj")
    public ModelAndView torzhgzyj() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("personalWeb/ryxx/gr_rxzhgzyj");
        return mav;
    }
    //论文
    @RequestMapping("/tolw")
    public ModelAndView tolw() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("personalWeb/ryxx/gr_lw");
        return mav;
    }
    //任职后工作简历
    @RequestMapping("/torzhgzjl")
    public ModelAndView torzhgzjl() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("personalWeb/ryxx/gr_rxzhgzjl");
        return mav;
    }
    //任职前工作简历
    @RequestMapping("/torzqgzjl")
    public ModelAndView torzqgzjl() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("personalWeb/ryxx/gr_rxzqgzjl");
        return mav;
    }
    //继续教育经历
    @RequestMapping("/tojxjyjl")
    public ModelAndView tojxjyjl() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("personalWeb/ryxx/gr_jxjypxjl");
        return mav;
    }
    //近5年考核成绩
    @RequestMapping("/tojwnkhcj")
    public ModelAndView tojwnkhcj() {
        ModelAndView mav = new ModelAndView();

        mav.setViewName("personalWeb/ryxx/gr_jwnkhcj");
        return mav;
    }
    //年度及任职期满考核
    @RequestMapping("/tondjrzqmkh")
    public ModelAndView tondjrzqmkh() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("personalWeb/ryxx/gr_ndjrzqmkh");
        return mav;
    }
    //上传附件
    @RequestMapping("/toscfj")
    public ModelAndView toscfj() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("personalWeb/ryxx/gr_scfj");
        return mav;
    }
    //提交申请
    @RequestMapping("/totjsq")
    public ModelAndView totjsq() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("personalWeb/tjsq/gr_tjsq");
        return mav;
    }
    //查询
    @RequestMapping("/tocx")
    public ModelAndView tocx() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("personalWeb/lssbjl/gr_lssbjl");
        return mav;
    }
    }

