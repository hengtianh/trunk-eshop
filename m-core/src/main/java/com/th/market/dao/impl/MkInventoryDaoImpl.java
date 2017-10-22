package com.th.market.dao.impl;

import com.th.market.dao.CommonDao;
import com.th.market.dao.MkInventoryDao;
import com.th.market.model.MkInventory;
import com.th.market.model.MkInventoryKey;
import org.springframework.stereotype.Repository;

/**
 * Created by tianheng on 2017/5/20.
 */
@Repository
public class MkInventoryDaoImpl extends CommonDao implements MkInventoryDao {

    private String ns = "com.th.market.sqlMap.MkInventoryMapper.";

    public void saveInventory(MkInventory inventory) {
        this.getSqlSession().insert(ns + "insert",inventory);
    }

    public void updateInventory(MkInventory inventory) {
        this.getSqlSession().update(ns + "updateByPrimaryKeySelective",inventory);
    }

    public int getInventoryKey() {
        int key = this.getSqlSession().selectOne(ns + "countInventoryKey");
        return key;
    }

    public MkInventory getInventoryByProId(MkInventoryKey inventoryKey) {
        MkInventory inventory = this.getSqlSession().selectOne(ns + "selectByProductKey",inventoryKey);
        return inventory;
    }

    public void deleteInventoryByProId(MkInventoryKey inventoryKey) {
        this.getSqlSession().delete(ns + "deleteByPrimaryKey",inventoryKey);
    }
}
