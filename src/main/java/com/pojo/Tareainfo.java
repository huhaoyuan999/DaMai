package com.pojo;

public class Tareainfo {
    private String areainfoId;//地址ID

    private String areainfoName;//地址名称

    private String parentId;//地址父级ID

    public String getAreainfoId() {
        return areainfoId;
    }

    public void setAreainfoId(String areainfoId) {
        this.areainfoId = areainfoId == null ? null : areainfoId.trim();
    }

    public String getAreainfoName() {
        return areainfoName;
    }

    public void setAreainfoName(String areainfoName) {
        this.areainfoName = areainfoName == null ? null : areainfoName.trim();
    }

    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId == null ? null : parentId.trim();
    }
}