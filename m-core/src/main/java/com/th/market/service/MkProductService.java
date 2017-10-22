package com.th.market.service;

import com.th.market.model.MkInventory;
import com.th.market.model.MkProduct;
import com.th.market.vo.Page;
import com.th.market.vo.QueryCondition;

import java.util.List;
import java.util.Map;

/**
 * Created by tianheng on 2017/5/20.
 */
public interface MkProductService {
    void saveProduct(MkProduct product, int num);

    MkProduct getProductByPriId(int pId);

    Map<MkProduct,MkInventory> listProducts();

    void updateProduct(MkProduct product, int num);

    void deleteProduct(int pId);

    Page listProductPagesByCondition(QueryCondition queryCondition);
}
