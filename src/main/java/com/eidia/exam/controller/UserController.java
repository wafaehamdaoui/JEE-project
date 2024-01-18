package com.eidia.exam.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.eidia.exam.dao.UserRepository;
import com.eidia.exam.entity.User;
import com.eidia.exam.service.LoginService;

@Controller
@SessionAttributes({"userRole","error","success"})
class UserController {
	
	@Autowired
	private UserRepository userRepository;
	@RequestMapping(value="/userList")
	public String userList(Model model, @RequestParam(name="key",defaultValue="")String key) {
		String userRole=(String) model.getAttribute("userRole");
		List<User> users = userRepository.search("%"+key+"%");
		model.addAttribute("userList",users);
		String error=(String) model.getAttribute("error");
		model.addAttribute("error",error);
		String success=(String) model.getAttribute("success");
		model.addAttribute("success",success);
		model.addAttribute("userRole",userRole);
		return "users";
	}
	@Autowired
	LoginService service;
	@RequestMapping(value="deleteUser", method=RequestMethod.GET)
	public String deleteUser(Long id, Model model) {
		String userRole=(String) model.getAttribute("userRole");;
		System.out.println("Role:"+userRole);
		if (service.isAdmin(userRole)) {
		userRepository.deleteById(id);
		model.addAttribute("success", "The Resource is deleted successful!");
		model.addAttribute("userRole",userRole);
		return "redirect:/userList";
		}
		else {
			return "unauthorized";
		}
		
	}
	
	@RequestMapping(value="/newUser", method=RequestMethod.GET)
	public String formUser(Model model) {
		String userRole=(String) model.getAttribute("userRole");
		System.out.println(" Role:"+userRole);
		if (service.isAdmin(userRole)) {
		model.addAttribute("action","Add");
		String error=(String) model.getAttribute("error");
		model.addAttribute("error",error);
		model.addAttribute("newUser",new User());
		model.addAttribute("userRole",userRole);
		return "formUser";
		}else {
		    return "unauthorized";
	    }
	}
	
	@RequestMapping(value="/editUser", method=RequestMethod.GET)
	public String saveUser(Model model,Long id) {
		String userRole=(String) model.getAttribute("userRole");
		System.out.println(" Role:"+userRole);
		if (service.isAdmin(userRole)) {
		User user = userRepository.getOne(id);
		model.addAttribute("action","Update");
		model.addAttribute("newUser",user);
		String error=(String) model.getAttribute("error");
		model.addAttribute("error",error);
		model.addAttribute("userRole",userRole);
		return "formUser";
	    }else {
		    return "unauthorized";
	    }
	}
	
	@RequestMapping(value="/saveUser", method=RequestMethod.POST)
	public String saveUser(Model model, User newUser) {
		String userRole=(String) model.getAttribute("userRole");
		System.out.println(" Role:"+userRole);
		if (service.isAdmin(userRole)) {
		model.addAttribute("newUser",new User());
		System.out.println(" new user:"+newUser);
		userRepository.save(newUser);
		model.addAttribute("success", "The operation done successful!");
		model.addAttribute("userRole",userRole);
		return "redirect:/userList";
		}else {
			return "unauthorized";
		}
	}
}
