package com.blog.app.myapp.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.tags.Param;

import com.blog.app.myapp.entity.BlogPost;
import com.blog.app.myapp.entity.User;
import com.blog.app.myapp.repository.BlogPostRepository;

@Controller
public class BlogController {
	@Autowired
	BlogPostRepository blogPostRepository;

	@GetMapping("createBlogPost")
	public String createBlogPost(Model model) {
		model.addAttribute("blogpost", new BlogPost());
		return "createBlog";
	}

	@PostMapping("createBlogPost")
	public String createBlogPost(@Valid @ModelAttribute("blogpost") BlogPost blogpost, BindingResult bindingResult,
			@RequestParam("file") MultipartFile file,final RedirectAttributes redirectAttribute) {
		if (bindingResult.hasErrors())
			return "createBlog";
		if (file.isEmpty()) {
            //redirectAttributes.addFlashAttribute("message", "Please select a file to upload");
            return "redirect:createBlogPost";
        }

        try {

            // Get the file and save it somewhere
            byte[] bytes = file.getBytes();
            Path path = Paths.get(new File("src//main//resources//static//blogImage").getAbsolutePath() + "//" +file.getOriginalFilename());
            Files.write(path, bytes);

        } catch (IOException e) {
            e.printStackTrace();
        }
		blogpost.setStatus("Draft");
		blogpost.setImage(file.getOriginalFilename());
		blogPostRepository.save(blogpost);
		redirectAttribute.addFlashAttribute("message", "Successfully saved.");
		return "redirect:createBlogPost";
	}

	@GetMapping("blogPostList")
	public String blogPostList(Model model) {
		model.addAttribute("blogposts", blogPostRepository.findAll());
		return "blogPostList";
	}
	
	@GetMapping("approveBlog/{id}")
	public String approveBlog(@PathVariable("id") Long id) {
		BlogPost b = blogPostRepository.getOne(id);
		b.setStatus("Ready to publish");
		blogPostRepository.save(b);
		return "redirect:/blogPostList";
	}
	
	@GetMapping("archieveBlog/{id}")
	public String archieveBlog(@PathVariable("id") Long id) {
		BlogPost b = blogPostRepository.getOne(id);
		b.setStatus("Archieved");
		blogPostRepository.save(b);
		return "redirect:/blogPostList";
	}
	

	@GetMapping("RejectBlog/{id}")
	public String RejectBlog(@PathVariable("id") Long id) {
		BlogPost b = blogPostRepository.getOne(id);
		b.setStatus("Reject");
		blogPostRepository.save(b);
		return "redirect:/blogPostList";
	}
	
	@GetMapping("PublishBlog/{id}")
	public String PublishBlog(@PathVariable("id") Long id,Model model) {
		BlogPost b = blogPostRepository.getOne(id);
		/*
		 * b.setStatus("Published"); blogPostRepository.save(b);
		 */
		model.addAttribute("post", b);
		return "/publishBlog";
	}
	
	@PostMapping("PublishBlog")
	public String publishBlog(@Valid @ModelAttribute("post") BlogPost post,BindingResult bindingResult,RedirectAttributes redirectAttribute) {
		BlogPost b = blogPostRepository.getOne(post.getId());
		b.setDate(post.getDate());
		b.setStatus("Published");
		blogPostRepository.save(b);
		//model.addAttribute("message", "Successfully published.");
		return "redirect:blogPostList";
	}
	
	@GetMapping("ReadytoPublishBlog/{id}")
	public String ReadytoPublishBlog(@PathVariable("id") Long id) {
		BlogPost b = blogPostRepository.getOne(id);
		b.setStatus("Ready to publish");
		blogPostRepository.save(b);
		return "redirect:/blogPostList";
	}
	
	@GetMapping("previewBlog")
	public String previewBlog(Model model) {
		model.addAttribute("blogposts", blogPostRepository.findByStatus("Published"));
		return "previewBlog";
	}
}
