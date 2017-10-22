package com.th.market.model;

import java.math.BigDecimal;

public class MkInventoryKey {
    private int pId;

    private int inventoryId;

    public MkInventoryKey() {
    }

    public MkInventoryKey(int pId) {
        this.pId = pId;
    }
    public MkInventoryKey(int pId, int inventoryId) {
        this.pId = pId;
        this.inventoryId = inventoryId;
    }

    public int getpId() {
        return pId;
    }

    public void setpId(int pId) {
        this.pId = pId;
    }

    public int getInventoryId() {
        return inventoryId;
    }

    public void setInventoryId(int inventoryId) {
        this.inventoryId = inventoryId;
    }
}