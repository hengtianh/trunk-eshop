package com.th.market.service.impl;

import com.th.market.dao.MkCategoryDao;
import com.th.market.dao.MkProductDao;
import com.th.market.model.MkCategory;
import com.th.market.model.MkProduct;
import com.th.market.service.MkCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by tianheng on 2017/5/16.
 */
@Service
public class MkCategoryServiceImpl implements MkCategoryService {

    @Autowired
    private MkCategoryDao categoryDao;

    @Autowired
    private MkProductDao productDao;

    public MkCategory getCategory(int cId) {
        return categoryDao.getCategory(cId);
    }

    public void deleteCategory(int[] cIds) {
        //对数组中的每个cid进行删除
        if (cIds != null && cIds.length > 0) {
            for (int cId: cIds) {
                //对每个类别的产品删除后再删除类别，完整性约束
                List<MkProduct> productList = productDao.listProductsByCId(cId);
                for (MkProduct product : productList) {
                    productDao.deleteProduct(product.getpId());
                }
                categoryDao.deleteCategory(cId);
            }
        }
    }

    public void updateCategory(MkCategory category) {
        categoryDao.updateCategory(category);
    }

    public void saveCategory(MkCategory category) {
        categoryDao.saveCategory(category);
    }

    public List<MkCategory> listCategories() {
        List<MkCategory> categoryList = categoryDao.listCategories();
        return categoryList;
    }
}
