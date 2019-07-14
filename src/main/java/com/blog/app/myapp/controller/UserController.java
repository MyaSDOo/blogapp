package com.blog.app.myapp.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.blog.app.myapp.entity.User;
import com.blog.app.myapp.repository.UserRepository;

@Controller
public class UserController {

	@Autowired
	private UserRepository userRepository;

	@GetMapping("createUser")
	public String getCreateUserPage(Model model) {
		User user = new User();
		user.setUserType("admin");
		model.addAttribute("user", user);
		return "createUser";
	}
	
	@PostMapping("createUser")
	public String createUser(@Valid @ModelAttribute("user") User user, BindingResult bindingResult,final RedirectAttributes redirectAttribute) {
		if(bindingResult.hasErrors())
			return "createUser";
		user.setStatus("active");
		userRepository.save(user);
		redirectAttribute.addFlashAttribute("message", "Successfully saved.");
		return "redirect:createUser";
	}
	
	@GetMapping("userList")
	public String getUserListPage(Model model) {
		model.addAttribute("users", userRepository.findAll());
		return "userList";
	}
	
	@GetMapping("suspendUser/{id}")
	public String suspendUser(@PathVariable("id") Long id) {
		User user = userRepository.getOne(id);
		user.setStatus("suspend");
		userRepository.save(user);
		return "redirect:/userList";
	}
}
