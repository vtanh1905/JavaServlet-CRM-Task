package com.vtanh1905.entity;

import java.sql.Timestamp;

public class Task {
	private int id;
	private String name;
	private Timestamp start_date;
	private Timestamp end_date;
	private int user_id;
	private int job_d;
	private int status_id;
	
	public Task(int id, String name, Timestamp start_date, Timestamp end_date, int user_id, int job_d, int status_id) {
		super();
		this.id = id;
		this.name = name;
		this.start_date = start_date;
		this.end_date = end_date;
		this.user_id = user_id;
		this.job_d = job_d;
		this.status_id = status_id;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Timestamp getStart_date() {
		return start_date;
	}

	public void setStart_date(Timestamp start_date) {
		this.start_date = start_date;
	}

	public Timestamp getEnd_date() {
		return end_date;
	}

	public void setEnd_date(Timestamp end_date) {
		this.end_date = end_date;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public int getJob_d() {
		return job_d;
	}

	public void setJob_d(int job_d) {
		this.job_d = job_d;
	}

	public int getStatus_id() {
		return status_id;
	}

	public void setStatus_id(int status_id) {
		this.status_id = status_id;
	}
	
}