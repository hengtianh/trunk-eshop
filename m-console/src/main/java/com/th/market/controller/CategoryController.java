package com.th.market.controller;

import com.th.market.model.MkCategory;
import com.th.market.service.MkCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by tianheng on 2017/5/18.
 */
@Controller
@RequestMapping("/category")
public class CategoryController {

    @Autowired
    private MkCategoryService categoryService;

    @RequestMapping("/saveCategory.do")
    public String saveCategory(MkCategory category) {
        categoryService.saveCategory(category);
        return "redirect:/base/toCategoryManage.do";
    }

    @RequestMapping("/editCategory.do")
    public String editCategory(Integer cId, Model model) {
        MkCategory category = categoryService.getCategory(cId);
        model.addAttribute("category",category);
        return "editCategory";
    }

    @RequestMapping("/updateCategory.do")
    public String updateCategory(MkCategory category) {
        categoryService.updateCategory(category);
        return "redirect:/base/toCategoryManage.do";
    }

    @RequestMapping("/deleteCategory.do")
    public String deleteCategory(int[] cIds) {
        categoryService.deleteCategory(cIds);
        return "redirect:/base/toCategoryManage.do";
    }

}
