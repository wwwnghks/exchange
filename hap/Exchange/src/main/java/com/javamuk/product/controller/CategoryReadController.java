package com.javamuk.product.controller;


import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javamuk.domain.Brand;
import com.javamuk.domain.First_Category;
import com.javamuk.domain.Product;
import com.javamuk.domain.Second_Category;
import com.javamuk.product.service.MyProductCreateService;
import com.javamuk.product.service.MyProductReadService;


@Controller
public class CategoryReadController {

   @Inject
   private MyProductCreateService service;
   
   @Inject
   private MyProductReadService service1;
   
   @RequestMapping(value = "/Mcategory01", method = RequestMethod.GET)
   @ResponseBody
   public JSONObject Mcategory01() {
      List<First_Category> list = service.readFirst_category();
      HashMap<String,Object> map=new HashMap<String,Object>();
      map.put("first_Category", list);
      JSONObject jsonObject = new JSONObject();
      jsonObject.putAll(map);
      return jsonObject;
   }
   
   @RequestMapping(value = "/Mcategory02", method = RequestMethod.GET)
   @ResponseBody
   public JSONObject Mcategory02(First_Category first_Category) {
      List<Second_Category> list = service.readSecond_category(first_Category);
      HashMap<String,Object> map=new HashMap<String,Object>();
      map.put("second_Category", list);
      JSONObject jsonObject = new JSONObject();
      jsonObject.putAll(map);
      return jsonObject;
   }
   
   @RequestMapping(value = "/brand", method = RequestMethod.GET)
   @ResponseBody
   public JSONObject second_Category(Second_Category second_Category) {
      List<Brand> list = service.readBrand(second_Category);
      HashMap<String,Object> map=new HashMap<String,Object>();
      map.put("brand_category", list);
      JSONObject jsonObject = new JSONObject();
      jsonObject.putAll(map);
      return jsonObject;
   }
   
   @RequestMapping(value="/product/productRead", method = RequestMethod.GET)
   public String menuProduct(@RequestParam("product") String Mproduct, Model model) {
      Product menu_product = new Product();
      menu_product.setFir_name(Mproduct);      
      List<Product> menu_product_list = service1.menuProduct(menu_product);      
      model.addAttribute("menu_product_list", menu_product_list);
      model.addAttribute("Mproduct", Mproduct);
      return "product/productRead";
   }

}