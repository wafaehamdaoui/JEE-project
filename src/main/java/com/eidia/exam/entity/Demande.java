package com.eidia.exam.entity;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;

@Entity
public class Demande implements Serializable{
	@Id @GeneratedValue
	Long id;
	Long userId;
	Long resourceId;
    String date;
    String taketime;
    String backtime;
    String motif;
    String status;
    
    public Demande() {
		// TODO Auto-generated constructor stub
	}

	public Demande(Long userId, Long resourceId,String date, String taketime, String backtime, String motif, String status) {
		super();
		this.userId = userId;
		this.resourceId = resourceId;
		this.date = date;
		this.taketime = taketime;
		this.backtime = backtime;
		this.motif = motif;
		this.status = status;
	}

	public Demande(Long userId) {
		super();
		this.userId = userId;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Long getResourceId() {
		return resourceId;
	}

	public void setResourceId(Long resourceId) {
		this.resourceId = resourceId;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getTaketime() {
		return taketime;
	}

	public void setTaketime(String taketime) {
		this.taketime = taketime;
	}

	public String getBacktime() {
		return backtime;
	}

	public void setBacktime(String backtime) {
		this.backtime = backtime;
	}

	public String getMotif() {
		return motif;
	}

	public void setMotif(String motif) {
		this.motif = motif;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Demande [id=" + id + ", userId=" + userId + ", resourceId=" + resourceId + ", taketime=" + taketime
				+ ", backtime=" + backtime + ", motif=" + motif + ", status=" + status + "]";
	}

}
