package com.rk.ContactBook.Service;

import java.util.List;

import com.rk.ContactBook.Entity.Contact;

public interface ContactService {

	Integer addContact(Contact c);

	List<Contact> getContactList();

	Contact getById(Integer id);

	boolean deleteContact(Integer id);

	void softDelete(Integer id);

}
