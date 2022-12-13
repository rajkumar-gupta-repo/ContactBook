package com.rk.ContactBook.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rk.ContactBook.Entity.Contact;
import com.rk.ContactBook.Repository.ContactRepo;
import com.rk.ContactBook.Service.ContactService;

@Service
public class ContactServiceImpl implements ContactService {
	@Autowired
	private ContactRepo contactRepo;

	@Override
	public Integer addContact(Contact c) {

		Contact contact = contactRepo.save(c);
		Integer id = contact.getContactId();

		return id;
	}

	@Override
	public List<Contact> getContactList() {

		List<Contact> list = contactRepo.findAll();

		return list;
	}

	@Override
	public boolean deleteContact(Integer id) {

		boolean present = contactRepo.findById(id).isPresent();
		if (present) {
			contactRepo.deleteById(id);
			return true;
		}

		return false;

	}

	@Override
	public Contact getById(Integer id) {

		Contact contact = contactRepo.findById(id).get();

		return contact;
	}

	@Override
	public void softDelete(Integer id) {

		Contact contact = contactRepo.findById(id).get();
		contact.setActiveSwitch(true);
		contactRepo.save(contact);

	}

}