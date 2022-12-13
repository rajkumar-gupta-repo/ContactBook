package com.rk.ContactBook.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.rk.ContactBook.Entity.Contact;

public interface ContactRepo extends JpaRepository<Contact, Integer> {

}
