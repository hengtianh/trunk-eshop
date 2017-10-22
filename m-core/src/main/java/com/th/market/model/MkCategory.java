package com.th.market.model;

import java.math.BigDecimal;

public class MkCategory {
    private int cId;

    private BigDecimal tId;

    private String cName;

    private String cDesc;

    public int getcId() {
        return cId;
    }

    public void setcId(int cId) {
        this.cId = cId;
    }

    public BigDecimal gettId() {
        return tId;
    }

    public void settId(BigDecimal tId) {
        this.tId = tId;
    }

    public String getcName() {
        return cName;
    }

    public void setcName(String cName) {
        this.cName = cName == null ? null : cName.trim();
    }

    public String getcDesc() {
        return cDesc;
    }

    public void setcDesc(String cDesc) {
        this.cDesc = cDesc == null ? null : cDesc.trim();
    }
}