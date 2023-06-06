package asm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@GetMapping("index")
	public String Index() {	
		return "index";
	}
	@RequestMapping("/about")
	public String about() {
		return "about";
	}
	@RequestMapping("/shop")
	public String shop() {
		return "shop";
	}
	@RequestMapping("/shop-single")
	public String shopSingler() {
		return "shop-single";
	}
	@RequestMapping("/contact")
	public String contact() {
		return "contact";
	}
	@RequestMapping("/login")
	public String login() {
		return "login1";
	}
	@RequestMapping("/cart")
	public String cart() {
		return "cart";
	}
}
