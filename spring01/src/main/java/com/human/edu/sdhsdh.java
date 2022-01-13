package com.human.edu;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class sdhsdh {
	@RequestMapping(value = "/hi", method = RequestMethod.GET)
	public String insert(Locale locale, Model model) {
		model.addAttribute("serverTime", "Shin Dong Hun2" );
		
		return "home"; 
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		model.addAttribute("ID", "sdhsdh" );
		model.addAttribute("password", "123123" );
		
		return "login"; 
	}

}
