package com.th.market.dao;

import com.th.market.model.MkProduct;
import com.th.market.vo.QueryCondition;

import java.util.List;

/**
 * Created by tianheng on 2017/5/20.
 */
public interface MkProductDao {
    void saveProduct(MkProduct product);

    MkProduct getProductByPriId(int pId);

    List<MkProduct> listProducts();

    void updateProduct(MkProduct product);

    void deleteProduct(int pId);

    List<MkProduct> listProductsByCId(int cId);

    List<MkProduct> listProductPagesByCondition(QueryCondition queryCondition);

    int listProductCountByCondition(QueryCondition queryCondition);
}
