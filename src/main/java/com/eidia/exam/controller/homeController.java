package com.eidia.exam.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.eidia.exam.dao.DemandeRepository;
import com.eidia.exam.dao.ResourceRepository;
import com.eidia.exam.dao.UserRepository;
import com.eidia.exam.entity.Demande;
import com.eidia.exam.entity.Resource;
import com.eidia.exam.entity.User;
import com.eidia.exam.service.LoginService;

@Controller
@SessionAttributes({"user","error","success","userRole"})
public class homeController {
	@Autowired
	private DemandeRepository demandeRepository;
	@Autowired
	private ResourceRepository resourceRepository;
    @GetMapping({"/admin","adminHome"})
    public String admin(Model model) {
		User user =(User) model.getAttribute("user");
		System.out.println("user:"+user.getUsername()+" Role:"+user.getRole());
		model.addAttribute("userRole",user.getRole());
		List<Demande> demandes = demandeRepository.inProgress("%"+"in progress"+"%");
		List<Resource> resources = resourceRepository.GetResources();
		List<Long> data = new ArrayList<>();
		List<String> name = new ArrayList<>();
		for (Resource resource : resources) {
			Long count = demandeRepository.countDemandesByResource(resource.getId(), "validated");
			data.add(count);
			name.add(resource.getName());
		}
		model.addAttribute("resources",resources);
		model.addAttribute("demandeSize",demandes.size());
		model.addAttribute("resourceSize",resources.size());
		model.addAttribute("userSize",1000);
		model.addAttribute("demandes",demandes);
		model.addAttribute("name",name);
		model.addAttribute("data",data);
        return "home";
    }
    
    @GetMapping({"/user","userHome"})
    public String user(Model model) {

		User user =(User) model.getAttribute("user");
		System.out.println("user:"+user.getUsername()+" Role:"+user.getRole());
		model.addAttribute("userRole",user.getRole());
        return "welcome";
    }
    @Autowired
	LoginService service;
    @Autowired
	private UserRepository userRepository;
    
	@RequestMapping(value="/login", method= RequestMethod.GET)
	public String viewLoginPage(ModelMap map) {
		return "login";
	}
	
	@RequestMapping(value="/login", method = RequestMethod.POST)
    public String showHomePage(ModelMap model, @RequestParam String name, @RequestParam String password){
 
        boolean isValidUser = service.validateUser(name, password);
 
        if (!isValidUser) {
            model.put("errorMessage", "Username or password incorrect!");
            return "login";
        }
        
        User user = userRepository.findUser(name,password);
 
        model.put("user", user);
        model.put("userRole", user.getRole());
 
        if ("admin".equals(user.getRole())) {
            return "redirect:/admin"; // Redirect to admin welcome page
        } else {
            return "redirect:/user"; // Redirect to normal user welcome page
        }
    }
	
	
	@RequestMapping(value="/logout", method = RequestMethod.GET)
    public String showLogoutPage(ModelMap model){
        return "login";
    }

	@RequestMapping(value="/")
    public String index() {
        return "redirect:/login";
    }
	
	@RequestMapping(value="/rules")
    public String rules() {
        return "rules";
    }
	
	@RequestMapping(value="/profile")
    public String profile(Model model) {
		String userRole=(String) model.getAttribute("userRole");
		User user=(User) model.getAttribute("user");
		if (service.isAdmin(userRole)) {
			model.addAttribute("profile", user);
			return "profile";
		}else {
		    return "unauthorized";
	    }
    }
}