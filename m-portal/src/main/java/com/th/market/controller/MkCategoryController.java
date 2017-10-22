package com.th.market.controller;

import com.th.market.model.MkCategory;
import com.th.market.service.MkCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by tianheng on 2017/5/16.
 */
@Controller
@RequestMapping("/category")
public class MkCategoryController {

    @Autowired
    private MkCategoryService categoryService;

    @RequestMapping("/toIndex.do")
    public String toIndex(Model model) {
        List<MkCategory> categoryList = categoryService.listCategories();
        model.addAttribute("categoryList",categoryList);
        return "index";
    }
}
