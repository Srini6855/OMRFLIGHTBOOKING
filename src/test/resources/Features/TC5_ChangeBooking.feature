@Change
  Feature: Change Flight Booking Module

    @Change1
    Scenario Outline: Modify the created Booking Id- One way trip flight with one adult, one children and one infants including GST details (Card Type - Debit and Credit)
      Given User is on the OMR Branch hotel page
      When User enter "<userName>" and "<password>"
      Then User should verify success message after login "Welcome Srinivasu"
      When  User enter "<flyingFrom>", "<flingTo>", "<departDate>", "<adults>", "<children>" and "<infants>"
      Then User should verify that flights are displayed after search
      When User save first flight name and price
      And User select the first flight and accept the alert
      Then User should verify select success message
      When User enter "<firstName>", "<lastName>", "<DOB>", "<mobileNumber>", "<emailID>", "<passportID>", "<VISAID>", "<validDate>", "<occupation>", "<graduation>", "<passedOut>","<address>", "<country>", "<state>", "<city>", "<pincode>", "<airLineName>" and "<memberShipId>" for first passenger
      And User enter "<firstName>", "<lastName>", "<DOB>", "<mobileNumber>", "<emailID>", "<passportID>", "<VISAID>", "<validDate>", "<occupation>", "<graduation>", "<passedOut>","<address>", "<country>", "<state>", "<city>", "<pincode>", "<airLineName>" and "<memberShipId>" for second passenger
      And User enter "<firstName>", "<lastName>", "<DOB>", "<mobileNumber>", "<emailID>", "<passportID>", "<VISAID>", "<validDate>", "<occupation>", "<graduation>", "<passedOut>","<address>", "<country>", "<state>", "<city>", "<pincode>", "<airLineName>" and "<memberShipId>" for third passenger
      And User click next
      Then User should verify the success message after entering passenger details
      When User enter gst details "<gstNumber>", "<gstName>" and "<gstAddress>"
      And User select insurance details
      And User click coupon code
      Then User should verify the success message after entering gst details
      When User enter bag details "<noOfBags>" and "<totalWeight>"
      And User enter hotel details "<state>", "<city>", "<roomType>", "<checkIn>", "<checkOut>", "<noOfRooms>", "<noOfAdults>", "<noOfChildren>" and "<hotelName>"
      Then User should verify the success message after entering baggage details
      When User select "<itineraryDetails>", "<noOfTickets>" and "<carType>" for three passenger
      Then User should verify the success message after entering itinerary details
      When User select the flight seats for three passenger "<firstPassenger>", "<secondPassenger>" and "<thirdPassenger>"
      Then User should verify the success message after entering flight seat details
      When User enter the payment details, proceed with "<cardType>"
        | Select Card | Card No          | Card Name | Month | Year | CVV |
        | Visa        | 5555555555552222 | Srini     | July  | 2025 | 123 |
        | Visa        | 5555555555552223 | Srini     | July  | 2025 | 123 |
        | MasterCard  | 5555555555554444 | Srini     | July  | 2025 | 123 |
        | Amex        | 5555555555550000 | Srini     | July  | 2025 | 123 |
        | Discover    | 5555555555556666 | Srini     | July  | 2025 | 123 |
      Then User should verify the success message after booking "Booking is Confirmed" and save the orderId
      When User navigate to my booking page
      Then User should verify success message after navigate to My booking page "Bookings"
      When User search the order id
      Then User should verify that same booked order is present or not
      When User edit the departure date "modifyDepartureDate"
      Then User should verify the departure date modify success message ""

      Examples:
        | userName            | password        | firstPassenger | secondPassenger | thirdPassenger | flyingFrom | flingTo   | departDate | adults | children | infants | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address    | country | state      | city    | pincode | airLineName | memberShipId | firstName | lastName | DOB        | mobileNumber | emailID              | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | gstNumber  | gstName | gstAddress | noOfBags | totalWeight | state      | city       | roomType | checkIn    | checkOut   | noOfRooms | noOfAdults | noOfChildren | hotelName     | itineraryDetails  | noOfTickets | carType | cardType    |
        | srinipmps@gmail.com | 8@ndHEw5TfaLm5e | 1A             | 1B              | 1C             | Chennai    | Bengaluru | 27-06-2024 | 1      | 1        | 1       | Srinivasu | Aruchamy | 16-06-1998 | 9487715046   | srinipmps@gmail.com | SDETHIJKWN | VIKENKT | 16-07-2024 | TESTER     | 600112     | 2020      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9876543456   | Venkatesh | Don      | 16-07-1998 | 0987654321   | venkipmps@gmail.com | JHGFDSSDFS | VSVFGHJ | 16-07-2024 | IT         | B.E        | 2019      | 3/2 STRRET | India   | Tamil Nadu | Chennai | 600112  | AirIndia    | SDTHIKENJH   | Naveen    | Kumar    | 16-08-1998 | 0907654321   | vasnkipmps@gmail.com | JHGFDFSDFS | VSVRGHJ | 16-08-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9776533456   | HRTJKIENTH | SRINI   | STRRER     | 1        | 10          | Tamil Nadu | Coimbatore | Deluxe   | 02-07-2024 | 03-07-2024 | 1-One     | 1-One      | 1            | Hilton Deluxe | City Sight Seeing | 1           | BMW     | Debit Card  |
        | srinipmps@gmail.com | 8@ndHEw5TfaLm5e | 2A             | 2B              | 2C             | Chennai    | Bengaluru | 27-06-2024 | 1      | 1        | 1       | Srinivasu | Aruchamy | 16-06-1998 | 9487715046   | srinipmps@gmail.com | SDETHIJKWN | VIKENKT | 16-07-2024 | TESTER     | 600112     | 2020      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9876543456   | Venkatesh | Don      | 16-07-1998 | 0987654321   | venkipmps@gmail.com | JHGFDSSDFS | VSVFGHJ | 16-07-2024 | IT         | B.E        | 2019      | 3/2 STRRET | India   | Tamil Nadu | Chennai | 600112  | AirIndia    | SDTHIKENJH   | Naveen    | Kumar    | 16-08-1998 | 0907654321   | vasnkipmps@gmail.com | JHGFDFSDFS | VSVRGHJ | 16-08-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9776533456   | HRTJKIENTH | SRINI   | STRRER     | 1        | 10          | Tamil Nadu | Coimbatore | Deluxe   | 02-07-2024 | 03-07-2024 | 1-One     | 1-One      | 1            | Hilton Deluxe | City Sight Seeing | 1           | BMW     | Credit Card |