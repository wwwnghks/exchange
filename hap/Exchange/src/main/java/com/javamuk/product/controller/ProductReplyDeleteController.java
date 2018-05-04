package com.javamuk.product.controller;



import javax.inject.Inject;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.javamuk.domain.Product_Reply;
import com.javamuk.product.service.ProductReplyDeleteService;


@Controller
public class ProductReplyDeleteController {
	

	@Inject
	private ProductReplyDeleteService service;

	
	@RequestMapping(value="/reply/delete",method = RequestMethod.POST)
	@ResponseBody
	public int replydelete(Product_Reply product_Reply) {
		int result=service.deleteReply(product_Reply);
		return result;
		
	}
	
}