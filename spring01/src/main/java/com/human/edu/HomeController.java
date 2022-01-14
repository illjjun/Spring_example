package com.human.edu;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	public String home(Locale locale, Model model) {
//		logger.info("Welcome home! The client locale is {}.", locale);
//		
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//		
//		String formattedDate = dateFormat.format(date);
//		
//		model.addAttribute("serverTime", formattedDate );
//		
//		return "home"; 
//		
//	}
//	@RequestMapping(value = "/say", method = RequestMethod.GET)
//	public String sayhome(Locale locale, Model model) {
//		logger.info("Welcome home! The client locale is {}.", locale);
//		
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//		
//		String formattedDate = dateFormat.format(date);
//		
//		model.addAttribute("serverTime", "Shin Dong Hun1" );
//		
//		return "home"; 
//	
//}
	@RequestMapping("/")
	public String home(Locale locale, Model model) {
		return "home"; 
	}
	@RequestMapping("/login")
	public String login(Locale locale, Model model) {
		return "login"; 
	}
	@RequestMapping("/login_check")
	public String login_check(HttpServletRequest hsr,Locale locale, Model model) {
		String userid=hsr.getParameter("userid");
		String passcode=hsr.getParameter("passcode");
		if(userid.equals("sdh") && passcode.equals("123123")) {
			return "home";
		}else {
			return "login";
		}
	}
	@RequestMapping("/signon")
	public String signon(Locale locale, Model model) {
		model.addAttribute("ID", "sdh" );
		model.addAttribute("password", "123123" );
			
		return "signon"; 
	}
	
	@RequestMapping("/signon_check")
	public String signon_check(Locale locale, Model model,HttpServletRequest hrs) {
		String name=hrs.getParameter("name");
		if(name.equals("")) {
			return "signon";
		}else {
			return "login";
		}

	}
			
//		model.addAttribute("ID", userid );
//		model.addAttribute("password", passcode );
//		
//		return "login"; 
	
	@RequestMapping("/doLogin")
	public String doLogin(HttpServletRequest hsr, Model model){
		String userid=hsr.getParameter("userid");
		if(userid.equals("")) {
			return "signon";
		}else {
			model.addAttribute("id",userid);
			return "home";
		}
		


		
		
	}
	@RequestMapping("/logout")
	public String logout(HttpServletRequest hsr, Model model){
		return "home";
	}

	
}
