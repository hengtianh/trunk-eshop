package com.th.market.dao;

import com.th.market.model.MkCategory;

import java.util.List;

/**
 * Created by tianheng on 2017/5/16.
 */
public interface MkCategoryDao {
    void saveCategory(MkCategory category);

    List<MkCategory> listCategories();

    MkCategory getCategory(int cId);

    void updateCategory(MkCategory category);

    void deleteCategory(int cId);
}
