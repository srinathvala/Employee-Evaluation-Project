package com.sbs.model;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "employee")
public class Employee {

	@Id
	private String id;
	
	private String firstName;
	private String lastName;
	private String middleName;
	private String emailAddress;
	private String phoneNumber;
	private String positionCategory;
	private String positionCategoryAsString;
	private Date hiredDate;
	private String address1;
	private String address2;
	private String city;
	private String state;
	private String zip;
	private Boolean active;
	private List<PositionCategory> positionCategories;
	

	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Employee(String id, String firstName, String lastName, String emailAddress, Date hiredDate, Boolean active) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.emailAddress = emailAddress;
		this.hiredDate = hiredDate;
		this.active = active;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getMiddleName() {
		return middleName;
	}
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	public String getEmailAddress() {
		return emailAddress;
	}
	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}
	public Boolean getActive() {
		return active;
	}
	public void setActive(Boolean active) {
		this.active = active;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getPositionCategory() {
		return positionCategory;
	}
	public void setPositionCategory(String positionCategory) {
		this.positionCategory = positionCategory;
	}
	public Date getHiredDate() {

		return this.hiredDate;
	}
	
	public String getHiredDateAsString() {
	SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
	return formatter.format(this.getHiredDate());
	
	}
	
	public void setHiredDate(Date hiredDate) {
		this.hiredDate = hiredDate;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	public List<PositionCategory> getPositionCategories() {
		
		positionCategories = new ArrayList<PositionCategory>();
		positionCategories.add(new PositionCategory("ind", "Indirect") );
		positionCategories.add(new PositionCategory("dir", "Direct") );
		positionCategories.add(new PositionCategory("pm", "Program Manager") );
		positionCategories.add(new PositionCategory("dd", "Director") );
		positionCategories.add(new PositionCategory("exe", "Executive") );
		
		
		return positionCategories;
	}
	public void setPositionCategories(List<PositionCategory> positionCategories) {
		this.positionCategories = positionCategories;
	}
	
	public String getPositionCategoryAsString() {
		if(this.getPositionCategory() !=null && !this.getPositionCategory().isEmpty()) {
			for (PositionCategory category : getPositionCategories()) {
				if(this.getPositionCategory().equals(category.getId())){
					return category.getValue();
				}
			}
		}
		return "";
	
	}
	public void setPositionCategoryAsString(String positionCategoryAsString) {
		this.positionCategoryAsString = positionCategoryAsString;
	}
}
