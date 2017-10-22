package com.th.market.model;

import java.math.BigDecimal;

public class MkProduct {
    private Integer pId;

    private BigDecimal cId;

    private String pName;

    private String pDesc;

    private String pImg;

    private BigDecimal pPrice;

    private Double pCount;

    private String pComment;

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
        this.pName = pName == null ? null : pName.trim();
    }

    public String getpDesc() {
        return pDesc;
    }

    public void setpDesc(String pDesc) {
        this.pDesc = pDesc == null ? null : pDesc.trim();
    }

    public String getpImg() {
        return pImg;
    }

    public void setpImg(String pImg) {
        this.pImg = pImg == null ? null : pImg.trim();
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
        this.pComment = pComment == null ? null : pComment.trim();
    }
}