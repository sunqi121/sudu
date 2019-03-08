package com.tianxia.sq.service.impl;

import com.jwcyzhpt.modules.supervise.dao.GrxxMapper;
import com.jwcyzhpt.modules.supervise.entity.*;
import com.jwcyzhpt.modules.supervise.entity.ex.ajaxException;
import com.jwcyzhpt.modules.supervise.service.IGrxxService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 信息查询Service层
 */
@Service("grxxService")
public class GrxxServiceImpl implements IGrxxService {

    @Autowired
    private GrxxMapper grxxMapper;

    private ResponseResult<Void> rr;

    /**
     * 查询个人信息
     * @return
     */
    public List<Grxx> finGrxxAll(Grxx grxx){

        return grxxMapper.finGrxxAll(grxx);
    };

    /**
     * 插入数据
     * @param grxx
     * @return
     */
    public Integer addgrxb(Grxx grxx){

        return grxxMapper.addgrxb(grxx);
    }
    /**
     * 根据账号查询用户信息
     * @param bm 绑定账号
     * @return
     */
    public Grxx finGrxxBybm(String bm){
        if(bm!=null){
            return grxxMapper.finGrxxBybm(bm);
        }
       return null;
    }
    /**
     * 修改数据
     * @param grxx
     * @return
     */
    public Integer updategrxb(Grxx grxx){
        return grxxMapper.updategrxb(grxx);
    }
    /**
     * 根据账号查询用户教育材料信息
     * @param bm 绑定账号
     * @return
     */
    public List<jyclxx> finjyclxxBybm(String bm){

        return grxxMapper.finjyclxxBybm(bm);
    }

    /**
     * 添加学历信息
     * @param jyclxx
     * @return
     */
   public Integer addjyxx(jyclxx jyclxx){
       if("高中".equals(jyclxx.getEducation())){
           jyclxx.setZgxlsb("3");
       }
       if("中专".equals(jyclxx.getEducation())){
           jyclxx.setZgxlsb("4");
       }
       if("本科".equals(jyclxx.getEducation())){
           jyclxx.setZgxlsb("5");
       }
       if("双学士".equals(jyclxx.getEducation())){
           jyclxx.setZgxlsb("6");
       }
       if("硕士".equals(jyclxx.getEducation())){
           jyclxx.setZgxlsb("7");
       }
       if("博士".equals(jyclxx.getEducation())){
           jyclxx.setZgxlsb("8");
       }
       jyclxx.setBgan("1");
       jyclxx.setGuid("001");
       return grxxMapper.addjyxx(jyclxx);
   }
    /**
     * 删除学历信息
     * @param jyclxx
     * @return
     */
    public Integer deljyxx(jyclxx jyclxx){
        return grxxMapper.deljyxx(jyclxx);
    }

    /**
     * 新增职业资格信息
     * @param zyzgclxx
     * @return
     */
    public Integer addzyzgxx(zyzgclxx zyzgclxx){
        zyzgclxx.setGuid("001");
        return grxxMapper.addzyzgxx(zyzgclxx);
    }

    /**
     *根据bm查询职业资格信息
     * @param bm
     */
    public List<zyzgclxx> finzyzgxxBybm(String bm){
        return grxxMapper.finzyzgxxBybm(bm);
    }

    /**
     * 根据唯一条件删除
     * @param zyzgclxx
     * @return
     */
    public Integer delzyzg(zyzgclxx zyzgclxx){
        return grxxMapper.delzyzg(zyzgclxx);
    }

    /**
     * 新增获奖信息
     * @param hjqkxx
     * @return
     */
    public Integer addhjxx(hjqkxx hjqkxx){
        hjqkxx.setGuid("001");
        //授奖单位不能为空
        if (hjqkxx.getSjdw().equals("")|| hjqkxx.getSjdw()==null){
            return 0;
        }
        //获得何奖不能为空
        if (hjqkxx.getHdhj().equals("")|| hjqkxx.getHdhj()==null){
            return 2;
        }
        //获得时间不能为空
        if (hjqkxx.getHjsj().equals("")|| hjqkxx.getHjsj()==null){
            return 3;
        }
        return grxxMapper.addhjxx(hjqkxx);
    }

    /**
     *根据bm查询获奖信息
     * @param bm
     */
    public List<hjqkxx> finhjxxBybm(String bm){
        return grxxMapper.finhjxxBybm(bm);
    }

    /**
     * 根据唯一条件删除
     * @param hjqkxx
     * @return
     */
    public Integer delhjxx(hjqkxx hjqkxx){
        return grxxMapper.delhjxx(hjqkxx);
    }
}
