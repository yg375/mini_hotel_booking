## Use Case Diagram

![](RackMultipart20201029-4-54ek6e_html_4126de581aeed21a.png)

##

**Requirement 1 (Booking a Room)**

## UI Prototypes Design Requirements

**Note: The HTML page colors and design provided here is just for reference. Associates are free to use any color of their choice.**

#### Screen 1(index.jsp)– Index Page

![](RackMultipart20201029-4-54ek6e_html_c296d75401f34ed4.png)

##### UI Design Considerations / Requirements

- Create the links &quot;Book a room&quot; and &quot;Show Booking Details&quot;

#### Screen 2(booking.jsp) –Book a Room

![](RackMultipart20201029-4-54ek6e_html_2f3a3e59ec12a57.png)

1.
#### On Page Load

##### Business Rules

- None of the fields should be empty
- Customer Name should contain only alphabets and space. Its length should be minimum 2 and maximum 30 characters.
- Email address should be valid
- Phone must be 10 digits only
- checkIn date should be greater than current date.
- checkOut date should not be less than checkIn date.
- All the datatype validation for the form fields should be done.Error message need to displayed to the associates for invalid dataype entered.
- The mandatory condition needs to be checked when user clicks &quot; **Confirm Booking**&quot; button

##### UI Design Considerations / Requirements

- Alignment should look similar as provided in the design
- Rooms should be dynamically populated to the booking.jsp page.

| Key | Value |
| --- | --- |
| &quot;A/C Executive Double Room&quot; | &quot;A/C Executive Double Room&quot; |
| &quot;A/C Deluxe Double Room&quot; | &quot;A/C Deluxe Double Room&quot; |
| &quot;A/C Suite&quot; | &quot;A/C Suite&quot; |
| &quot;Dormitory&quot; | &quot;Dormitory&quot; |

![](RackMultipart20201029-4-54ek6e_html_d97841226ea15ee6.png)

1.
#### Validation failure of all the fields

![](RackMultipart20201029-4-54ek6e_html_9a44f8dee0ffbdff.png)

1.
#### On Validation failure of some of the fields

![](RackMultipart20201029-4-54ek6e_html_eee75e36c66c238d.png)

1.
#### On Validation failure of some of the fields

####

#### Screen 3(bookingSuccess.jsp) – Booking Success

![](RackMultipart20201029-4-54ek6e_html_2398c54c89b39b44.png)

##### Business Rules

- Booking Numbershould be automatically generated on successful booking.

##### UI Design Considerations / Requirements

- Booking Number should be displayed for successful booking
- On click of &quot;Confirm Another Booking&quot; link, the application should take the user to &quot;booking.jsp&quot;

**Requirement 2(Listing Booking Details)**

#### Screen 4(bookingDetails.jsp) –Show Booking Details

![](RackMultipart20201029-4-54ek6e_html_6cad1fce8a68594c.png)

1.
#### On Page Load

##### Business Rules

- Display the list of booking details for the all the CA Enablement Assessments

##### UI Design Considerations / Requirements

- checkIn date and checkOut date should be in &quot;dd-MMM-yyyy&quot; format.
