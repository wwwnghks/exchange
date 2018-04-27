package com.javamuk.product.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javamuk.domain.Product_Reply;
import com.javamuk.product.service.ProductReplyCreateService;


@Controller
public class ProductReplyCreateController {

	@Inject
	private ProductReplyCreateService service;
	

	
	@RequestMapping(value = "/reply/write", method = RequestMethod.POST)
	@ResponseBody
	public int replycreate(Product_Reply product_Reply) {
		int result = service.createReply(product_Reply);
		return result;
	}
	
	@RequestMapping(value = "/reply/rewrite", method = RequestMethod.POST)
	@ResponseBody
	public int rewritecreate(Product_Reply product_Reply) {
		int result = service.createReWrite(product_Reply);
		return result;
	}
	

	
}
