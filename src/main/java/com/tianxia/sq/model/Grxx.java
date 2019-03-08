package com.tianxia.sq.model;

import javax.xml.crypto.Data;
import java.util.Date;
import java.util.Objects;

/**
 * 个人基本信息
 */
public class Grxx {
    private String baseId;                      //id
    private String name;                   //姓名
    private String onceName;               //曾用名
    private String sex;                    //性别
    private String nation;                 //民族
    private String birthDate;                //出生日期
    private String sfzhm;                   //身份证号码
    private String stzk;                    //身体状况
    private String birthPlace;             //出身地
    private String contactNumber;          //联系电话
    private String personalNumber;         //手机号码
    private String wages;                   //标准工资
    private String postalCode;              //邮编
    private String rsdacfdw;                 //人事档案存放单位
    private String clhjdz;                   //材料回寄地址（需详细到地市、区、街道、门牌号
    private String userBm;                  //账号
    private String zpId;                     //照片id
    private String fjId;                     //附件id
    private String workUnit;                 //工作单位
    private String sfxssydw;                 //是否县属企事业单位
    private String shxsqtdw;                 //属何县属企事业单位
    private String xzzw;                      //行政职务
    private String xzzwrpsj;                 //行政职务聘任时间
    private String cjgzsj;                       //参加工作时间
    private String xcshzzyjsgz;               //现从事何种专业技术工作
    private String  xzzyjszw;                 //现任专业技术职务
    private String  zjzczsbh;                 //中级职称证书编号
    private String rzzgqdsj;                  //任职资格取得时间
    private String  rpzgprsj ;                //任职资格聘任时间
    private String rzzgspjg;                   //任职资格审批机关
    private String xrdrzyzw;                    //现任第二专业职务
    private String derzgqdsj;                   //第二任职资格取得时间
    private String gjzczy;                     //高级职称专业
    private String gjzczsbh;                    //高级职称证书编号
    private String gjzczshdsj;                  //高级职称证书获得时间
    private String gjzcspjg ;                   //高级职称审批机关
    private String hsjrzggctrhzw;               //何时加入中国共产党(共青团)任何职务
    private String hshdcjhzmzdprhzw;            //何时何地参加何种民主党派任何职务
    private String cjhzxstthzwhjz;               //参加何种学术团体何职务有何兼职
    private String wylb;                         //外语类别
    private String wydj;                         //外语等级
    private String wycj;                         //外语成绩
    private String sblx;                          //申报类型
    private String sblb;                          //申报类别
    private String sbzy;                         //申报专业
    private String sbdj;                         //申报等级
    private String wtjg;                         //委托机构
    private String sbqk;                           //申报情况
    private String sbtjsj;                       //申报提交时间
    private String guid;                        //全局唯一标识（数据中心用）现作为本系统人员编号
    private String psyj;                          //评审意见
    public Grxx() {
    }

    @Override
    public String toString() {
        return "Grxx{" +
                "baseId='" + baseId + '\'' +
                ", name='" + name + '\'' +
                ", onceName='" + onceName + '\'' +
                ", sex='" + sex + '\'' +
                ", nation='" + nation + '\'' +
                ", birthDate='" + birthDate + '\'' +
                ", sfzhm='" + sfzhm + '\'' +
                ", stzk='" + stzk + '\'' +
                ", birthPlace='" + birthPlace + '\'' +
                ", contactNumber='" + contactNumber + '\'' +
                ", personalNumber='" + personalNumber + '\'' +
                ", wages='" + wages + '\'' +
                ", postalCode='" + postalCode + '\'' +
                ", rsdacfdw='" + rsdacfdw + '\'' +
                ", clhjdz='" + clhjdz + '\'' +
                ", userBm='" + userBm + '\'' +
                ", zpId='" + zpId + '\'' +
                ", fjId='" + fjId + '\'' +
                ", workUnit='" + workUnit + '\'' +
                ", sfxssydw='" + sfxssydw + '\'' +
                ", shxsqtdw='" + shxsqtdw + '\'' +
                ", xzzw='" + xzzw + '\'' +
                ", xzzwrpsj='" + xzzwrpsj + '\'' +
                ", cjgzsj='" + cjgzsj + '\'' +
                ", xcshzzyjsgz='" + xcshzzyjsgz + '\'' +
                ", xzzyjszw='" + xzzyjszw + '\'' +
                ", zjzczsbh='" + zjzczsbh + '\'' +
                ", rzzgqdsj='" + rzzgqdsj + '\'' +
                ", rpzgprsj='" + rpzgprsj + '\'' +
                ", rzzgspjg='" + rzzgspjg + '\'' +
                ", xrdrzyzw='" + xrdrzyzw + '\'' +
                ", derzgqdsj='" + derzgqdsj + '\'' +
                ", gjzczy='" + gjzczy + '\'' +
                ", gjzczsbh='" + gjzczsbh + '\'' +
                ", gjzczshdsj='" + gjzczshdsj + '\'' +
                ", gjzcspjg='" + gjzcspjg + '\'' +
                ", hsjrzggctrhzw='" + hsjrzggctrhzw + '\'' +
                ", hshdcjhzmzdprhzw='" + hshdcjhzmzdprhzw + '\'' +
                ", cjhzxstthzwhjz='" + cjhzxstthzwhjz + '\'' +
                ", wylb='" + wylb + '\'' +
                ", wydj='" + wydj + '\'' +
                ", wycj='" + wycj + '\'' +
                ", sblx='" + sblx + '\'' +
                ", sblb='" + sblb + '\'' +
                ", sbzy='" + sbzy + '\'' +
                ", sbdj='" + sbdj + '\'' +
                ", wtjg='" + wtjg + '\'' +
                ", sbqk='" + sbqk + '\'' +
                ", sbtjsj='" + sbtjsj + '\'' +
                ", guid='" + guid + '\'' +
                ", psyj='" + psyj + '\'' +
                '}';
    }

