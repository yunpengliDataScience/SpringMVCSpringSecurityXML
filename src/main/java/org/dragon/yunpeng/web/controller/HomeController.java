package org.dragon.yunpeng.web.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@RequestMapping(value = { "/hello" }, method = RequestMethod.GET)
	public ModelAndView welcomePage() {

		ModelAndView model = new ModelAndView();
		model.addObject("title", "Spring Security Hello World");
		model.addObject("message", "This is a welcome page!");
		model.setViewName("hello");
		return model;

	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(ModelMap model) {

		return "index";
	}

	@RequestMapping(value = "/saveSessionAttribute", method = RequestMethod.POST)
	protected String saveSessionAttribute(HttpServletRequest req) {
		String attributeName = req.getParameter("attributeName");
		String attributeValue = req.getParameter("attributeValue");
		req.getSession().setAttribute(attributeName, attributeValue);

		return "redirect:/";
	}

	@RequestMapping(value = "/admin**", method = RequestMethod.GET)
	public ModelAndView adminPage() {

		ModelAndView model = new ModelAndView();
		model.addObject("title", "Spring Security Hello World");
		model.addObject("message", "This is a protected page!");
		model.setViewName("admin");

		return model;

	}

}