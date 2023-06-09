package asm.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import asm.service.CookieService;
import asm.service.ParamService;
import asm.service.SessionService;

@Controller
@RequestMapping("/account")
public class AccountController {

	@Autowired
	CookieService cookieService;
	@Autowired
	ParamService paramService;
	@Autowired
	SessionService sessionService;
	@Autowired
	HttpServletRequest request;
	@Autowired
	HttpServletResponse response;
	
	@GetMapping("/login")
	public String showLogin() {
		return "login1";
	}



//	@PostMapping("/checkLogin")
//	public String checkLogin(){
//		return "shop";
//	}
	
}
