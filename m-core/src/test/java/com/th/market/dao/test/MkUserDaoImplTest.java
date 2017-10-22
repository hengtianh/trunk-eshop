package com.th.market.dao.test;

import com.th.market.model.MkUser;
import org.junit.Test;

/**
 * Created by tianheng on 2017/5/15.
 */
public class MkUserDaoImplTest {
    @Test
    public void saveUser() throws Exception {
        MkUser user = new MkUser();
        user.setUsername("zhangsan");
        user.setPwd("123");
    }

    @Test
    public void getUser() throws Exception {
    }

    @Test
    public void updateUser() throws Exception {
    }

    @Test
    public void deleteUser() throws Exception {
    }

}