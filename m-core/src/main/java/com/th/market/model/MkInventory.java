package com.th.market.model;

public class MkInventory extends MkInventoryKey {
    private MkInventoryKey mkInventoryKey;
    
    private int num;

    private int saled;

    public MkInventory() {}

    public MkInventory(MkInventoryKey mkInventoryKey, int num) {
        this.mkInventoryKey = mkInventoryKey;
        this.num = num;
    }
    
    public void setMkInventoryKey(MkInventoryKey mkInventoryKey) {
        this.mkInventoryKey = mkInventoryKey;
    }
    
    public MkInventoryKey getMkInventoryKey() {
        return mkInventoryKey;
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