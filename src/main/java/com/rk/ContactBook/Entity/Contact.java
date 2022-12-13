package com.rk.ContactBook.Entity;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name = "ContactBook")
public class Contact {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "CONTACT_ID")
	private Integer contactId;
	@Column(name = "NAME")
	private String contactName;
	@Column(name = "NUMBER", length = 10)
	private String contactNumber;
	@Column(name = "EMAIL")
	private String contactEmail;
	@Column(name = "DELETED", columnDefinition = "boolean default false")
	private boolean activeSwitch;
	@Column(name = "CREATION_DATE", updatable = false)
	@CreationTimestamp
	private LocalDateTime createdDate;

	@Column(name = "UPDATED_DATE", insertable = false)
	@UpdateTimestamp
	private LocalDateTime updatedDate;

}
