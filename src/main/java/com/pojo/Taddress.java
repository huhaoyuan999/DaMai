package com.pojo;

import java.io.Serializable;

/**
 * 收货地址实体类
 */
public class Taddress implements Serializable {
    private static final long serialVersionUID = 3741358553926792249L;

    private Long addressId;//地址id(主键)

    private Integer userId;//用户id(外键)

    private User userName;//用户名

    private String addressAlias;//地址别名

    private String addressAddressee;//收件人

    private String phone;//手机号

    private String telePhone;//座机号

    private String detailed;//地址详细描述

    private Integer preferred;//是否首选地址(1.为首选,0.为非首选)

    private String provinceId;//外键，省id

    private String cityId;//外键，市id

    private String areaId;//外键，区id

    private Tareainfo provinceName;//省名
    private Tareainfo cityName;//市名
    private Tareainfo areaName;//区县名

    public String getProvinceId() {
        return provinceId;
    }

    public void setProvinceId(String provinceId) {
        this.provinceId = provinceId;
    }

    public String getCityId() {
        return cityId;
    }

    public void setCityId(String cityId) {
        this.cityId = cityId;
    }

    public String getAreaId() {
        return areaId;
    }

    public void setAreaId(String areaId) {
        this.areaId = areaId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public User getUserName() {
        return userName;
    }

    public void setUserName(User userName) {
        this.userName = userName;
    }

    public String getDetailed() {
        return detailed;
    }

    public void setDetailed(String detailed) {
        this.detailed = detailed;
    }

    public Integer getPreferred() {
        return preferred;
    }

    public void setPreferred(Integer preferred) {
        this.preferred = preferred;
    }

    public Long getAddressId() {

        return addressId;
    }

    public void setAddressId(Long addressId) {
        this.addressId = addressId;
    }

    public String getAddressAlias() {
        return addressAlias;
    }

    public void setAddressAlias(String addressAlias) {
        this.addressAlias = addressAlias;
    }

    public String getAddressAddressee() {
        return addressAddressee;
    }

    public void setAddressAddressee(String addressAddressee) {
        this.addressAddressee = addressAddressee;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getTelePhone() {
        return telePhone;
    }

    public void setTelePhone(String telePhone) {
        this.telePhone = telePhone;
    }

    public Tareainfo getProvinceName() {
        return provinceName;
    }

    public void setProvinceName(Tareainfo provinceName) {
        this.provinceName = provinceName;
    }

    public Tareainfo getCityName() {
        return cityName;
    }

    public void setCityName(Tareainfo cityName) {
        this.cityName = cityName;
    }

    public Tareainfo getAreaName() {
        return areaName;
    }

    public void setAreaName(Tareainfo areaName) {
        this.areaName = areaName;
    }
}