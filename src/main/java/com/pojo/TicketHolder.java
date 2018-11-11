package com.pojo;

import java.io.Serializable;

/**
 * 常用购票人实体类
 */
public class TicketHolder implements Serializable {
    private static final long serialVersionUID = 3741358553926792249L;
    private int id;//（主键）
    private String name;//购票人姓名
    private int type;//证件类型(1.身份证,2.护照,3.港澳通行证,4.台胞证)
    private String document;//证件号
    private int t_user;//用户id(用户表外键)

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getDocument() {
        return document;
    }

    public void setDocument(String document) {
        this.document = document;
    }

    public int getT_user() {
        return t_user;
    }

    public void setT_user(int t_user) {
        this.t_user = t_user;
    }
}
