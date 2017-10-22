package com.th.market.controller;

import com.th.market.model.MkCategory;
import com.th.market.model.MkInventory;
import com.th.market.model.MkProduct;
import com.th.market.model.MkType;
import com.th.market.service.MkCategoryService;
import com.th.market.service.MkProductService;
import com.th.market.service.MkTypeService;
import com.th.market.vo.Page;
import com.th.market.vo.ProductVo;
import com.th.market.vo.QueryCondition;
import org.apache.commons.lang.ObjectUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * 基础的控制器,页面跳转
 * Created by tianheng on 2017/5/18.
 */
@Controller()
@RequestMapping("/base")
public class BaseController {

    @Autowired
    private MkTypeService typeService;
    @Autowired
    private MkCategoryService categoryService;
    @Autowired
    private MkProductService productService;

    @RequestMapping("/toIndex.do")
    public String toIndex() {
        return "index";
    }

    @RequestMapping("/toLogin.do")
    public String toLogin() {
        return "login";
    }

    /**
     * 管理员登录
     * @param email
     * @param pwd
     * @param model
     * @return
     */
    @RequestMapping("/adminLogin.do")
    public String adminLogin(String email, String pwd,Model model) {
        if (ObjectUtils.equals(email,"admin") && ObjectUtils.equals(pwd,"admin")) {
            return "redirect:/base/toIndex.do";
        }
        model.addAttribute("loginError","用户名或密码错误");
        return "login";
    }

    /**
     * 转到类别管理页
     * @param model
     * @return
     */
    @RequestMapping("/toCategoryManage.do")
    public String toCategoryManage(Model model) {
        List<MkType> typeList = typeService.listTypes();
        model.addAttribute("typeList",typeList);
        List<MkCategory> categoryList = categoryService.listCategories();
        model.addAttribute("categoryList",categoryList);
        return "categoryManage";
    }

    /**
     * 转到产品管理页
     * @param model
     * @return
     */
    @RequestMapping("/toProductManage.do")
    public String toProductManage(Model model, QueryCondition qc) {
        Page page = productService.listProductPagesByCondition(qc);
        Map<MkProduct,MkInventory> productMap = (Map) page.getRecordList().get(0);
        Set<Map.Entry<MkProduct,MkInventory>> entrySet = productMap.entrySet();
        List<ProductVo> productList = new ArrayList<ProductVo>();
        for (Map.Entry entry : entrySet) {
            ProductVo productVo = new ProductVo();
            BeanUtils.copyProperties(entry.getKey(),productVo);
            BeanUtils.copyProperties(entry.getValue(),productVo);
            productList.add(productVo);
        }
        model.addAttribute("productList",productList);
        List<MkCategory> categoryList = categoryService.listCategories();
        model.addAttribute("categoryList",categoryList);
        model.addAttribute("page",page);
        model.addAttribute("qc",qc);
        return "productManage";
    }

    /**
     * 转到产品添加页
     * @param model
     * @return
     */
    @RequestMapping("/toAddProduct.do")
    public String toAddProduct(Model model) {
        List<MkCategory> categoryList = categoryService.listCategories();
        model.addAttribute("categoryList",categoryList);
        return "addProduct";
    }

    @RequestMapping("/toChart.do")
    public String toChart() {

        return "chart";
    }
}
