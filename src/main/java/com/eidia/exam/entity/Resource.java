package com.eidia.exam.entity;

import java.io.Serializable;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
@Entity
public class Resource implements Serializable{
	@Id @GeneratedValue
	Long id;
	String name;
	String type;
	String location;
	String status;
	String image;
	public Resource() {
		// TODO Auto-generated constructor stub
	}
	
	public Resource(String name, String type, String location, String status, String image) {
		super();
		this.name = name;
		this.type = type;
		this.location = location;
		this.status = status;
		this.image = image;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}
	
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	@Override
	public String toString() {
		return "Resource [id=" + id + ", name=" + name + ", type=" + type + ", location=" + location + "]";
	}

	
}
