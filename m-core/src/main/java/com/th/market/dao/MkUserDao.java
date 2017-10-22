package com.th.market.dao;

import com.th.market.model.MkUser;

/**
 * Created by tianheng on 2017/5/15.
 */
public interface MkUserDao {
    void saveUser(MkUser user);

    MkUser getUser(String userName, String pwd);

    void updateUser(MkUser user);

    void deleteUser(Long id);
}
