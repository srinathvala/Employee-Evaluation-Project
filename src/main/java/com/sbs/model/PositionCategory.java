package com.sbs.model;

public class PositionCategory {

	private String id;
	private String value;
	
	public PositionCategory() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PositionCategory(String id, String value) {
		super();
		this.id = id;
		this.value = value;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
}
