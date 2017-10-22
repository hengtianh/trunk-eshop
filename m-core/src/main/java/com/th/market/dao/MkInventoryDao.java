package com.th.market.dao;

import com.th.market.model.MkInventory;
import com.th.market.model.MkInventoryKey;

/**
 * Created by tianheng on 2017/5/20.
 */
public interface MkInventoryDao {
    void saveInventory(MkInventory inventory);

    void updateInventory(MkInventory inventory);

    int getInventoryKey();

    MkInventory getInventoryByProId(MkInventoryKey inventoryKey);

    void deleteInventoryByProId(MkInventoryKey inventoryKey);
}
