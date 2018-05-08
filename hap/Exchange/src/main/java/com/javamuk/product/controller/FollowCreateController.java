package com.javamuk.product.controller;

import javax.inject.Inject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.javamuk.domain.Follow;
import com.javamuk.product.service.FollowCreateService;


@Controller
public class FollowCreateController {
	
	@Inject
	private FollowCreateService service;
	

	@RequestMapping(value = "/product/follow", method = RequestMethod.GET)
	@ResponseBody
	public int follow(Follow follow) {
		int result = service.follow_create(follow);
		return result;
	}
	

}