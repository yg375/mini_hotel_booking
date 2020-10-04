<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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

div {
	text-align: left
}

.alnright {
	text-align: left;
}
</style>

<script type="text/javascript">
	var invalid = 0;
	var today = new Date();
	var checkInDate = 
	function validation() {

		invalid = 0;
		//cutomer name
		if (document.getElementById("customerName").value == "") {
			document.getElementById("nameError").innerHTML = "Customer Name is required!";
			invalid += 1;
		}

		else if (document.getElementById("customerName").value.length < 2
				|| document.getElementById("customerName").value.length > 30) {
			document.getElementById("nameError").innerHTML = "Invalid Customer Name! It should have min 2 chars and max of 30 chars";
			invalid += 1;
		} else {
			document.getElementById("nameError").innerHTML = "";

		}

		//email
		if (document.getElementById("email").value == "") {
			document.getElementById("emailError").innerHTML = "Email is required";
			invalid += 1;
		}

		else if ((document.getElementById("email").value.indexOf('@')) == -1
				|| (document.getElementById("email").value.indexOf('.')) == -1) {
			document.getElementById("emailError").innerHTML = "Invalid Email Address";
			invalid += 1;
		}

		else {
			document.getElementById("emailError").innerHTML = "";
		}

		//phone
		if (document.getElementById("phone").value == "") {
			document.getElementById("phoneError").innerHTML = "Phone is required";
			invalid += 1;
		}

		else if (document.getElementById("phone").value.match(/\d/g).length != 10) {
			document.getElementById("phoneError").innerHTML = "Phone Numbers of format 0000000000";
			invalid += 1;
		}

		else {
			document.getElementById("phoneError").innerHTML = "";
		}

		//address
		if (document.getElementById("address").value == "") {
			document.getElementById("addressError").innerHTML = "Address is required!";
			invalid += 1;
		}

		else {
			document.getElementById("addressError").innerHTML = "";
		}

		//room
		if (document.getElementById("room").value == "select") {
			document.getElementById("roomsError").innerHTML = "Room is required!";
			invalid += 1;
		}

		else {
			document.getElementById("roomsError").innerHTML = "";
		}

		//Persons
		if (document.getElementById("noOfPersons").value == "") {
			document.getElementById("personError").innerHTML = "No Of Persons is required!";
			invalid += 1;
		}

		else if (isNaN(document.getElementById("noOfPersons").value)) {
			document.getElementById("personError").innerHTML = "No Of Persons should be an integer";
			document.getElementById("personError1").innerHTML = "No Of Persons is required!";
			invalid += 1;
		}

		else {
			document.getElementById("personError").innerHTML = "";
		}

		//No of rooms
		if (document.getElementById("noOfRooms").value == "") {
			document.getElementById("roomError").innerHTML = "noOfRooms must be an integer";
			invalid += 1;
		} else if (isNaN(document.getElementById("noOfRooms").value)) {
			document.getElementById("roomError").innerHTML = "No Of Rooms should be an integer";
			document.getElementById("roomError1").innerHTML = "No Of Rooms is required!";
			invalid += 1;
		}

		else {
			document.getElementById("roomError").innerHTML = "";
		}

		//Breakfast
		if (document.getElementById("breakfast").value != "yes"
				|| document.getElementById("breakfast").value != "no") {
			document.getElementById("breakfastError").innerHTML = "Confirmation of Breakfast is required!";
			invalid += 1;
		}

		else {
			document.getElementById("breakfastError").innerHTML = "";
		}

		//Check in date
		if (document.getElementById("checkIn").value == "") {
			document.getElementById("checkinError").innerHTML = "Check In Date required!";
			invalid += 1;
		}
		
		else {
			document.getElementById("checkinError").innerHTML = "";
		}

		//Check Out date
		if (document.getElementById("checkOut").value == "") {
			document.getElementById("checkOutError").innerHTML = "Check Out Date required!";
			invalid += 1;
		}

		else {
			document.getElementById("checkOutError").innerHTML = "";
		}

		if (invalid != 0) {
			return false;
		} else {
			return true;
		}

	}
	
	function setValue(){
		var index = document.getElementById("room").selectedIndex;
		
	}
	
	
</script>

</head>
<body>
	<h1>UKP Hotels Online Booking</h1>

	<hr>

	<br>
	<h3>Book a Room</h3>
	<br>
	<form:form action="doBook.htm" method="post" name="myform"
		modelAttribute="booking" onsubmit="return validation()">

		<table align="center">
			<tr>
				<td class='alnright'>Customer Name:</td>
				<td><input type="text" name="customerName" id="customerName" /></td>
				<td><div id="nameError" style="color: red;"></div></td>
			</tr>

			<tr>
				<td class='alnright'>Email:</td>
				<td><input type="text" name="email" id="email" /></td>
				<td><div id="emailError" style="color: red;"></div></td>
			</tr>

			<tr>
				<td class='alnright'>Phone:</td>
				<td><input type="text" name="phone" id="phone" /></td>
				<td><div id="phoneError" style="color: red;"></div></td>
			</tr>

			<tr>
				<td class='alnright'>Address:</td>
				<td><input type="text" name="address" id="address" /></td>
				<td><div id="addressError" style="color: red;"></div></td>
			</tr>

			<tr>
				<td class='alnright'>Room:</td>
				<td><select id="room" name="room" onchange="return setValue();">
						<option value="select" selected="selected">Select</option>
						<option value="A/C Executive Double Room">A/C Executive Double Room</option>
						<option value="A/C Deluxe Double Room">A/C Deluxe Double Room</option>
						<option value="A/C Suite">A/C Suite</option>
						<option value="Dormitory">Dormitory</option>
				</select></td>
				<td><div id="roomsError" style="color: red;"></div></td>
			</tr>

			<tr>
				<td class='alnright'>No of Persons:</td>
				<td><input type="text" name="noOfPersons" id="noOfPersons" /></td>
				<td><div id="personError" style="color: red;"></div></td>
				
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td><div id="personError1" style="color: red;"></div></td>
			</tr>

			<tr>
				<td class='alnright'>No of Rooms:</td>
				<td><input type="text" name="noOfRooms" id="noOfRooms" /></td>
				<td><div id="roomError" style="color: red;"></div></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td><div id="roomError1" style="color: red;"></div></td>
			</tr>

			<tr>
				<td class='alnright'>Breakfast:</td>
				<td><input type="radio" name="breakfast" value="yes"
					id="breakfast"> Yes <input type="radio" name="breakfast"
					value="no" id="breakfast"> No<br></td>
				<td><div id="breakfastError" style="color: red;"></div></td>
			</tr>

			<tr>
				<td class='alnright'>Check In(dd-MMM-yyyy):</td>
				<td><input type="text" name="checkIn" placeholder="dd-MMM-yyyy"
					id="checkIn"></td>
				<td><div id="checkinError" style="color: red;"></div></td>
			</tr>

			<tr>
				<td class='alnright'>Check Out(dd-MMM-yyyy):</td>
				<td><input type="text" name="checkOut" placeholder="dd-MMM-yyyy"
					id="checkOut"></td>
				<td><div id="checkOutError" style="color: red;"></div></td>
			</tr>
			<tr>
				<td class='alnright'><input type="submit"
					value="Confirm Booking"></td>
			</tr>
		</table>

	</form:form>


</body>
</html>