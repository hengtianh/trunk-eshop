package com.th.market.service.test;

import com.th.market.model.MkUser;
import com.th.market.service.MkUserService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Created by tianheng on 2017/5/15.
 */
public class MkUserServiceImplTest {

    ApplicationContext ctx = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");

    @Test
    public void saveUser() throws Exception {
        MkUserService userService = (MkUserService) ctx.getBean("mkUserServiceImpl");
        MkUser user = new MkUser();
        user.setUsername("zhangsan");
        user.setPwd("123");
        user.setAddress("10#");
        user.setEmail("1123@");
        user.setPhone("123");
        userService.saveUser(user);
    }

    @Test
    public void getUser() throws Exception {
        MkUserService userService = (MkUserService) ctx.getBean("mkUserServiceImpl");
        MkUser u = userService.getUser("zhangsan","123");
        System.out.println(u.toString());
    }

    @Test
    public void updateUser() throws Exception {
        MkUserService userService = (MkUserService) ctx.getBean("mkUserServiceImpl");
        MkUser u = userService.getUser("zhangsan","123");
        u.setPwd("1234");
        userService.updateUser(u);
    }

    @Test
    public void deleteUser() throws Exception {
        MkUserService userService = (MkUserService) ctx.getBean("mkUserServiceImpl");
        userService.deleteUser(3L);
    }

}