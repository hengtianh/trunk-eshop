package com.th.market.dao.impl;

import com.th.market.dao.CommonDao;
import com.th.market.dao.MkUserDao;
import com.th.market.model.MkUser;
import com.th.market.model.MkUserExample;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * Created by tianheng on 2017/5/15.
 */
@Repository
public class MkUserDaoImpl extends CommonDao implements MkUserDao {
    private String ns = "com.th.market.sqlMap.MkUserMapper.";

    public void saveUser(MkUser user) {
        this.getSqlSession().insert(ns + "insert", user);
    }

    public MkUser getUser(String userName, String pwd) {
        MkUserExample example = new MkUserExample();
        MkUserExample.Criteria criteria = example.createCriteria();
        criteria.andUsernameEqualTo(userName);
        criteria.andPwdEqualTo(pwd);
        MkUser mkUser = this.getSqlSession().selectOne(ns + "selectByExample", example);
        return mkUser;
    }

    public void updateUser(MkUser user) {
        this.getSqlSession().update(ns + "updateByPrimaryKeySelective", user);
    }

    public void deleteUser(Long id) {
        this.getSqlSession().delete(ns + "deleteByPrimaryKey", id);
    }
}
