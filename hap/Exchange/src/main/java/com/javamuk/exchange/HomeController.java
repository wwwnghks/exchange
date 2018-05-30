package com.javamuk.exchange;




import java.util.List;
import javax.inject.Inject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.javamuk.domain.Product;
import com.javamuk.product.service.MyProductReadService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Inject
	private MyProductReadService service;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		List<Product> list = service.productReadAll();
		model.addAttribute("allProduct", list);
		return "home";
	}

	
	@RequestMapping(value = "/member/newMember", method = RequestMethod.GET)
	public String newMemeber() {
		return "member/newMember";
	}
	
	
	
}
