package com.pojo;

import java.io.Serializable;
import java.util.Date;

/**
 * 优惠劵实体类
 */
public class Reduce implements Serializable {
    private static final long serialVersionUID = 3741358553926792249L;
    private Integer id;//订单id(主键)
    //    private Integer user_id;//用户id(外键)
    private User user;//用户
    private String number;//优惠劵号码
    private String name;//优惠劵名称
    private String de;//优惠说明
    private Double tot;//优惠券使用需要满足的金额
    private Double sub;//优惠券满减的金额
    private Integer type;//优惠劵类型(1.未使用,2.已过期,3.已使用)
    private Date createDate;//有效日期开始时间
    private Date exitDate;//有效日期结束时间

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

//    public Integer getUser_id() {
//        return user_id;
//    }
//
//    public void setUser_id(Integer user_id) {
//        this.user_id = user_id;
//    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDe() {
        return de;
    }

    public void setDe(String de) {
        this.de = de;
    }

    public Double getTot() {
        return tot;
    }

    public void setTot(Double tot) {
        this.tot = tot;
    }

    public Double getSub() {
        return sub;
    }

    public void setSub(Double sub) {
        this.sub = sub;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public Date getExitDate() {
        return exitDate;
    }

    public void setExitDate(Date exitDate) {
        this.exitDate = exitDate;
    }
}
