package com.jag.hotel.model;

import java.util.concurrent.atomic.AtomicInteger;

public class Booking {

	private static final AtomicInteger count = new AtomicInteger(0);
	private String bookingId;
	private String customerName;
	private String email;
	private String phone;
	private String address;
	private String room;
	private int noOfPersons;
	private int noOfRooms;
	private String breakFast;
	private String checkIn;
	private String checkOut;

	public Booking() {
	}

	public Booking(String customerName, String email, String phone, String address, String room,
			int noOfPersons, int noOfRooms, String breakFast, String checkIn, String checkOut) {
		int id = count.incrementAndGet();
		this.bookingId = "B"+String.format("%03d", id);
		this.customerName = customerName;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.room = room;
		this.noOfPersons = noOfPersons;
		this.noOfRooms = noOfRooms;
		this.breakFast = breakFast;
		this.checkIn = checkIn;
		this.checkOut = checkOut;
	}

	public String getBookingId() {
		return bookingId;
	}


	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getRoom() {
		return room;
	}

	public void setRoom(String room) {
		this.room = room;
	}

	public int getNoOfPersons() {
		return noOfPersons;
	}

	public void setNoOfPersons(int noOfPersons) {
		this.noOfPersons = noOfPersons;
	}

	public int getNoOfRooms() {
		return noOfRooms;
	}

	public void setNoOfRooms(int noOfRooms) {
		this.noOfRooms = noOfRooms;
	}

	public String getBreakFast() {
		return breakFast;
	}

	public void setBreakFast(String breakFast) {
		this.breakFast = breakFast;
	}

	public String getCheckIn() {
		return checkIn;
	}

	public void setCheckIn(String checkIn) {
		this.checkIn = checkIn;
	}

	public String getCheckOut() {
		return checkOut;
	}

	public void setCheckOut(String checkOut) {
		this.checkOut = checkOut;
	}

}
