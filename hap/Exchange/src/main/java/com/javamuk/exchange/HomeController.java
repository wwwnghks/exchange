package com.javamuk.exchange;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "home";
	}
	
	@RequestMapping(value = "/reply", method = RequestMethod.GET)
	public String reply() {
		return "reply";
	}
	
	@RequestMapping(value = "/member/newMember", method = RequestMethod.GET)
	public String newMemeber() {
		return "member/newMember";
	}
	
	
	
}
