package com.eidia.exam.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.eidia.exam.dao.ResourceRepository;
import com.eidia.exam.entity.Demande;
import com.eidia.exam.entity.Resource;
import com.eidia.exam.entity.User;
import com.eidia.exam.service.LoginService;

@Controller
@SessionAttributes({"user","error","success"})
class ResourceController {
	
	@Autowired
	private ResourceRepository resourceRepository;
	@RequestMapping(value="/resourceList")
	public String ResourceList(Model model, @RequestParam(name="key",defaultValue="")String key) {
		User user=(User) model.getAttribute("user");
		List<Resource> resources = resourceRepository.search("%"+key+"%");
		model.addAttribute("resourceList",resources);
		String error=(String) model.getAttribute("error");
		model.addAttribute("error",error);
		String success=(String) model.getAttribute("success");
		model.addAttribute("success",success);
		model.addAttribute("userRole",user.getRole());
		return "resources";
	}
	@RequestMapping(value="/resources")
	public String Resources(Model model, @RequestParam(name="key",defaultValue="")String key) {
		User user=(User) model.getAttribute("user");
		List<Resource> resources = resourceRepository.search("%"+key+"%");
		System.out.println("resources:"+resources);
		model.addAttribute("resources",resources);
		String error=(String) model.getAttribute("error");
		model.addAttribute("error",error);
		String success=(String) model.getAttribute("success");
		model.addAttribute("success",success);
		model.addAttribute("userRole",user.getRole());
		return "resourceList";
	}
	@Autowired
	LoginService service;
	@RequestMapping(value="deleteResource", method=RequestMethod.GET)
	public String deleteResource(Long id, Model model) {
		User user =(User) model.getAttribute("user");
		System.out.println("user:"+user.getUsername()+" Role:"+user.getRole());
		if (service.isAdmin(user.getRole())) {
		resourceRepository.deleteById(id);
		model.addAttribute("success", "The Resource is deleted successful!");
		model.addAttribute("userRole",user.getRole());
		return "redirect:/resourceList";
		}
		else {
			return "unauthorized";
		}
		
	}
	
	@RequestMapping(value="/newResource", method=RequestMethod.GET)
	public String formResource(Model model) {
		User user =(User) model.getAttribute("user");
		System.out.println("user:"+user.getUsername()+" Role:"+user.getRole());
		if (service.isAdmin(user.getRole())) {
		model.addAttribute("action","Add");
		String error=(String) model.getAttribute("error");
		model.addAttribute("error",error);
		model.addAttribute("resource",new Resource());
		model.addAttribute("userRole",user.getRole());
		return "formResource";
		}else {
		    return "unauthorized";
	    }
	}
	
	@RequestMapping(value="/editResource", method=RequestMethod.GET)
	public String saveResource(Model model,Long id) {
		User user =(User) model.getAttribute("user");
		System.out.println("user:"+user.getUsername()+" Role:"+user.getRole());
		if (service.isAdmin(user.getRole())) {
		Resource resource = resourceRepository.getOne(id);
		model.addAttribute("action","Update");
		model.addAttribute("resource",resource);
		String error=(String) model.getAttribute("error");
		model.addAttribute("error",error);
		model.addAttribute("userRole",user.getRole());
		return "formResource";
	    }else {
		    return "unauthorized";
	    }
	}
	
	@RequestMapping(value="/saveResource", method=RequestMethod.POST)
	public String saveResource(Model model, Resource resource) {
		User user =(User) model.getAttribute("user");
		System.out.println("user:"+user.getUsername()+" Role:"+user.getRole());
		if (service.isAdmin(user.getRole())) {
		model.addAttribute("resource",new Resource());
		resourceRepository.save(resource);
		model.addAttribute("success", "The operation done successful!");
		model.addAttribute("userRole",user.getRole());
		return "redirect:/resourceList";
		}else {
			return "unauthorized";
		}
	}
	
}
