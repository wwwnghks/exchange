package com.javamuk.product.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javamuk.domain.Follow;
import com.javamuk.product.service.FollowDeleteService;


@Controller
public class FollowDeleteController {
	
	@Inject
	private FollowDeleteService service;
	
	@RequestMapping(value = "/product/follow_delete", method = RequestMethod.GET)
	@ResponseBody
	public int follow_delete(Follow follow) {
		int result = service.follow_delete(follow);
		return result;
	}
	

}