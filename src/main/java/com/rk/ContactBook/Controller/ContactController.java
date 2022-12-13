package com.rk.ContactBook.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.rk.ContactBook.Entity.Contact;
import com.rk.ContactBook.Service.ContactService;

@Controller
public class ContactController {

	private static final Logger log = LoggerFactory.getLogger(ContactController.class);

	@Autowired
	private ContactService cs;

	@GetMapping("/")
	public String contactInfo() {
		log.debug("add contact form displayed");

		return "contact";

	}

	@PostMapping("/add")
	public String addContact(Contact c, HttpSession hs) {

		Integer id = cs.addContact(c);
		hs.setAttribute("msg", "Added Successfully with ID : " + id);
		log.info("Contact added sucessfully ");
		return "redirect:/";

	}

	@PostMapping("/updateContact")
	public String updateContact(Contact c) {
		log.debug("update contact form display");
		cs.addContact(c);

		return "redirect:/allcontacts";

	}

	@GetMapping("/allcontacts")
	public String viewAllContacts(Model model) {

		List<Contact> list = cs.getContactList();
		model.addAttribute("list", list);
		log.info("all Contact list display");
		return "viewContacts";

	}

	@GetMapping("/update/{id}")
	public String updateform(@PathVariable Integer id, Model model) {

		Contact contact = cs.getById(id);
		System.out.println(contact);
		model.addAttribute("contact", contact);
		log.info("request for update contact");
		return "update";

	}

	@GetMapping("/delete/{id}")
	public String deleteContact(@PathVariable Integer id) {
		log.info("request for deleting Contact");
		cs.deleteContact(id);
		log.warn("Contact deleted successfully");
		return "redirect:/allcontacts";

	}

	@GetMapping("/trash/{id}")
	public String softDelete(@PathVariable Integer id) {
		log.info("request for soft delete");
		cs.softDelete(id);
		log.info("Soft delete success");
		return "redirect:/allcontacts";

	}

}
