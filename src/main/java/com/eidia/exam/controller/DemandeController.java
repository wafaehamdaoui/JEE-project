package com.eidia.exam.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.eidia.exam.dao.DemandeRepository;
import com.eidia.exam.dao.ResourceRepository;
import com.eidia.exam.dao.UserRepository;
import com.eidia.exam.entity.Demande;
import com.eidia.exam.entity.User;
import com.eidia.exam.service.LoginService;
import com.eidia.exam.entity.Resource;

@Controller
@SessionAttributes({"userRole","error","success","user"})
public class DemandeController {
	
	@Autowired
	private DemandeRepository demandeRepository;
	@Autowired
	private UserRepository userRepository;
	@Autowired
	private ResourceRepository resourceRepository;
	@Autowired
    private JavaMailSender javaMailSender;
	@Autowired
	LoginService service;
	
	@RequestMapping(value="/demandeList")
	public String showDemandeList(Model model, @RequestParam(name="key",defaultValue="")String key) {
		String userRole=(String) model.getAttribute("userRole");
		if (service.isAdmin(userRole)) {
		List<Demande> demandes = demandeRepository.search("%"+key+"%");
		String error=(String) model.getAttribute("error");
		model.addAttribute("error",error);
		String success=(String) model.getAttribute("success");
		model.addAttribute("success",success);
		model.addAttribute("demandeList",demandes);
		model.addAttribute("userRole",userRole);
		return "demandes";
		}else {
		    return "unauthorized";
	    }
	}
	@RequestMapping(value="/deleteDemande", method=RequestMethod.GET)
	public String deleteDemande(Long id, Model model) {
		String userRole=(String) model.getAttribute("userRole");
		demandeRepository.deleteById(id);
		model.addAttribute("success", "The reservation is deleted successful!");
		model.addAttribute("userRole",userRole);
		if (service.isAdmin(userRole)) {
			return "redirect:/demandeList";
		}else {
			return "redirect:/myReservation";
		}
	}
	@RequestMapping(value="/newDemande", method=RequestMethod.GET)
	public String formDemande(Model model, @RequestParam(name="key",defaultValue="")String key) {
		String userRole=(String) model.getAttribute("userRole");
		List<Resource> resources = resourceRepository.search("%"+key+"%");
		model.addAttribute("action","save");
		String error=(String) model.getAttribute("error");
		System.out.println("error:"+error);
		model.addAttribute("demande",new Demande());		
		model.addAttribute("resourceList",resources);
		model.addAttribute("error",error);
		model.addAttribute("userRole",userRole);
		return "formDemande";
	}
	
	/*
	 * @RequestMapping(value="/updateResourceList", method=RequestMethod.GET) public
	 * void Update(Model model,
	 * 
	 * @RequestParam(name="date",defaultValue="")String date,
	 * 
	 * @RequestParam(name="taketime",defaultValue="")String taketime,
	 * 
	 * @RequestParam(name="backtime",defaultValue="")String backtime) {
	 * List<Resource> resources = resourceRepository.search();
	 * model.addAttribute("resourceList",resources); }
	 */
	@RequestMapping(value="/editDemande", method=RequestMethod.GET)
	public String save(Model model,Long id,@RequestParam(name="key",defaultValue="")String key) {
		String userRole=(String) model.getAttribute("userRole");
		Demande demande = demandeRepository.getOne(id);
		List<User> users = userRepository.search("%"+key+"%");
		List<Resource> resources = resourceRepository.search("%"+key+"%");
		model.addAttribute("action","update");
		model.addAttribute("demande",demande);
		model.addAttribute("userList",users);
		model.addAttribute("resourceList",resources);
		String error=(String) model.getAttribute("error");
		model.addAttribute("error",error);
		model.addAttribute("userRole",userRole);
		return "formDemande";
	}
	
	private void sendEmailNotification(String email, String text) {
		try {
        SimpleMailMessage message = new SimpleMailMessage();
        message.setFrom("hamdaouiwafae2000@gmail.com");
        message.setTo(email); 
        message.setSubject("UEMF Resource Notification");
        message.setText(text);
        // Send email
        javaMailSender.send(message);
        System.out.println("Email sent successfully!");
	    } catch (Exception e) {
	        e.printStackTrace();
	        System.out.println("Error sending email: " + e.getMessage());
	    }
    }
	
