package com.th.market.service.impl;

import com.th.market.dao.MkUserDao;
import com.th.market.model.MkUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by tianheng on 2017/5/15.
 */
@Service
public class MkUserServiceImpl implements com.th.market.service.MkUserService {

    @Autowired
    private MkUserDao userDao;

    public void saveUser(MkUser user) {
        userDao.saveUser(user);
    }

    public MkUser getUser(String userName, String pwd) {
        MkUser mkUser = userDao.getUser(userName,pwd);
        return mkUser;
    }

    public void updateUser(MkUser user) {
        userDao.updateUser(user);
    }

    public void deleteUser(Long id) {
        userDao.deleteUser(id);
    }
}
