package com.rpete.thecode;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class CodeController {

	@RequestMapping("")
	public String index() {
		return "index.jsp";
	}
	
	@RequestMapping(value="/submitAnswer", method=RequestMethod.POST)
	public String submitAnswer(@RequestParam(value="answer") String answer) {
		String secretWord = "bushido";
		if (answer.equals(secretWord)) {
			return "redirect:/code";
		} else {
			System.out.println("You need to try harder!");
			return "redirect:/createError";
		}
		
	}
	
	@RequestMapping("/code")
	public String code() {
		return "code.jsp";
	}
	
	@RequestMapping("/createError")
	public String flashMessages(RedirectAttributes redirectAttributes) {
		redirectAttributes.addFlashAttribute("error", "You need to try harder!");
		return "redirect:/";
	}
}
