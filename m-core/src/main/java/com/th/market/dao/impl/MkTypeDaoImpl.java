package com.th.market.dao.impl;

import com.th.market.dao.CommonDao;
import com.th.market.dao.MkTypeDao;
import com.th.market.model.MkType;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by tianheng on 2017/5/16.
 */
@Repository
public class MkTypeDaoImpl extends CommonDao implements MkTypeDao {

    private String ns = "com.th.market.sqlMap.MkTypeMapper.";

    public void saveType(MkType type) {
        this.getSqlSession().insert(ns + "insert",type);
    }

    public List<MkType> listTypes() {
        List<MkType> mkTypeList = this.getSqlSession().selectList(ns + "selectAll");
        return mkTypeList;
    }
}
