package com.th.market.service.impl;

import com.th.market.dao.MkInventoryDao;
import com.th.market.model.MkInventory;
import com.th.market.model.MkInventoryKey;
import com.th.market.service.MkInventoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by tianheng on 2017/5/21.
 */
@Service
public class MkInventoryServiceImpl implements MkInventoryService {

    @Autowired
    private MkInventoryDao inventoryDao;

    public void saveInventory(MkInventory inventory) {

    }

    public void updateInventory(MkInventory inventory) {

    }

    /*public int getInventoryKey() {
        return 0;
    }*/

    public MkInventory getInventoryByProId(MkInventoryKey inventoryKey) {
        MkInventory inventory = inventoryDao.getInventoryByProId(inventoryKey);
        return inventory;
    }
}