    public String getBaseId() {
        return baseId;
    }

    public void setBaseId(String baseId) {
        this.baseId = baseId;
    }

    public String getSblx() {
        return sblx;
    }

    public void setSblx(String sblx) {
        this.sblx = sblx;
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getOnceName() {
        return onceName;
    }

    public void setOnceName(String onceName) {
        this.onceName = onceName;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getNation() {
        return nation;
    }

    public void setNation(String nation) {
        this.nation = nation;
    }

    public String getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(String birthDate) {
        this.birthDate = birthDate;
    }

    public String getSfzhm() {
        return sfzhm;
    }

    public void setSfzhm(String sfzhm) {
        this.sfzhm = sfzhm;
    }

    public String getStzk() {
        return stzk;
    }

    public void setStzk(String stzk) {
        this.stzk = stzk;
    }

    public String getBirthPlace() {
        return birthPlace;
    }

    public void setBirthPlace(String birthPlace) {
        this.birthPlace = birthPlace;
    }

    public String getContactNumber() {
        return contactNumber;
    }

    public void setContactNumber(String contactNumber) {
        this.contactNumber = contactNumber;
    }

    public String getPersonalNumber() {
        return personalNumber;
    }

    public void setPersonalNumber(String personalNumber) {
        this.personalNumber = personalNumber;
    }

    public String getWages() {
        return wages;
    }

    public void setWages(String wages) {
        this.wages = wages;
    }

    public String getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }

    public String getRsdacfdw() {
        return rsdacfdw;
    }

    public void setRsdacfdw(String rsdacfdw) {
        this.rsdacfdw = rsdacfdw;
    }

    public String getClhjdz() {
        return clhjdz;
    }

    public void setClhjdz(String clhjdz) {
        this.clhjdz = clhjdz;
    }

    public String getUserBm() {
        return userBm;
    }

    public void setUserBm(String userBm) {
        this.userBm = userBm;
    }

    public String getZpId() {
        return zpId;
    }

    public void setZpId(String zpId) {
        this.zpId = zpId;
    }

    public String getFjId() {
        return fjId;
    }

    public void setFjId(String fjId) {
        this.fjId = fjId;
    }

    public String getWorkUnit() {
        return workUnit;
    }

    public void setWorkUnit(String workUnit) {
        this.workUnit = workUnit;
    }

    public String getSfxssydw() {
        return sfxssydw;
    }

    public void setSfxssydw(String sfxssydw) {
        this.sfxssydw = sfxssydw;
    }

    public String getShxsqtdw() {
        return shxsqtdw;
    }

    public void setShxsqtdw(String shxsqtdw) {
        this.shxsqtdw = shxsqtdw;
    }

    public String getXzzw() {
        return xzzw;
    }

    public void setXzzw(String xzzw) {
        this.xzzw = xzzw;
    }

    public String getXzzwrpsj() {
        return xzzwrpsj;
    }

    public void setXzzwrpsj(String xzzwrpsj) {
        this.xzzwrpsj = xzzwrpsj;
    }

    public String getCjgzsj() {
        return cjgzsj;
    }

    public void setCjgzsj(String cjgzsj) {
        this.cjgzsj = cjgzsj;
    }

    public String getXcshzzyjsgz() {
        return xcshzzyjsgz;
    }

    public void setXcshzzyjsgz(String xcshzzyjsgz) {
        this.xcshzzyjsgz = xcshzzyjsgz;
    }

    public String getXzzyjszw() {
        return xzzyjszw;
    }

    public void setXzzyjszw(String xzzyjszw) {
        this.xzzyjszw = xzzyjszw;
    }

    public String getZjzczsbh() {
        return zjzczsbh;
    }

    public void setZjzczsbh(String zjzczsbh) {
        this.zjzczsbh = zjzczsbh;
    }

    public String getRzzgqdsj() {
        return rzzgqdsj;
    }

    public void setRzzgqdsj(String rzzgqdsj) {
        this.rzzgqdsj = rzzgqdsj;
    }

    public String getRpzgprsj() {
        return rpzgprsj;
    }

    public void setRpzgprsj(String rpzgprsj) {
        this.rpzgprsj = rpzgprsj;
    }

    public String getRzzgspjg() {
        return rzzgspjg;
    }

    public void setRzzgspjg(String rzzgspjg) {
        this.rzzgspjg = rzzgspjg;
    }

    public String getXrdrzyzw() {
        return xrdrzyzw;
    }

    public void setXrdrzyzw(String xrdrzyzw) {
        this.xrdrzyzw = xrdrzyzw;
    }

    public String getDerzgqdsj() {
        return derzgqdsj;
    }

    public void setDerzgqdsj(String derzgqdsj) {
        this.derzgqdsj = derzgqdsj;
    }

    public String getGjzczy() {
        return gjzczy;
    }

    public void setGjzczy(String gjzczy) {
        this.gjzczy = gjzczy;
    }

    public String getGjzczsbh() {
        return gjzczsbh;
    }

    public void setGjzczsbh(String gjzczsbh) {
        this.gjzczsbh = gjzczsbh;
    }

    public String getGjzczshdsj() {
        return gjzczshdsj;
    }

    public void setGjzczshdsj(String gjzczshdsj) {
        this.gjzczshdsj = gjzczshdsj;
    }

    public String getGjzcspjg() {
        return gjzcspjg;
    }

    public void setGjzcspjg(String gjzcspjg) {
        this.gjzcspjg = gjzcspjg;
    }

    public String getHsjrzggctrhzw() {
        return hsjrzggctrhzw;
    }

    public void setHsjrzggctrhzw(String hsjrzggctrhzw) {
        this.hsjrzggctrhzw = hsjrzggctrhzw;
    }

    public String getHshdcjhzmzdprhzw() {
        return hshdcjhzmzdprhzw;
    }

    public void setHshdcjhzmzdprhzw(String hshdcjhzmzdprhzw) {
        this.hshdcjhzmzdprhzw = hshdcjhzmzdprhzw;
    }

    public String getCjhzxstthzwhjz() {
        return cjhzxstthzwhjz;
    }

    public void setCjhzxstthzwhjz(String cjhzxstthzwhjz) {
        this.cjhzxstthzwhjz = cjhzxstthzwhjz;
    }

    public String getWylb() {
        return wylb;
    }

    public void setWylb(String wylb) {
        this.wylb = wylb;
    }

    public String getWydj() {
        return wydj;
    }

    public void setWydj(String wydj) {
        this.wydj = wydj;
    }

    public String getWycj() {
        return wycj;
    }

    public void setWycj(String wycj) {
        this.wycj = wycj;
    }

    public String getSblb() {
        return sblb;
    }

    public void setSblb(String sblb) {
        this.sblb = sblb;
    }

    public String getSbzy() {
        return sbzy;
    }

    public void setSbzy(String sbzy) {
        this.sbzy = sbzy;
    }

    public String getSbdj() {
        return sbdj;
    }

    public void setSbdj(String sbdj) {
        this.sbdj = sbdj;
    }

    public String getWtjg() {
        return wtjg;
    }

    public void setWtjg(String wtjg) {
        this.wtjg = wtjg;
    }

    public String getSbqk() {
        return sbqk;
    }

    public void setSbqk(String sbqk) {
        this.sbqk = sbqk;
    }

    public String getSbtjsj() {
        return sbtjsj;
    }

    public void setSbtjsj(String sbtjsj) {
        this.sbtjsj = sbtjsj;
    }

    public String getGuid() {
        return guid;
    }

    public void setGuid(String guid) {
        this.guid = guid;
    }

    public String getPsyj() {
        return psyj;
    }

    public void setPsyj(String psyj) {
        this.psyj = psyj;
    }
}
