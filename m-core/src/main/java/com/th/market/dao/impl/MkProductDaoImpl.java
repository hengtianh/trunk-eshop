package com.th.market.dao.impl;

import com.th.market.dao.CommonDao;
import com.th.market.dao.MkProductDao;
import com.th.market.model.MkProduct;
import com.th.market.vo.QueryCondition;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by tianheng on 2017/5/20.
 */
@Repository
public class MkProductDaoImpl extends CommonDao implements MkProductDao {

    private String ns = "com.th.market.sqlMap.MkProductMapper.";

    public void saveProduct(MkProduct product) {
        this.getSqlSession().insert(ns + "insert",product);

    }

    public MkProduct getProductByPriId(int pId) {
        MkProduct product = this.getSqlSession().selectOne(ns + "selectByPrimaryKey",pId);
        return product;
    }

    public int listProductCountByCondition(QueryCondition queryCondition) {
        int totalRecord = this.getSqlSession().selectOne(ns + "selectCountByCondition",queryCondition);
        return totalRecord;
    }

    public List<MkProduct> listProductPagesByCondition(QueryCondition queryCondition) {
        List<MkProduct> productList = this.getSqlSession().selectList(ns + "selectPageByCondition",queryCondition);
        return productList;
    }

    public List<MkProduct> listProductsByCId(int cId) {
        List<MkProduct> productList = this.getSqlSession().selectList(ns + "selectByCId",cId);
        return productList;
    }

    public List<MkProduct> listProducts() {
        List<MkProduct> productList = this.getSqlSession().selectList(ns + "selectAll");
        return productList;
    }

    public void updateProduct(MkProduct product) {
        this.getSqlSession().update(ns + "updateByPrimaryKeySelective",product);
    }

    public void deleteProduct(int pId) {
        this.getSqlSession().delete(ns + "deleteByPrimaryKey",pId);
    }
}
