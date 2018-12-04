package com.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * 用户实体类
 */
public class User implements Serializable {
    private static final long serialVersionUID = 3741358553926792249L;
    private Integer id;//（主键）
    private String userName;//用户真实姓名
    private String nickname;//用户呢称
    private String password;//密码
    private Integer sex;//性别
    private String identityCode;//身份证号
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
    private Date date;//出生日期
    private String loginName;//手机或电子邮箱(用户登入名)
    private Integer type;//用户类型
    private String imageName;//图片文件名
    private Long loginPhone;//手机登录
    private Double balance;//余额
    private Integer integral;//积分
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm:ss")
    private Date latelyLogin;//最近一次登录时间

    public Double getBalance() {
        return balance;
    }

    public void setBalance(Double balance) {
        this.balance = balance;
    }

    public Integer getIntegral() {
        return integral;
    }

    public void setIntegral(Integer integral) {
        this.integral = integral;
    }

    public Date getLatelyLogin() {
        return latelyLogin;
    }

    public void setLatelyLogin(Date latelyLogin) {
        this.latelyLogin = latelyLogin;
    }

    public Long getLoginPhone() {
        return loginPhone;
    }

    public void setLoginPhone(Long loginPhone) {
        this.loginPhone = loginPhone;
    }

    public User() {
    }

    public User(String password, String loginName) {
        this.password = password;
        this.loginName = loginName;
    }

    public User(Integer id, String loginName) {
        this.id = id;
        this.loginName = loginName;
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getIdentityCode() {
        return identityCode;
    }

    public void setIdentityCode(String identityCode) {
        this.identityCode = identityCode;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getImageName() {
        return imageName;
    }

    public void setImageName(String imageName) {
        this.imageName = imageName;
    }
}
