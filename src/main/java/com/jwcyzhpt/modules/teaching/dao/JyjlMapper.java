package com.jwcyzhpt.modules.teaching.dao;

import java.util.List;

import com.jwcyzhpt.modules.teaching.entity.Kjljrc;
import com.jwcyzhpt.modules.teaching.entity.dto.Jyjl;
import org.apache.ibatis.annotations.Param;

public interface JyjlMapper {
    List<Jyjl> findAllJyjl(Jyjl jyjl);

    List<Jyjl> findAllJyjl2(String guid);

     /*新增教学经历*/
    Integer addjyjl(Jyjl jyjl);

    /*删除学历信息*/
    Integer deljyjl(Jyjl jyjl);

    /*修改*/
    Integer updatejyjl(Jyjl jyjl);

    /*List<Jyjl> findAllJyjl2(String guid);*/

    //清阳
    //-------会计领军人才-----------------------------------------------

    //查询会计领军人才列表
    List<Kjljrc> findAllKjljrc(@Param("kjryGuid") String kjryGuid);

    //新增会计领军人才
    Integer insertKjljrc(Kjljrc Kjljrc);

    //修改会计领军人才
    Integer updateKjljrc(Kjljrc Kjljrc);

    //删除会计领军人才
    Integer todelkjljrc(@Param("kjljrcGuid") String kjljrcGuid);


}