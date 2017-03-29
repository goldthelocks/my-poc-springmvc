package com.poc.springmvc.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String getHomePage(ModelMap modelMap) {
		modelMap.addAttribute("message", "Hello World!");
		return "pages/home";
	}
	
	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String getAboutPage(ModelMap modelMap) {
		return "pages/about";
	}
	
	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String getContactPage(ModelMap modelMap) {
		return "pages/contact";
	}
	
	@RequestMapping(value = "/hello/{name:.+}", method = RequestMethod.GET)
	public ModelAndView hello(@PathVariable("name") String name) {
		ModelAndView model = new ModelAndView();
		model.setViewName("pages/home");
		model.addObject("msg", name);
		return model;
	}
}
