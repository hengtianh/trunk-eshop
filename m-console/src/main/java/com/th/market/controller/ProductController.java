package com.th.market.controller;

import com.google.gson.Gson;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.WebResource;
import com.th.market.model.MkCategory;
import com.th.market.model.MkInventory;
import com.th.market.model.MkInventoryKey;
import com.th.market.model.MkProduct;
import com.th.market.service.MkCategoryService;
import com.th.market.service.MkInventoryService;
import com.th.market.service.MkProductService;
import com.th.market.utils.MarketUtils;
import com.th.market.vo.ProductVo;
import org.apache.commons.lang.time.DateFormatUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.io.Writer;
import java.util.*;

/**
 * Created by tianheng on 2017/5/19.
 */
@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    private MkProductService productService;
    @Autowired
    private MkCategoryService categoryService;
    @Autowired
    private MkInventoryService inventoryService;

    /**
     * 保存产品
     * @param product
     * @param num
     * @return
     */
    @RequestMapping("/saveProduct.do")
    public String saveProduct(MkProduct product, int num) {
        productService.saveProduct(product,num);
        return "redirect:/base/toProductManage.do";
    }

    /**
     * 图片预上传,使用jersey实现跨服务器的文件上传
     * @param request
     * @param out
     * @throws IOException
     */
    @RequestMapping("/uploadImg.do")
    public void uploadImg(HttpServletRequest request, Writer out) throws IOException {
        //转为复杂request
        MultipartHttpServletRequest mr = (MultipartHttpServletRequest) request;
        //获得输入文件的名称，和文件
        Iterator<String> it = mr.getFileNames();
        String inputFileName = it.next();
        MultipartFile mf = mr.getFile(inputFileName);
        String originalFilename = mf.getOriginalFilename();
        //获得文件的字节流数据
        byte[] bs = mf.getBytes();
        //设置上传文件的名称
        String filename = DateFormatUtils.format(new Date(),"yyyyMMddHHmmssSSS").toString();
        Random random = new Random();
        for (int i = 0; i < 3; i++) {
            filename = filename + random.nextInt(10);
        }
        //后缀名
        String suffix = originalFilename.substring(originalFilename.lastIndexOf("."));
        //绝对路径显示图片
        String realPath = MarketUtils.getProp("file_path") + "/upload/" + filename + suffix;
        //相对路径保存到数据库
        String relativePath = "/upload/" + filename + suffix;
        //创建jersey client客户端
        Client client = Client.create();
        WebResource webResource = client.resource(realPath);
        webResource.put(bs);
        //给客户端响应
        Gson gson = new Gson();
        Map map = new HashMap();
        map.put("realPath",realPath);
        map.put("relativePath",relativePath);
        String result = gson.toJson(map);
        //System.out.println(result);
        out.write(result);
    }

    /**
     * 删除预上传的图片，使用jersey实现
     * @param src
     */
    @RequestMapping("/deleteUploadedImg.do")
    public void deleteUploadedImg(String src) {
        Client client = Client.create();
        WebResource webResource = client.resource(src);
        webResource.delete();
    }

    /**
     * 编辑产品信息
     * @param pId
     * @param model
     * @return
     */
    @RequestMapping("/editProduct.do")
    public String editProduct(int pId, Model model) {
        //查询数量和已售量
        MkInventoryKey inventoryKey = new MkInventoryKey(pId);
        MkInventory inventory = inventoryService.getInventoryByProId(inventoryKey);

        MkProduct product = productService.getProductByPriId(pId);
        //封装界面值对象
        ProductVo productVo = new ProductVo();
        BeanUtils.copyProperties(product,productVo);
        BeanUtils.copyProperties(inventory,productVo);
        model.addAttribute("product",productVo);

        List<MkCategory> categoryList = categoryService.listCategories();
        model.addAttribute("categoryList",categoryList);
        return "editProduct";
    }

    /**
     * 更新产品信息
     * @param product
     * @param num
     * @return
     */
    @RequestMapping("/updateProduct.do")
    public String updateProduct(MkProduct product, int num) {
        productService.updateProduct(product,num);
        return "redirect:/base/toProductManage.do";
    }

    /**
     * 删除产品信息
     * @param pId
     * @return
     */
    @RequestMapping("/deleteProduct.do")
    public String deleteProduct(int pId) {
        productService.deleteProduct(pId);
        return "redirect:/base/toProductManage.do";
    }

}
