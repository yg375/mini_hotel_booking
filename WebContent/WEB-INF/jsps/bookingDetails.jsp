<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body {
	text-align: center;
	vertical-align: middle;
}
</style>

</head>
<body>
	<h1>UKP Hotels Online Booking</h1>

	<hr>

	<h3>Report</h3>
	
	<table align="center" border="1px">
	<tr>
	<th>Booking ID</th>
	<th>Customer Name</th>
	<th>Email</th>
	<th>Phone</th>
	<th>Address</th>
	<th>Room</th>
	<th>No Of Persons</th>
	<th>No Of Rooms</th>
	<th>BreakFast</th>
	<th>Check In</th>
	<th>Check Out</th>
	</tr>
	
	<c:forEach items="${bookings}" var="booking">
	<tr>
	<td>${booking.bookingId}</td>
	<td>${booking.customerName}</td>
	<td>${booking.email}</td>
	<td>${booking.phone}</td>
	<td>${booking.address}</td>
	<td>${booking.room}</td>
	<td>${booking.noOfPersons}</td>
	<td>${booking.noOfRooms}</td>
	<td>${booking.breakFast}</td>
	<td>${booking.checkIn}</td>
	<td>${booking.checkOut}</td>
	</tr>
	
	</c:forEach>
	
	</table>
	
	
</body>
</html>