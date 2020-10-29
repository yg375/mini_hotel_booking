# mini_hotel_booking

Use Case Diagram  
 ![Image text](https://github.com/yg375/mini_hotel_booking/blob/master/WebContent/1.png)  
## Requirement 1 (Booking a Room)  
UI Prototypes Design Requirements

Note: The HTML page colors and design provided here is just for reference. Associates are free to use any color of their choice.  
Screen 1(index.jsp)– Index Page
 ![Image text](https://github.com/yg375/mini_hotel_booking/blob/master/WebContent/2.png)
 
UI Design Considerations / Requirements  
■ Create  the links “Book a room” and "Show Booking Details"  
Screen 2(booking.jsp) –Book a Room  
 ![Image text](https://github.com/yg375/mini_hotel_booking/blob/master/WebContent/3.png)  
<p align="center">(a)	On Page Load</p>
Business Rules  
■	None of the fields should be empty    
■	Customer Name should contain only alphabets and space. Its length should be minimum 2 and maximum 30 characters.  
■	Email address should be valid  
■	Phone must be 10 digits only  
■	checkIn date should be greater than current date.  
■	checkOut date should not be less than checkIn date.  
■	All the datatype validation for the form fields should be done.Error message need to displayed to the associates  for invalid dataype entered.  
■	The mandatory condition needs to be checked when user clicks “Confirm Booking” button  
UI Design Considerations / Requirements  
■	Alignment should look similar as provided in the design  
■	Rooms should be dynamically populated to the booking.jsp page.  
![Image text](https://github.com/yg375/mini_hotel_booking/blob/master/WebContent/4.png)  
(a)	 Validation failure of all the fields  
 ![Image text](https://github.com/yg375/mini_hotel_booking/blob/master/WebContent/5.png)  
(b)	On Validation failure of some of the fields  
![Image text](https://github.com/yg375/mini_hotel_booking/blob/master/WebContent/6.png)  
(c)	On Validation failure of some of the fields  


Screen 3(bookingSuccess.jsp) – Booking Success  
 ![Image text](https://github.com/yg375/mini_hotel_booking/blob/master/WebContent/7.png)  
Business Rules  
■	Booking Numbershould be automatically generated  on successful booking.

UI Design Considerations / Requirements  
■	Booking Number should be displayed  for successful booking  
■	On click of  “Confirm Another Booking” link, the application should take the user to “booking.jsp”


## Requirement 2(Listing Booking Details)
Screen 4(bookingDetails.jsp) –Show Booking Details
  ![Image text](https://github.com/yg375/mini_hotel_booking/blob/master/WebContent/8.png)  
(a)	On Page Load  
Business Rules  
■	Display the list of booking details for the all the CA Enablement Assessments  
UI Design Considerations / Requirements  
■	checkIn date and checkOut date should be in "dd-MMM-yyyy" format.  

