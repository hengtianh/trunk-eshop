package com.th.market.service.test;

import com.th.market.service.MkCategoryService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import static org.junit.Assert.*;

/**
 * Created by tianheng on 2017/5/16.
 */
public class MkCategoryServiceImplTest {

    ApplicationContext ctx = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");

    @Test
    public void listCategories() throws Exception {
        MkCategoryService categoryService = (MkCategoryService) ctx.getBean("mkCategoryServiceImpl");
        System.out.println(categoryService.listCategories());
    }

}