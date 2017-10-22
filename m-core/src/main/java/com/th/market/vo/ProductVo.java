package com.th.market.vo;

import java.math.BigDecimal;

/**
 * Created by tianheng on 2017/5/21.
 */
public class ProductVo {
    private int pId;

    private BigDecimal cId;

    private String pName;

    private String pDesc;

    private String pImg;

    private BigDecimal pPrice;

    private Double pCount;

    private String pComment;

    private int num;

    private int saled;

    public int getpId() {
        return pId;
    }

    public void setpId(int pId) {
        this.pId = pId;
    }

    public BigDecimal getcId() {
        return cId;
    }

    public void setcId(BigDecimal cId) {
        this.cId = cId;
    }

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName;
    }

    public String getpDesc() {
        return pDesc;
    }

    public void setpDesc(String pDesc) {
        this.pDesc = pDesc;
    }

    public String getpImg() {
        return pImg;
    }

    public void setpImg(String pImg) {
        this.pImg = pImg;
    }

    public BigDecimal getpPrice() {
        return pPrice;
    }

    public void setpPrice(BigDecimal pPrice) {
        this.pPrice = pPrice;
    }

    public Double getpCount() {
        return pCount;
    }

    public void setpCount(Double pCount) {
        this.pCount = pCount;
    }

    public String getpComment() {
        return pComment;
    }

    public void setpComment(String pComment) {
        this.pComment = pComment;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public int getSaled() {
        return saled;
    }

    public void setSaled(int saled) {
        this.saled = saled;
    }
}