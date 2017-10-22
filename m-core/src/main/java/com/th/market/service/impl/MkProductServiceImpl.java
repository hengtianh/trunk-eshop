package com.th.market.service.impl;

import com.th.market.dao.MkInventoryDao;
import com.th.market.dao.MkProductDao;
import com.th.market.model.MkInventory;
import com.th.market.model.MkInventoryKey;
import com.th.market.model.MkProduct;
import com.th.market.service.MkProductService;
import com.th.market.vo.Page;
import com.th.market.vo.QueryCondition;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by tianheng on 2017/5/20.
 */
@Service
public class MkProductServiceImpl implements MkProductService {

    @Autowired
    private MkProductDao productDao;

    @Autowired
    private MkInventoryDao inventoryDao;

    public void saveProduct(MkProduct product, int num) {
        //保存产品信息
        productDao.saveProduct(product);
        //保存库存信息
        //查询库存的编号
        int inventoryId = inventoryDao.getInventoryKey();
        MkInventoryKey mkInventoryKey = new MkInventoryKey(product.getpId(),inventoryId);
        MkInventory inventory = new MkInventory(mkInventoryKey,num);
        inventoryDao.saveInventory(inventory);
    }

    public MkProduct getProductByPriId(int pId) {
        //查询产品信息
        MkProduct product = productDao.getProductByPriId(pId);
        return product;
    }

    public Map<MkProduct,MkInventory> listProducts() {
        //查询产品集合
        List<MkProduct> productList = productDao.listProducts();
        //查询库存信息
        Map<MkProduct,MkInventory> map = new HashMap<MkProduct, MkInventory>();
        MkInventoryKey inventoryKey = null;
        for (MkProduct p : productList) {
            inventoryKey = new MkInventoryKey(p.getpId());
            MkInventory inventory = inventoryDao.getInventoryByProId(inventoryKey);
            map.put(p,inventory);
        }
        return map;
    }

    public void updateProduct(MkProduct product, int num) {
        //更新产品信息
        productDao.updateProduct(product);
        //更新库存信息
        MkInventoryKey inventoryKey = new MkInventoryKey(product.getpId());
        MkInventory inventory = new MkInventory(inventoryKey,num);
        inventoryDao.updateInventory(inventory);
    }

    public Page listProductPagesByCondition(QueryCondition queryCondition) {

        //条件查询记录数
        if (queryCondition == null) {
            queryCondition = new QueryCondition();
        }
        if (queryCondition.getCurrentPage() == null) {
            queryCondition.setCurrentPage(1);
        }
        //条件查询分页数据
        Page page = new Page(queryCondition.getCurrentPage());
        //设置当前页
        //page.setCurrentPage(queryCondition.getCurrentPage());
        //设置查询的起始和终止记录数
        int totalRecord = productDao.listProductCountByCondition(queryCondition);
        page.setTotalRecord(totalRecord);
        queryCondition.setStartRecord(page.getStartRecord());
        queryCondition.setEndRecord(page.getEndRecord());

        List<MkProduct> productList = productDao.listProductPagesByCondition(queryCondition);
        //查询库存信息
        Map<MkProduct,MkInventory> map = new HashMap<MkProduct, MkInventory>();
        MkInventoryKey inventoryKey = null;
        for (MkProduct p : productList) {
            inventoryKey = new MkInventoryKey(p.getpId());
            MkInventory inventory = inventoryDao.getInventoryByProId(inventoryKey);
            map.put(p,inventory);
        }
        //return map;
        List list = new ArrayList();
        list.add(map);
        page.setRecordList(list);
        return page;
    }

    public void deleteProduct(int pId) {
        //删除库存信息
        MkInventoryKey inventoryKey = new MkInventoryKey(pId);
        inventoryDao.deleteInventoryByProId(inventoryKey);
        //删除产品信息
        productDao.deleteProduct(pId);

    }
}
