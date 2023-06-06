package asm.controller;

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

	@GetMapping("/login")
	public String getLogin() {
		return "login1";
	}

	@PostMapping("/login")
	public String postLogin() {
		// Get parameter use param service
		String username = paramService.getString("username", "");
		String password = paramService.getString("password", "");
		boolean remember = paramService.getBoolean("remember", false);
		// Save username into session
		sessionService.set("username", username);
		// Save username and password into cookie
		if((username.equals("poly")) && password.equals("123")) {
			
			if(remember) {
				cookieService.add("username", username, 10);
				cookieService.add("password", password, 10);
			}else {
				cookieService.remove("username");
				cookieService.remove("password");
			}	
		}
		
		return "login1";
	}

	
	
}
