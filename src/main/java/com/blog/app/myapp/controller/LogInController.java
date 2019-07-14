package com.blog.app.myapp.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.blog.app.myapp.entity.User;
import com.blog.app.myapp.repository.BlogPostRepository;
import com.blog.app.myapp.repository.UserRepository;
import com.blog.app.myapp.services.LoginService;

@Controller
public class LogInController {

	@Autowired
	private UserRepository userRepository;

	@Autowired
	BlogPostRepository blogPostRepository;

	@Autowired
	private LoginService loginService;

	@GetMapping({ "/", "/login" })
	public String getLoginPage(Model model) {
		model.addAttribute("user", new User());
		return "login";
	}

	@PostMapping("loginBlog")
	public String goLogin(@ModelAttribute("user") User user, BindingResult bindingResult, Model model,
			HttpSession httpSession) {
		if (bindingResult.hasErrors())
			return "redirect:login";
		if (loginService.checkLoginAuthentication(user)) {
			User userInformation = userRepository.findByUserName(user.getUserName());
			loginService.saveUserSession(userInformation, httpSession);
			model.addAttribute("blogposts", blogPostRepository.findByStatus("Published"));
			return "previewBlog";
		}
		model.addAttribute("message", "Invalid User Name and Password.");
		return "login";
	}

	@GetMapping("/logout")
	public String logout(HttpSession httpSession) {
		httpSession.invalidate();
		return "redirect:login";
	}
}
