package com.jag.hotel.service;

import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;

import com.jag.hotel.database.DatabaseClass;
import com.jag.hotel.model.Booking;

@Component
public class BookingService {

	private Map<String, Booking> bookings = DatabaseClass.getBookingList();

	public void addBooking(Booking booking) {
		bookings.put(booking.getBookingId(), booking);
	}

	public List<Booking> getAllBookings() {
		List<Booking> list = new LinkedList<Booking>(bookings.values());
		return list;
	}

}
