package com.javamuk.follow.controller;


import java.util.List;
import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.javamuk.domain.Follow;
import com.javamuk.domain.Member;
import com.javamuk.domain.Product;
import com.javamuk.follow.service.FollowReadService;


@Controller
public class FollowReadController {
	
	@Inject
	private FollowReadService service;
	

	@RequestMapping(value = "/product/follow_current", method = RequestMethod.GET)
	@ResponseBody
	public int follow_current(Follow follow) {
		int result=0;
		Follow result_follow = service.follow_current(follow);
		if(result_follow==null){
			result=1;
		}else {
			result=0;
		}
		return result;	
	}

	@RequestMapping(value="/member/following",method=RequestMethod.GET)
	public String following(Follow follow,Model model,HttpSession session) {
		Member session_member = (Member) session.getAttribute("session_member");
		follow.setFollowing_mem(session_member.getMem_idx());
		List<Follow> list = service.follow_all(follow);
		model.addAttribute("following_list", list);
		return "member/following";
	}
	
	@RequestMapping(value="/member/follower",method=RequestMethod.GET)
	public String followerRead(@RequestParam("follower_mem") int mem_idx,@RequestParam("mem_nickname") String mem_nickname,Model model) {
		Product follower = new Product();
		follower.setMem_idx(mem_idx);
		List<Product> follower_product = service.follwer_read(follower);
		model.addAttribute("follower_list", follower_product);
		model.addAttribute("mem_nickname", mem_nickname);
		return "member/follower";
	}
}