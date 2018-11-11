package com.pojo;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * t_show
 * @author 
 */
public class Tshow implements Serializable {
    /**
     * 主键，演出Id
     */
    private Long showId;

    /**
     * 演出名称
     */
    private String showName;

    /**
     * 演出图片
     */
    private String showImg;

    /**
     * 最低票价
     */
    private Double showMinPrice;

    /**
     * 最高票价
     */
    private Double showMaxPrice;

    /**
     * 演出地点
     */
    private String showPlace;

    /**
     * 外键，分类ID
     */
    private Long categorieId;

    /**
     * 外键，城市ID
     */
    private String areainfoId;

    /**
     * 演出简介
     */
    private String showTitle;

    private Integer count;

    private Tareainfo tareainfo;

    private  Tcategorie tcategorie;

    public Tareainfo getTareainfo() {
        return tareainfo;
    }

    public void setTareainfo(Tareainfo tareainfo) {
        this.tareainfo = tareainfo;
    }

    public Tcategorie getTcategorie() {
        return tcategorie;
    }

    public void setTcategorie(Tcategorie tcategorie) {
        this.tcategorie = tcategorie;
    }

    /**
     * 演出状态，1:预定，2:预售，3:售票中
     */
    private Long showStatus;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date showBeginTime;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date showEndTime;

    private static final long serialVersionUID = 1L;

    public Long getShowId() {
        return showId;
    }

    public void setShowId(Long showId) {
        this.showId = showId;
    }

    public String getShowName() {
        return showName;
    }

    public void setShowName(String showName) {
        this.showName = showName;
    }

    public String getShowImg() {
        return showImg;
    }

    public void setShowImg(String showImg) {
        this.showImg = showImg;
    }


    public Double getShowMinPrice() {
        return showMinPrice;
    }

    public void setShowMinPrice(Double showMinPrice) {
        this.showMinPrice = showMinPrice;
    }

    public Double getShowMaxPrice() {
        return showMaxPrice;
    }

    public void setShowMaxPrice(Double showMaxPrice) {
        this.showMaxPrice = showMaxPrice;
    }

    public String getShowPlace() {
        return showPlace;
    }

    public void setShowPlace(String showPlace) {
        this.showPlace = showPlace;
    }

    public Long getCategorieId() {
        return categorieId;
    }

    public void setCategorieId(Long categorieId) {
        this.categorieId = categorieId;
    }

    public String getAreainfoId() {
        return areainfoId;
    }

    public void setAreainfoId(String areainfoId) {
        this.areainfoId = areainfoId;
    }

    public String getShowTitle() {
        return showTitle;
    }

    public void setShowTitle(String showTitle) {
        this.showTitle = showTitle;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public Long getShowStatus() {
        return showStatus;
    }

    public void setShowStatus(Long showStatus) {
        this.showStatus = showStatus;
    }

    public Date getShowBeginTime() {
        return showBeginTime;
    }

    public void setShowBeginTime(Date showBeginTime) {
        this.showBeginTime = showBeginTime;
    }

    public Date getShowEndTime() {
        return showEndTime;
    }

    public void setShowEndTime(Date showEndTime) {
        this.showEndTime = showEndTime;
    }
}