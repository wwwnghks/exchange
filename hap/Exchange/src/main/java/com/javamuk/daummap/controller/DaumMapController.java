package com.javamuk.daummap.controller;


import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javamuk.daummap.service.DaumMapService;
import com.javamuk.domain.Member;
import com.javamuk.domain.Product;



@Controller
public class DaumMapController {

	@Inject
	private DaumMapService daumMapService;
	
	
	@RequestMapping(value= "/daumMap/daumMap", method = RequestMethod.GET)
	public String daumMap(HttpSession session, @RequestParam(name="pro_location") String pro_location, Model model, Product product)  {
			
		Member member = (Member)session.getAttribute("session_member");
		String[] address = member.getMem_address().split("\\s");		
		String afterAddress = address[2].concat(address[3]);
		
		String[] location = pro_location.split("\\s");
		String afterLocation = location[2].concat(location[3]);
		
		
		model.addAttribute("afterAddress", afterAddress);
		model.addAttribute("afterLocation", afterLocation);
		
		return "daumMap/daumMapCreate";		
		
	}



}