package com.javamuk.product.controller;

import java.util.HashMap;
import java.util.List;
import javax.inject.Inject;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javamuk.domain.Product;
import com.javamuk.domain.Product_Reply;
import com.javamuk.product.service.ProductReplyReadService;

@Controller
public class ProductReplyReadController {
	

	@Inject
	private ProductReplyReadService service;

	
/*	@RequestMapping(value="/reply/read",method = RequestMethod.GET)
	@ResponseBody
	public JSONObject replyread(Model model) {
		List<Product_Reply> list = service.readReply();
		HashMap<String,Object> map=new HashMap<String,Object>();
		map.put("replyList", list);
		JSONObject jsonObject = new JSONObject();
		jsonObject.putAll(map);
		return jsonObject;
	}*/
	
	@RequestMapping(value="/reply/read",method = RequestMethod.GET)
	@ResponseBody
	public JSONObject replyread(Model model, Product product) {
		List<Product_Reply> list = service.readReply(product);
		HashMap<String,Object> map=new HashMap<String,Object>();
		map.put("replyList", list);
		JSONObject jsonObject = new JSONObject();
		jsonObject.putAll(map);
		return jsonObject;
	}
	
}
