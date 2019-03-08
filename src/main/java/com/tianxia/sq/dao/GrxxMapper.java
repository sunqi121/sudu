package com.tianxia.sq.dao;

import com.jwcyzhpt.modules.supervise.entity.Grxx;
import com.jwcyzhpt.modules.supervise.entity.hjqkxx;
import com.jwcyzhpt.modules.supervise.entity.jyclxx;
import com.jwcyzhpt.modules.supervise.entity.zyzgclxx;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface GrxxMapper {
    /**
     * 查询个人信息
     * @return
     */
    List<Grxx> finGrxxAll(Grxx grxx);

    /**
     * 插入数据
     * @param grxx
     * @return
     */
    Integer addgrxb(Grxx grxx);

    /**
     * 根据账号查询用户信息
     * @param bm 绑定账号
     * @return
     */
    Grxx finGrxxBybm(String bm);
    /**
     * 修改数据
     * @param grxx
     * @return
     */
    Integer updategrxb(Grxx grxx);
    /**
     * 根据账号查询用户教育材料信息
     * @param bm 绑定账号
     * @return
     */
    List<jyclxx> finjyclxxBybm(String bm);

    /**
     * 添加学历信息
     * @param jyclxx
     * @return
     */
    Integer addjyxx(jyclxx jyclxx);

    /**
     * 删除学历信息
     * @param jyclxx
     * @return
     */
    Integer deljyxx(jyclxx jyclxx);

    /**
     * 新增职业资格信息
     * @param zyzgclxx
     * @return
     */

    Integer addzyzgxx(zyzgclxx zyzgclxx);

    /**
     *根据bm查询职业资格信息
     * @param bm
     */
   List<zyzgclxx> finzyzgxxBybm(String bm);

    /**
     * 根据唯一条件删除
     * @param zyzgclxx
     * @return
     */
   Integer delzyzg(zyzgclxx zyzgclxx);



    /**
     * 新增获奖信息
     * @param hjqkxx
     * @return
     */
    Integer addhjxx(hjqkxx hjqkxx);

    /**
     *根据bm查询获奖信息
     * @param bm
     */
    List<hjqkxx> finhjxxBybm(String bm);

    /**
     * 根据唯一条件删除
     * @param hjqkxx
     * @return
     */
    Integer delhjxx(hjqkxx hjqkxx);
}
