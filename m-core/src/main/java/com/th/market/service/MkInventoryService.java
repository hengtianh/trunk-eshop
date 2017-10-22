package com.th.market.service;

import com.th.market.model.MkInventory;
import com.th.market.model.MkInventoryKey;

/**
 * Created by tianheng on 2017/5/21.
 */
public interface MkInventoryService {
    void saveInventory(MkInventory inventory);

    void updateInventory(MkInventory inventory);

    /*int getInventoryKey();*/

    MkInventory getInventoryByProId(MkInventoryKey inventoryKey);
}
