package com.jag.hotel.database;

import java.util.HashMap;
import java.util.Map;

import com.jag.hotel.model.Booking;


public class DatabaseClass {

	private static Map<String, Booking> bookingList = new HashMap<>();

	public static Map<String, Booking> getBookingList() {
		return bookingList;
	}
	
	
}
