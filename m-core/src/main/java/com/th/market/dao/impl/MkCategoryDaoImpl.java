package com.th.market.dao.impl;

import com.th.market.dao.CommonDao;
import com.th.market.dao.MkCategoryDao;
import com.th.market.model.MkCategory;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import java.util.List;

/**
 * Created by tianheng on 2017/5/16.
 */
@Repository
public class MkCategoryDaoImpl extends CommonDao implements MkCategoryDao {

    private String ns = "com.th.market.sqlMap.MkCategoryMapper.";

    public void saveCategory(MkCategory category) {
        this.getSqlSession().insert(ns + "insert",category);
    }

    public void deleteCategory(int cId) {
        this.getSqlSession().delete(ns + "deleteByPrimaryKey",cId);
    }

    public void updateCategory(MkCategory category) {
        this.getSqlSession().update(ns + "updateByPrimaryKeySelective",category);
    }

    public MkCategory getCategory(int cId) {
        return this.getSqlSession().selectOne(ns + "selectByPrimaryKey",cId);
    }

    public List<MkCategory> listCategories() {
        List<MkCategory> mkCategoryList = this.getSqlSession().selectList(ns + "selectAll");
        return mkCategoryList;
    }
}