	private boolean checkResourceAvailability(Demande demande) {
		List<Demande> demandes = demandeRepository.getDemandeByResource(demande.getResourceId(), demande.getTaketime(), demande.getBacktime(), demande.getDate(), "validated");
		System.out.println("demandes:"+demandes);
		if(demandes.size()<=10) {
			return true;
		}else {
			return false;
		}
	}
	
	@RequestMapping(value="/saveDemande", method=RequestMethod.POST)
	public String saveDemande(Model model, Demande demande) {
		model.addAttribute("demande",new Demande());
		String userRole=(String) model.getAttribute("userRole");
		User user =(User) model.getAttribute("user");
		System.out.println("user:"+user.getUsername());
		boolean isResourceAvailable = checkResourceAvailability(demande);
		if (isResourceAvailable) {
		demande.setUserId(user.getId());
		demande.setStatus("	in progress");
		demandeRepository.save(demande);		
		String message="The resource "+demande.getResourceId()+" has been reserved please validate or refuse it!";
		String adminEmail = "hamdaouiwafae2000@gmail.com";
		sendEmailNotification(adminEmail, message);
		model.addAttribute("success", "The reservation is added successful!");
		model.addAttribute("userRole",userRole);
		return "redirect:/myReservation";
		
		} else {
	        model.addAttribute("error", "The resource is not available at the selected time.");
	        return "redirect:/newDemande";
		}
	}
	
	@RequestMapping(value="/updateDemande", method=RequestMethod.POST)
	public String updateDmande(Model model, Demande demande) {
		model.addAttribute("demande",new Demande());
		String userRole=(String) model.getAttribute("userRole");
		User user =(User) model.getAttribute("user");
		System.out.println("user:"+user.getUsername());
		boolean isResourceAvailable = checkResourceAvailability(demande);
		if (isResourceAvailable) {
		demandeRepository.save(demande);
		model.addAttribute("success", "The reservation is updated successful!");
		model.addAttribute("userRole",userRole);
		return "redirect:/myReservation";
		} else {
	        model.addAttribute("error", "The resource is not available at the selected time.");
	        return "redirect:/myReservation";
		}
	}
	
	@RequestMapping(value="/validateDemande", method=RequestMethod.GET)
	public String validate(Model model, Long id) {
		String userRole=(String) model.getAttribute("userRole");
		Demande demande = demandeRepository.getOne(id);
		User user = userRepository.getOne(demande.getUserId());
		String message="Your reservation for resource:"+demande.getResourceId()+" has been validated!";
		sendEmailNotification(user.getEmail(), message);
		demande.setStatus("validated");
		demandeRepository.save(demande);
		model.addAttribute("success", "The reservation is validated!");
		model.addAttribute("userRole",userRole);
		return "redirect:/demandeList";
	}
	
	@RequestMapping(value="/refuseDemande", method=RequestMethod.GET)
	public String refuse(Model model, Long id) {
		String userRole=(String) model.getAttribute("userRole");
		Demande demande = demandeRepository.getOne(id);
		User user = userRepository.getOne(demande.getUserId());
		System.out.println("user:"+user.getUsername()+" email:"+user.getEmail());
		String message="Your reservation for resource:"+demande.getResourceId()+" has been refused!";
		sendEmailNotification(user.getEmail(), message);
		demande.setStatus("refused");
		demandeRepository.save(demande);
		model.addAttribute("success", "The demande is refused!");
		model.addAttribute("userRole",userRole);
		return "redirect:/demandeList";
	}
	
	@RequestMapping(value="/myReservation")
	public String showDemandeByUser(Model model, @RequestParam(name="key",defaultValue="")Long key) {
		String userRole=(String) model.getAttribute("userRole");
		User user =(User) model.getAttribute("user");
		key= user.getId();
		List<Demande> demandes = demandeRepository.getDemandeByUser(key);
		String error=(String) model.getAttribute("error");
		model.addAttribute("error",error);
		String success=(String) model.getAttribute("success");
		model.addAttribute("success",success);
		model.addAttribute("demandeList",demandes);
		model.addAttribute("userRole",userRole);
		return "myReservation";
	}
	
}
