package com.model;

import java.io.Serializable;

public class Products implements Serializable {
    private static final long serialVersionUID = 7819682307285579448L;

    private Long showId;
    private String showNmae;
    private String showTime;
    private String seat;
    private double price;
    private int num;
    private double subtotal;

    public String getShowNmae() {
        return showNmae;
    }

    public void setShowNmae(String showNmae) {
        this.showNmae = showNmae;
    }

    public Long getShowId() {
        return showId;
    }

    public void setShowId(Long showId) {
        this.showId = showId;
    }

    public String getShowTime() {
        return showTime;
    }

    public void setShowTime(String showTime) {
        this.showTime = showTime;
    }

    public String getSeat() {
        return seat;
    }

    public void setSeat(String seat) {
        this.seat = seat;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public double getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(double subtotal) {
        this.subtotal = subtotal;
    }
}
