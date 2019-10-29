package simplecrud.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import simplecrud.db.UserDAO;
import simplecrud.entity.User;

@Controller
public class HomeController {
	
	@Autowired
	private UserDAO dao;
	
	@RequestMapping("/")
	public String listUsers(Model model) {
		model.addAttribute("listOfUsers", dao.retrieve());
		System.out.println("Success");
		return "list";
	}
	
	@RequestMapping("/delete")
	public String deleteUser(@RequestParam("id") int id) {
		dao.deleteUser(id);
		return "redirect:/";
	}
	
	@RequestMapping("/edit")
	public String editUser(@RequestParam("id") int id, Model model) {
		model.addAttribute("user", dao.getById(id));
		return "userForm";
	}
	
	@RequestMapping("/addUser")
	public String addUser(Model model) {
		User tempUser = new User();
		model.addAttribute("user", tempUser);
		return "userForm";
	}
	
	@PostMapping("/processForm")
	public String processForm(@ModelAttribute("user") User user) {
		dao.addUser(user);
		return "redirect:/";
	}
	
}
