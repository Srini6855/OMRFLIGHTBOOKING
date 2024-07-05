@Book
Feature: Book flight module

  @Book1
  Scenario Outline: Book One way trip flight with one adult, one children and one infants including GST details (Card Type - Debit and Credit)
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

    Examples:
      | userName            | password        | firstPassenger | secondPassenger | thirdPassenger | flyingFrom | flingTo   | departDate | adults | children | infants | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address    | country | state      | city    | pincode | airLineName | memberShipId | firstName | lastName | DOB        | mobileNumber | emailID              | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | gstNumber  | gstName | gstAddress | noOfBags | totalWeight | state      | city       | roomType | checkIn    | checkOut   | noOfRooms | noOfAdults | noOfChildren | hotelName     | itineraryDetails  | noOfTickets | carType | cardType    |
      | srinipmps@gmail.com | 8@ndHEw5TfaLm5e | 1D             | 1E              | 1F             | Chennai    | Bengaluru | 27-07-2024 | 1      | 1        | 1       | Srinivasu | Aruchamy | 16-07-1998 | 9487715046   | srinipmps@gmail.com | SDETHIJKWN | VIKENKT | 16-07-2024 | TESTER     | 600112     | 2020      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9876543456   | Venkatesh | Don      | 16-07-1998 | 0987654321   | venkipmps@gmail.com | JHGFDSSDFS | VSVFGHJ | 16-07-2024 | IT         | B.E        | 2019      | 3/2 STRRET | India   | Tamil Nadu | Chennai | 600112  | AirIndia    | SDTHIKENJH   | Naveen    | Kumar    | 16-08-1998 | 0907654321   | vasnkipmps@gmail.com | JHGFDFSDFS | VSVRGHJ | 16-08-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9776533456   | HRTJKIENTH | SRINI   | STRRER     | 1        | 10          | Tamil Nadu | Coimbatore | Deluxe   | 02-07-2024 | 03-07-2024 | 1-One     | 1-One      | 1            | Hilton Deluxe | City Sight Seeing | 1           | BMW     | Debit Card  |
      | srinipmps@gmail.com | 8@ndHEw5TfaLm5e | 2D             | 2E              | 2F             | Chennai    | Bengaluru | 27-07-2024 | 1      | 1        | 1       | Srinivasu | Aruchamy | 16-07-1998 | 9487715046   | srinipmps@gmail.com | SDETHIJKWN | VIKENKT | 16-07-2024 | TESTER     | 600112     | 2020      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9876543456   | Venkatesh | Don      | 16-07-1998 | 0987654321   | venkipmps@gmail.com | JHGFDSSDFS | VSVFGHJ | 16-07-2024 | IT         | B.E        | 2019      | 3/2 STRRET | India   | Tamil Nadu | Chennai | 600112  | AirIndia    | SDTHIKENJH   | Naveen    | Kumar    | 16-08-1998 | 0907654321   | vasnkipmps@gmail.com | JHGFDFSDFS | VSVRGHJ | 16-08-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9776533456   | HRTJKIENTH | SRINI   | STRRER     | 1        | 10          | Tamil Nadu | Coimbatore | Deluxe   | 02-07-2024 | 03-07-2024 | 1-One     | 1-One      | 1            | Hilton Deluxe | City Sight Seeing | 1           | BMW     | Credit Card |


  @Book2
  Scenario Outline: Book One way trip flight with one adult and one children including GST details (Card Type - Debit and Credit )
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
    And User click next
    Then User should verify the success message after entering passenger details
    When User enter gst details "<gstNumber>", "<gstName>" and "<gstAddress>"
    And User select insurance details
    And User click coupon code
    Then User should verify the success message after entering gst details
    When User enter bag details "<noOfBags>" and "<totalWeight>"
    And User enter hotel details "<state>", "<city>", "<roomType>", "<checkIn>", "<checkOut>", "<noOfRooms>", "<noOfAdults>", "<noOfChildren>" and "<hotelName>"
    Then User should verify the success message after entering baggage details
    When User select "<itineraryDetails>", "<noOfTickets>" and "<carType>" for two passenger
    Then User should verify the success message after entering itinerary details
    When User select the flight seats for two passenger "<firstPassenger>" and "<secondPassenger>"
    Then User should verify the success message after entering flight seat details
    When User enter the payment details, proceed with "<cardType>"
      | Select Card | Card No          | Card Name | Month | Year | CVV |
      | Visa        | 5555555555552222 | Srini     | July  | 2025 | 123 |
      | Visa        | 5555555555552223 | Srini     | July  | 2025 | 123 |
      | MasterCard  | 5555555555554444 | Srini     | July  | 2025 | 123 |
      | Amex        | 5555555555550000 | Srini     | July  | 2025 | 123 |
      | Discover    | 5555555555556666 | Srini     | July  | 2025 | 123 |
    Then User should verify the success message after booking "Booking is Confirmed" and save the orderId

    Examples:
      | userName            | password        | flyingFrom | firstPassenger | secondPassenger | flingTo   | departDate | adults | children | infants | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | gstNumber  | gstName                | gstAddress   | noOfBags | totalWeight | state      | city       | roomType | checkIn    | checkOut   | noOfRooms | noOfAdults | noOfChildren | hotelName     | itineraryDetails  | noOfTickets | carType | cardType    |
      | srinipmps@gmail.com | 8@ndHEw5TfaLm5e | Chennai    | 3A             | 3B              | Bengaluru | 27-06-2024 | 1      | 1        | 0       | Srinivasu | Aruchamy | 16-06-1998 | 9487715046   | srinipmps@gmail.com | SDETHIJKWN | VSDFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9876543456   | Venkatesh | Don      | 16-07-1998 | 0987654321   | venkipmps@gmail.com | JHGFDSSDFS | VSVFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9776543456   | 9043592058 | Greens Tech OMR Branch | Thoraipakkam | 1        | 10          | Tamil Nadu | Coimbatore | Deluxe   | 02-07-2024 | 03-07-2024 | 1-One     | 1-One      | 1            | Hilton Deluxe | City Sight Seeing | 1           | BMW     | Debit Card  |
      | srinipmps@gmail.com | 8@ndHEw5TfaLm5e | Chennai    | 4A             | 4B              | Bengaluru | 27-06-2024 | 1      | 1        | 0       | Srinivasu | Aruchamy | 16-06-1998 | 9487715046   | srinipmps@gmail.com | SDETHIJKWN | VSDFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9876543456   | Venkatesh | Don      | 16-07-1998 | 0987654321   | venkipmps@gmail.com | JHGFDSSDFS | VSVFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9776543456   | 9043592058 | Greens Tech OMR Branch | Thoraipakkam | 1        | 10          | Tamil Nadu | Coimbatore | Deluxe   | 02-07-2024 | 03-07-2024 | 1-One     | 1-One      | 1            | Hilton Deluxe | City Sight Seeing | 1           | BMW     | Credit Card |

  @Book3
  Scenario Outline: Book One way trip flight with one adult including GST details (Card Type - Debit and Credit )
    Given User is on the OMR Branch hotel page
    When User enter "<userName>" and "<password>"
    Then User should verify success message after login "Welcome Srinivasu"
    When  User enter "<flyingFrom>", "<flingTo>", "<departDate>", "<adults>", "<children>" and "<infants>"
    Then User should verify that flights are displayed after search
    When User save first flight name and price
    And User select the first flight and accept the alert
    Then User should verify select success message
    When User enter "<firstName>", "<lastName>", "<DOB>", "<mobileNumber>", "<emailID>", "<passportID>", "<VISAID>", "<validDate>", "<occupation>", "<graduation>", "<passedOut>","<address>", "<country>", "<state>", "<city>", "<pincode>", "<airLineName>" and "<memberShipId>" for first passenger
    And User click next
    Then User should verify the success message after entering passenger details
    When User enter gst details "<gstNumber>", "<gstName>" and "<gstAddress>"
    And User select insurance details
    And User click coupon code
    Then User should verify the success message after entering gst details
    When User enter bag details "<noOfBags>" and "<totalWeight>"
    And User enter hotel details "<state>", "<city>", "<roomType>", "<checkIn>", "<checkOut>", "<noOfRooms>", "<noOfAdults>", "<noOfChildren>" and "<hotelName>"
    Then User should verify the success message after entering baggage details
    When User select "<itineraryDetails>", "<noOfTickets>" and "<carType>" for one passenger
    Then User should verify the success message after entering itinerary details
    When User select the flight seats for one passenger "<firstPassenger>"
    Then User should verify the success message after entering flight seat details
    When User enter the payment details, proceed with "<cardType>"
      | Select Card | Card No          | Card Name | Month | Year | CVV |
      | Visa        | 5555555555552222 | Srini     | July  | 2025 | 123 |
      | Visa        | 5555555555552223 | Srini     | July  | 2025 | 123 |
      | MasterCard  | 5555555555554444 | Srini     | July  | 2025 | 123 |
      | Amex        | 5555555555550000 | Srini     | July  | 2025 | 123 |
      | Discover    | 5555555555556666 | Srini     | July  | 2025 | 123 |
    Then User should verify the success message after booking "Booking is Confirmed" and save the orderId

    Examples:
      | firstPassenger | userName            | password        | flyingFrom | flingTo   | departDate | adults | children | infants | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | gstNumber  | gstName                | gstAddress   | noOfBags | totalWeight | state      | city       | roomType | checkIn    | checkOut   | noOfRooms | noOfAdults | noOfChildren | hotelName     | itineraryDetails  | noOfTickets | carType | cardType   |
      | 11D            | srinipmps@gmail.com | 8@ndHEw5TfaLm5e | Chennai    | Bengaluru | 27-06-2024 | 1      | 0        | 0       | Srini     | vasu     | 16-06-1998 | 9487715046   | srinipmps@gmail.com | SDETHIJKWN | VSDFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9876543456   | 9043592058 | Greens Tech OMR Branch | Thoraipakkam | 1        | 10          | Tamil Nadu | Coimbatore | Deluxe   | 02-07-2024 | 03-07-2024 | 1-One     | 1-One      | 1            | Hilton Deluxe | City Sight Seeing | 1           | BMW     | Debit Card |
      | 12D            | srinipmps@gmail.com | 8@ndHEw5TfaLm5e | Chennai    | Bengaluru | 27-06-2024 | 1      | 0        | 0       | Srinivasu | Aruchamy | 16-06-1998 | 9487715046   | srinipmps@gmail.com | SDETHIJKWN | VSDFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9876543456   | 9043592058 | Greens Tech OMR Branch | Thoraipakkam | 1        | 10          | Tamil Nadu | Coimbatore | Deluxe   | 02-07-2024 | 03-07-2024 | 1-One     | 1-One      | 1            | Hilton Deluxe | City Sight Seeing | 1           | BMW     | Credi Card |

  @Book4
  Scenario Outline: Book One way trip flight with one adult, one children and one infants without GST details (Card Type - Debit and Credit )
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

    Examples:
      | firstPassenger | secondPassenger | thirdPassenger | userName            | password        | flyingFrom | flingTo   | departDate | adults | children | infants | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | firstName | lastName | DOB        | mobileNumber | emailID              | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | noOfBags | totalWeight | state      | city       | roomType | checkIn    | checkOut   | noOfRooms | noOfAdults | noOfChildren | hotelName     | itineraryDetails  | noOfTickets | carType | cardType    |
      | 7A             | 7B              | 7C             | srinipmps@gmail.com | 8@ndHEw5TfaLm5e | Chennai    | Bengaluru | 27-06-2024 | 1      | 1        | 1       | Srinivasu | Aruchamy | 16-06-1998 | 9487715046   | srinipmps@gmail.com | SDETHIJKWN | VSDFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9876543456   | Venkatesh | Don      | 16-07-1998 | 0987654321   | venkipmps@gmail.com | JHGFDSSDFS | VSVFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9776543456   | Naveen    | Kumar    | 16-08-1998 | 0907654321   | vasnkipmps@gmail.com | JHGFDFSDFS | VSVRGHJ | 16-08-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9776533456   | 1        | 10          | Tamil Nadu | Coimbatore | Deluxe   | 02-07-2024 | 03-07-2024 | 1-One     | 1-One      | 1            | Hilton Deluxe | City Sight Seeing | 1           | BMW     | Debit Card  |
      | 8A             | 7B              | 7C             | srinipmps@gmail.com | 8@ndHEw5TfaLm5e | Chennai    | Bengaluru | 27-06-2024 | 1      | 1        | 1       | Srinivasu | Aruchamy | 16-06-1998 | 9487715046   | srinipmps@gmail.com | SDETHIJKWN | VSDFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9876543456   | Venkatesh | Don      | 16-07-1998 | 0987654321   | venkipmps@gmail.com | JHGFDSSDFS | VSVFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9776543456   | Naveen    | Kumar    | 16-08-1998 | 0907654321   | vasnkipmps@gmail.com | JHGFDFSDFS | VSVRGHJ | 16-08-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9776533456   | 1        | 10          | Tamil Nadu | Coimbatore | Deluxe   | 02-07-2024 | 03-07-2024 | 1-One     | 1-One      | 1            | Hilton Deluxe | City Sight Seeing | 1           | BMW     | Credit Card |

  @Book5
  Scenario Outline: Book One way trip flight with one adult and one children without GST details (Card Type - Debit and Credit )
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
    And User click next
    Then User should verify the success message after entering passenger details
    And User select insurance details
    And User click coupon code
    Then User should verify the success message after entering gst details
    When User enter bag details "<noOfBags>" and "<totalWeight>"
    And User enter hotel details "<state>", "<city>", "<roomType>", "<checkIn>", "<checkOut>", "<noOfRooms>", "<noOfAdults>", "<noOfChildren>" and "<hotelName>"
    Then User should verify the success message after entering baggage details
    When User select "<itineraryDetails>", "<noOfTickets>" and "<carType>" for two passenger
    Then User should verify the success message after entering itinerary details
    When User select the flight seats for two passenger "<firstPassenger>" and "<secondPassenger>"
    Then User should verify the success message after entering flight seat details
    When User enter the payment details, proceed with "<cardType>"
      | Select Card | Card No          | Card Name | Month | Year | CVV |
      | Visa        | 5555555555552222 | Srini     | July  | 2025 | 123 |
      | Visa        | 5555555555552223 | Srini     | July  | 2025 | 123 |
      | MasterCard  | 5555555555554444 | Srini     | July  | 2025 | 123 |
      | Amex        | 5555555555550000 | Srini     | July  | 2025 | 123 |
      | Discover    | 5555555555556666 | Srini     | July  | 2025 | 123 |
    Then User should verify the success message after booking "Booking is Confirmed" and save the orderId

    Examples:
      | firstPassenger | secondPassenger | userName            | password        | flyingFrom | flingTo   | departDate | adults | children | infants | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | noOfBags | totalWeight | state      | city       | roomType | checkIn    | checkOut   | noOfRooms | noOfAdults | noOfChildren | hotelName     | itineraryDetails  | noOfTickets | carType | cardType    |
      | 9A             | 9B              | srinipmps@gmail.com | 8@ndHEw5TfaLm5e | Chennai    | Bengaluru | 27-06-2024 | 1      | 1        | 0       | Srinivasu | Aruchamy | 16-06-1998 | 9487715046   | srinipmps@gmail.com | SDETHIJKWN | VSDFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9876543456   | Venkatesh | Don      | 16-07-1998 | 0987654321   | venkipmps@gmail.com | JHGFDSSDFS | VSVFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9776543456   | 1        | 10          | Tamil Nadu | Coimbatore | Deluxe   | 02-07-2024 | 03-07-2024 | 1-One     | 1-One      | 1            | Hilton Deluxe | City Sight Seeing | 1           | BMW     | Debit Card  |
      | 10A            | 10B             | srinipmps@gmail.com | 8@ndHEw5TfaLm5e | Chennai    | Bengaluru | 27-06-2024 | 1      | 1        | 0       | Srinivasu | Aruchamy | 16-06-1998 | 9487715046   | srinipmps@gmail.com | SDETHIJKWN | VSDFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9876543456   | Venkatesh | Don      | 16-07-1998 | 0987654321   | venkipmps@gmail.com | JHGFDSSDFS | VSVFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9776543456   | 1        | 10          | Tamil Nadu | Coimbatore | Deluxe   | 02-07-2024 | 03-07-2024 | 1-One     | 1-One      | 1            | Hilton Deluxe | City Sight Seeing | 1           | BMW     | Credit Card |

  @Book6
  Scenario Outline: Book One way trip flight with one adult without GST details (Card Type - Debit and Credit )
    Given User is on the OMR Branch hotel page
    When User enter "<userName>" and "<password>"
    Then User should verify success message after login "Welcome Srinivasu"
    When  User enter "<flyingFrom>", "<flingTo>", "<departDate>", "<adults>", "<children>" and "<infants>"
    Then User should verify that flights are displayed after search
    When User save first flight name and price
    And User select the first flight and accept the alert
    Then User should verify select success message
    When User enter "<firstName>", "<lastName>", "<DOB>", "<mobileNumber>", "<emailID>", "<passportID>", "<VISAID>", "<validDate>", "<occupation>", "<graduation>", "<passedOut>","<address>", "<country>", "<state>", "<city>", "<pincode>", "<airLineName>" and "<memberShipId>" for first passenger
    And User click next
    Then User should verify the success message after entering passenger details
    And User select insurance details
    And User click coupon code
    Then User should verify the success message after entering gst details
    When User enter bag details "<noOfBags>" and "<totalWeight>"
    And User enter hotel details "<state>", "<city>", "<roomType>", "<checkIn>", "<checkOut>", "<noOfRooms>", "<noOfAdults>", "<noOfChildren>" and "<hotelName>"
    Then User should verify the success message after entering baggage details
    When User select "<itineraryDetails>", "<noOfTickets>" and "<carType>" for one passenger
    Then User should verify the success message after entering itinerary details
    When User select the flight seats for one passenger "<firstPassenger>"
    Then User should verify the success message after entering flight seat details
    When User enter the payment details, proceed with "<cardType>"
      | Select Card | Card No          | Card Name | Month | Year | CVV |
      | Visa        | 5555555555552222 | Srini     | July  | 2025 | 123 |
      | Visa        | 5555555555552223 | Srini     | July  | 2025 | 123 |
      | MasterCard  | 5555555555554444 | Srini     | July  | 2025 | 123 |
      | Amex        | 5555555555550000 | Srini     | July  | 2025 | 123 |
      | Discover    | 5555555555556666 | Srini     | July  | 2025 | 123 |
    Then User should verify the success message after booking "Booking is Confirmed" and save the orderId

    Examples:
      | firstPassenger | userName            | password        | flyingFrom | flingTo   | departDate | adults | children | infants | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | noOfBags | totalWeight | state      | city       | roomType | checkIn    | checkOut   | noOfRooms | noOfAdults | noOfChildren | hotelName     | itineraryDetails  | noOfTickets | carType | cardType    |
      | 11A            | srinipmps@gmail.com | 8@ndHEw5TfaLm5e | Chennai    | Bengaluru | 27-07-2024 | 1      | 0        | 0       | Srinivasu | Aruchamy | 16-06-1998 | 9487715046   | srinipmps@gmail.com | SDETHIJKWN | VSDFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9876543456   | 1        | 10          | Tamil Nadu | Coimbatore | Deluxe   | 02-07-2024 | 03-07-2024 | 1-One     | 1-One      | 1            | Hilton Deluxe | City Sight Seeing | 1           | BMW     | Debit Card  |
      | 12A            | srinipmps@gmail.com | 8@ndHEw5TfaLm5e | Chennai    | Bengaluru | 27-07-2024 | 1      | 0        | 0       | Srinivasu | Aruchamy | 16-06-1998 | 9487715046   | srinipmps@gmail.com | SDETHIJKWN | VSDFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9876543456   | 1        | 10          | Tamil Nadu | Coimbatore | Deluxe   | 02-07-2024 | 03-07-2024 | 1-One     | 1-One      | 1            | Hilton Deluxe | City Sight Seeing | 1           | BMW     | Credit Card |


  @Book13
  Scenario Outline: Book Round trip flight with one adult, one children and one infants including GST details (Card Type - Debit and Credit )
    Given User is on the OMR Branch hotel page
    When User enter "<userName>" and "<password>"
    Then User should verify success message after login "Welcome Srinivasu"
    When  User enter "<flyingFrom>", "<flingTo>", "<departDate>", "<returnDate>", "<adults>", "<children>" and "<infants>"
    Then User should verify that flights are displayed after search
    When User save first flight name and price
    And User select the first flight for round trip and accept the alert
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
    When User select the flight seats for three passenger "<firstPassenger>", "<secondPassenger>", "<thirdPassenger>", "<firstPassengerReturn>", "<secondPassengerReturn>" and "<thirdPassengerReturn>"
    Then User should verify the success message after entering flight seat details
    When User enter the payment details, proceed with "<cardType>"
      | Select Card | Card No          | Card Name | Month | Year | CVV |
      | Visa        | 5555555555552222 | Srini     | July  | 2025 | 123 |
      | Visa        | 5555555555552223 | Srini     | July  | 2025 | 123 |
      | MasterCard  | 5555555555554444 | Srini     | July  | 2025 | 123 |
      | Amex        | 5555555555550000 | Srini     | July  | 2025 | 123 |
      | Discover    | 5555555555556666 | Srini     | July  | 2025 | 123 |
    Then User should verify the success message after booking "Booking is Confirmed" and save the orderId

    Examples:
      | firstPassenger | secondPassenger | thirdPassenger | firstPassengerReturn | secondPassengerReturn | thirdPassengerReturn | userName            | password        | flyingFrom | flingTo   | departDate | returnDate | adults | children | infants | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | firstName | lastName | DOB        | mobileNumber | emailID              | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | gstNumber  | gstName                | gstAddress   | noOfBags | totalWeight | state      | city       | roomType | checkIn    | checkOut   | noOfRooms | noOfAdults | noOfChildren | hotelName     | itineraryDetails  | noOfTickets | carType | cardType    |
      | 1D             | 1E              | 1F             | 1D                   | 1E                    | 1F                   | srinipmps@gmail.com | 8@ndHEw5TfaLm5e | Chennai    | Bengaluru | 27-06-2024 | 29-06-2024 | 1      | 1        | 1       | Srinivasu | Aruchamy | 16-06-1998 | 9487715046   | srinipmps@gmail.com | SDETHIJKWN | VSDFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9876543456   | Venkatesh | Don      | 16-07-1998 | 0987654321   | venkipmps@gmail.com | JHGFDSSDFS | VSVFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9776543456   | Naveen    | Kumar    | 16-08-1998 | 0907654321   | vasnkipmps@gmail.com | JHGFDFSDFS | VSVRGHJ | 16-08-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9776533456   | 9043592058 | Greens Tech OMR Branch | Thoraipakkam | 1        | 10          | Tamil Nadu | Coimbatore | Deluxe   | 02-07-2024 | 03-07-2024 | 1-One     | 1-One      | 1            | Hilton Deluxe | City Sight Seeing | 1           | BMW     | Debit Card  |
      | 2D             | 2E              | 2F             | 2D                   | 2E                    | 2F                   | srinipmps@gmail.com | 8@ndHEw5TfaLm5e | Chennai    | Bengaluru | 27-06-2024 | 29-06-2024 | 1      | 1        | 1       | Srinivasu | Aruchamy | 16-06-1998 | 9487715046   | srinipmps@gmail.com | SDETHIJKWN | VSDFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9876543456   | Venkatesh | Don      | 16-07-1998 | 0987654321   | venkipmps@gmail.com | JHGFDSSDFS | VSVFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9776543456   | Naveen    | Kumar    | 16-08-1998 | 0907654321   | vasnkipmps@gmail.com | JHGFDFSDFS | VSVRGHJ | 16-08-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9776533456   | 9043592058 | Greens Tech OMR Branch | Thoraipakkam | 1        | 10          | Tamil Nadu | Coimbatore | Deluxe   | 02-07-2024 | 03-07-2024 | 1-One     | 1-One      | 1            | Hilton Deluxe | City Sight Seeing | 1           | BMW     | Credit Card |

  @Book14
  Scenario Outline: Book trip flight with one adult and one children including GST details (Card Type - Debit and Credit )
    Given User is on the OMR Branch hotel page
    When User enter "<userName>" and "<password>"
    Then User should verify success message after login "Welcome Srinivasu"
    When  User enter "<flyingFrom>", "<flingTo>", "<departDate>", "<adults>", "<children>" and "<infants>"
    Then User should verify that flights are displayed after search
    When User save first flight name and price
    And User select the first flight for round trip and accept the alert
    Then User should verify select success message
    When User enter "<firstName>", "<lastName>", "<DOB>", "<mobileNumber>", "<emailID>", "<passportID>", "<VISAID>", "<validDate>", "<occupation>", "<graduation>", "<passedOut>","<address>", "<country>", "<state>", "<city>", "<pincode>", "<airLineName>" and "<memberShipId>" for first passenger
    And User enter "<firstName>", "<lastName>", "<DOB>", "<mobileNumber>", "<emailID>", "<passportID>", "<VISAID>", "<validDate>", "<occupation>", "<graduation>", "<passedOut>","<address>", "<country>", "<state>", "<city>", "<pincode>", "<airLineName>" and "<memberShipId>" for second passenger
    And User click next
    Then User should verify the success message after entering passenger details
    When User enter gst details "<gstNumber>", "<gstName>" and "<gstAddress>"
    And User select insurance details
    And User click coupon code
    Then User should verify the success message after entering gst details
    When User enter bag details "<noOfBags>" and "<totalWeight>"
    And User enter hotel details "<state>", "<city>", "<roomType>", "<checkIn>", "<checkOut>", "<noOfRooms>", "<noOfAdults>", "<noOfChildren>" and "<hotelName>"
    Then User should verify the success message after entering baggage details
    When User select "<itineraryDetails>", "<noOfTickets>" and "<carType>" for two passenger
    Then User should verify the success message after entering itinerary details
    When User select the flight seats for two passenger "<firstPassenger>", "<secondPassenger>", "<firstPassengerReturn>" and "<secondPassengerReturn>"
    Then User should verify the success message after entering flight seat details
    When User enter the payment details, proceed with "<cardType>"
      | Select Card | Card No          | Card Name | Month | Year | CVV |
      | Visa        | 5555555555552222 | Srini     | July  | 2025 | 123 |
      | Visa        | 5555555555552223 | Srini     | July  | 2025 | 123 |
      | MasterCard  | 5555555555554444 | Srini     | July  | 2025 | 123 |
      | Amex        | 5555555555550000 | Srini     | July  | 2025 | 123 |
      | Discover    | 5555555555556666 | Srini     | July  | 2025 | 123 |
    Then User should verify the success message after booking "Booking is Confirmed" and save the orderId

    Examples:
      | firstPassenger | secondPassenger | firstPassengerReturn | secondPassengerReturn | userName            | password        | flyingFrom | flingTo   | departDate | adults | children | infants | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | gstNumber  | gstName                | gstAddress   | noOfBags | totalWeight | state      | city       | roomType | checkIn    | checkOut   | noOfRooms | noOfAdults | noOfChildren | hotelName     | itineraryDetails  | noOfTickets | carType | cardType    |
      | 3D             | 3E              | 3D                   | 3E                    | srinipmps@gmail.com | 8@ndHEw5TfaLm5e | Chennai    | Bengaluru | 27-06-2024 | 1      | 1        | 0       | Srinivasu | Aruchamy | 16-06-1998 | 9487715046   | srinipmps@gmail.com | SDETHIJKWN | VSDFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9876543456   | Venkatesh | Don      | 16-07-1998 | 0987654321   | venkipmps@gmail.com | JHGFDSSDFS | VSVFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9776543456   | 9043592058 | Greens Tech OMR Branch | Thoraipakkam | 1        | 10          | Tamil Nadu | Coimbatore | Deluxe   | 02-07-2024 | 03-07-2024 | 1-One     | 1-One      | 1            | Hilton Deluxe | City Sight Seeing | 1           | BMW     | Debit Card  |
      | 4D             | 4E              | 4D                   | 4E                    | srinipmps@gmail.com | 8@ndHEw5TfaLm5e | Chennai    | Bengaluru | 27-06-2024 | 1      | 1        | 0       | Srinivasu | Aruchamy | 16-06-1998 | 9487715046   | srinipmps@gmail.com | SDETHIJKWN | VSDFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9876543456   | Venkatesh | Don      | 16-07-1998 | 0987654321   | venkipmps@gmail.com | JHGFDSSDFS | VSVFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9776543456   | 9043592058 | Greens Tech OMR Branch | Thoraipakkam | 1        | 10          | Tamil Nadu | Coimbatore | Deluxe   | 02-07-2024 | 03-07-2024 | 1-One     | 1-One      | 1            | Hilton Deluxe | City Sight Seeing | 1           | BMW     | Credit Card |

  @Book15
  Scenario Outline: Book Round trip flight with one adult including GST details (Card Type - Debit and Credit )
    Given User is on the OMR Branch hotel page
    When User enter "<userName>" and "<password>"
    Then User should verify success message after login "Welcome Srinivasu"
    When  User enter "<flyingFrom>", "<flingTo>", "<departDate>", "<adults>", "<children>" and "<infants>"
    Then User should verify that flights are displayed after search
    When User save first flight name and price
    And User select the first flight for round trip and accept the alert
    Then User should verify select success message
    When User enter "<firstName>", "<lastName>", "<DOB>", "<mobileNumber>", "<emailID>", "<passportID>", "<VISAID>", "<validDate>", "<occupation>", "<graduation>", "<passedOut>","<address>", "<country>", "<state>", "<city>", "<pincode>", "<airLineName>" and "<memberShipId>" for first passenger
    And User click next
    Then User should verify the success message after entering passenger details
    When User enter gst details "<gstNumber>", "<gstName>" and "<gstAddress>"
    And User select insurance details
    And User click coupon code
    Then User should verify the success message after entering gst details
    When User enter bag details "<noOfBags>" and "<totalWeight>"
    And User enter hotel details "<state>", "<city>", "<roomType>", "<checkIn>", "<checkOut>", "<noOfRooms>", "<noOfAdults>", "<noOfChildren>" and "<hotelName>"
    Then User should verify the success message after entering baggage details
    When User select "<itineraryDetails>", "<noOfTickets>" and "<carType>" for one passenger
    Then User should verify the success message after entering itinerary details
    When User select the flight seats for one passenger "<firstPassenger>" and "<firstPassengerReturn>"
    Then User should verify the success message after entering flight seat details
    When User enter the payment details, proceed with "<cardType>"
      | Select Card | Card No          | Card Name | Month | Year | CVV |
      | Visa        | 5555555555552222 | Srini     | July  | 2025 | 123 |
      | Visa        | 5555555555552223 | Srini     | July  | 2025 | 123 |
      | MasterCard  | 5555555555554444 | Srini     | July  | 2025 | 123 |
      | Amex        | 5555555555550000 | Srini     | July  | 2025 | 123 |
      | Discover    | 5555555555556666 | Srini     | July  | 2025 | 123 |
    Then User should verify the success message after booking "Booking is Confirmed" and save the orderId

    Examples:
      | firstPassenger | firstPassengerReturn | userName            | password        | flyingFrom | flingTo   | departDate | adults | children | infants | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | gstNumber  | gstName                | gstAddress   | noOfBags | totalWeight | state      | city       | roomType | checkIn    | checkOut   | noOfRooms | noOfAdults | noOfChildren | hotelName     | itineraryDetails  | noOfTickets | carType | cardType    |
      | 5D             | 5D                   | srinipmps@gmail.com | 8@ndHEw5TfaLm5e | Chennai    | Bengaluru | 27-06-2024 | 1      | 0        | 0       | Srinivasu | Aruchamy | 16-06-1998 | 9487715046   | srinipmps@gmail.com | SDETHIJKWN | VSDFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9876543456   | 9043592058 | Greens Tech OMR Branch | Thoraipakkam | 1        | 10          | Tamil Nadu | Coimbatore | Deluxe   | 02-07-2024 | 03-07-2024 | 1-One     | 1-One      | 1            | Hilton Deluxe | City Sight Seeing | 1           | BMW     | Debit Card  |
      | 6D             | 6D                   | srinipmps@gmail.com | 8@ndHEw5TfaLm5e | Chennai    | Bengaluru | 27-06-2024 | 1      | 0        | 0       | Srinivasu | Aruchamy | 16-06-1998 | 9487715046   | srinipmps@gmail.com | SDETHIJKWN | VSDFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9876543456   | 9043592058 | Greens Tech OMR Branch | Thoraipakkam | 1        | 10          | Tamil Nadu | Coimbatore | Deluxe   | 02-07-2024 | 03-07-2024 | 1-One     | 1-One      | 1            | Hilton Deluxe | City Sight Seeing | 1           | BMW     | Credit Card |

  @Book16
  Scenario Outline: Book Round trip flight with one adult, one children and one infants without GST details (Card Type - Debit and Credit )
    Given User is on the OMR Branch hotel page
    When User enter "<userName>" and "<password>"
    Then User should verify success message after login "Welcome Srinivasu"
    When  User enter "<flyingFrom>", "<flingTo>", "<departDate>", "<returnDate>", "<adults>", "<children>" and "<infants>"
    Then User should verify that flights are displayed after search
    When User save first flight name and price
    And User select the first flight for round trip and accept the alert
    Then User should verify select success message
    When User enter "<firstName>", "<lastName>", "<DOB>", "<mobileNumber>", "<emailID>", "<passportID>", "<VISAID>", "<validDate>", "<occupation>", "<graduation>", "<passedOut>","<address>", "<country>", "<state>", "<city>", "<pincode>", "<airLineName>" and "<memberShipId>" for first passenger
    And User enter "<firstName>", "<lastName>", "<DOB>", "<mobileNumber>", "<emailID>", "<passportID>", "<VISAID>", "<validDate>", "<occupation>", "<graduation>", "<passedOut>","<address>", "<country>", "<state>", "<city>", "<pincode>", "<airLineName>" and "<memberShipId>" for second passenger
    And User enter "<firstName>", "<lastName>", "<DOB>", "<mobileNumber>", "<emailID>", "<passportID>", "<VISAID>", "<validDate>", "<occupation>", "<graduation>", "<passedOut>","<address>", "<country>", "<state>", "<city>", "<pincode>", "<airLineName>" and "<memberShipId>" for third passenger
    And User click next
    Then User should verify the success message after entering passenger details
    And User select insurance details
    And User click coupon code
    Then User should verify the success message after entering gst details
    When User enter bag details "<noOfBags>" and "<totalWeight>"
    And User enter hotel details "<state>", "<city>", "<roomType>", "<checkIn>", "<checkOut>", "<noOfRooms>", "<noOfAdults>", "<noOfChildren>" and "<hotelName>"
    Then User should verify the success message after entering baggage details
    When User select "<itineraryDetails>", "<noOfTickets>" and "<carType>" for three passenger
    Then User should verify the success message after entering itinerary details
    When User select the flight seats for three passenger "<firstPassenger>", "<secondPassenger>", "<thirdPassenger>", "<firstPassengerReturn>", "<secondPassengerReturn>" and "<thirdPassengerReturn>"
    Then User should verify the success message after entering flight seat details
    When User enter the payment details, proceed with "<cardType>"
      | Select Card | Card No          | Card Name | Month | Year | CVV |
      | Visa        | 5555555555552222 | Srini     | July  | 2025 | 123 |
      | Visa        | 5555555555552223 | Srini     | July  | 2025 | 123 |
      | MasterCard  | 5555555555554444 | Srini     | July  | 2025 | 123 |
      | Amex        | 5555555555550000 | Srini     | July  | 2025 | 123 |
      | Discover    | 5555555555556666 | Srini     | July  | 2025 | 123 |
    Then User should verify the success message after booking "Booking is Confirmed" and save the orderId

    Examples:
      | firstPassenger | secondPassenger | thirdPassenger | firstPassengerReturn | secondPassengerReturn | thirdPassengerReturn | userName            | password        | flyingFrom | flingTo   | departDate | returnDate | adults | children | infants | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | firstName | lastName | DOB        | mobileNumber | emailID              | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | noOfBags | totalWeight | state      | city       | roomType | checkIn    | checkOut   | noOfRooms | noOfAdults | noOfChildren | hotelName     | itineraryDetails  | noOfTickets | carType | cardType    |
      | 7D             | 7E              | 7F             | 7D                   | 7E                    | 7F                   | srinipmps@gmail.com | 8@ndHEw5TfaLm5e | Chennai    | Bengaluru | 27-06-2024 | 29-06-2024 | 1      | 1        | 1       | Srinivasu | Aruchamy | 16-06-1998 | 9487715046   | srinipmps@gmail.com | SDETHIJKWN | VSDFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9876543456   | Venkatesh | Don      | 16-07-1998 | 0987654321   | venkipmps@gmail.com | JHGFDSSDFS | VSVFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9776543456   | Naveen    | Kumar    | 16-08-1998 | 0907654321   | vasnkipmps@gmail.com | JHGFDFSDFS | VSVRGHJ | 16-08-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9776533456   | 1        | 10          | Tamil Nadu | Coimbatore | Deluxe   | 02-07-2024 | 03-07-2024 | 1-One     | 1-One      | 1            | Hilton Deluxe | City Sight Seeing | 1           | BMW     | Debit Card  |
      | 8D             | 8E              | 8F             | 8D                   | 8E                    | 8F                   | srinipmps@gmail.com | 8@ndHEw5TfaLm5e | Chennai    | Bengaluru | 27-06-2024 | 29-06-2024 | 1      | 1        | 1       | Srinivasu | Aruchamy | 16-06-1998 | 9487715046   | srinipmps@gmail.com | SDETHIJKWN | VSDFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9876543456   | Venkatesh | Don      | 16-07-1998 | 0987654321   | venkipmps@gmail.com | JHGFDSSDFS | VSVFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9776543456   | Naveen    | Kumar    | 16-08-1998 | 0907654321   | vasnkipmps@gmail.com | JHGFDFSDFS | VSVRGHJ | 16-08-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9776533456   | 1        | 10          | Tamil Nadu | Coimbatore | Deluxe   | 02-07-2024 | 03-07-2024 | 1-One     | 1-One      | 1            | Hilton Deluxe | City Sight Seeing | 1           | BMW     | Credit Card |

  @Book17
  Scenario Outline: Book Round trip flight with one adult and one children without GST details (Card Type - Debit and Credit )
    Given User is on the OMR Branch hotel page
    When User enter "<userName>" and "<password>"
    Then User should verify success message after login "Welcome Srinivasu"
    When  User enter "<flyingFrom>", "<flingTo>", "<departDate>", "<adults>", "<children>" and "<infants>"
    Then User should verify that flights are displayed after search
    When User save first flight name and price
    And User select the first flight for round trip and accept the alert
    Then User should verify select success message
    When User enter "<firstName>", "<lastName>", "<DOB>", "<mobileNumber>", "<emailID>", "<passportID>", "<VISAID>", "<validDate>", "<occupation>", "<graduation>", "<passedOut>","<address>", "<country>", "<state>", "<city>", "<pincode>", "<airLineName>" and "<memberShipId>" for first passenger
    And User enter "<firstName>", "<lastName>", "<DOB>", "<mobileNumber>", "<emailID>", "<passportID>", "<VISAID>", "<validDate>", "<occupation>", "<graduation>", "<passedOut>","<address>", "<country>", "<state>", "<city>", "<pincode>", "<airLineName>" and "<memberShipId>" for second passenger
    And User click next
    Then User should verify the success message after entering passenger details
    And User select insurance details
    And User click coupon code
    Then User should verify the success message after entering gst details
    When User enter bag details "<noOfBags>" and "<totalWeight>"
    And User enter hotel details "<state>", "<city>", "<roomType>", "<checkIn>", "<checkOut>", "<noOfRooms>", "<noOfAdults>", "<noOfChildren>" and "<hotelName>"
    Then User should verify the success message after entering baggage details
    When User select "<itineraryDetails>", "<noOfTickets>" and "<carType>" for two passenger
    Then User should verify the success message after entering itinerary details
    When User select the flight seats for two passenger "<firstPassenger>", "<secondPassenger>", "<firstPassengerReturn>" and "<secondPassengerReturn>"
    Then User should verify the success message after entering flight seat details
    When User enter the payment details, proceed with "<cardType>"
      | Select Card | Card No          | Card Name | Month | Year | CVV |
      | Visa        | 5555555555552222 | Srini     | July  | 2025 | 123 |
      | Visa        | 5555555555552223 | Srini     | July  | 2025 | 123 |
      | MasterCard  | 5555555555554444 | Srini     | July  | 2025 | 123 |
      | Amex        | 5555555555550000 | Srini     | July  | 2025 | 123 |
      | Discover    | 5555555555556666 | Srini     | July  | 2025 | 123 |
    Then User should verify the success message after booking "Booking is Confirmed" and save the orderId

    Examples:
      | firstPassenger | secondPassenger | firstPassengerReturn | secondPassengerReturn | userName            | password        | flyingFrom | flingTo   | departDate | adults | children | infants | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | noOfBags | totalWeight | state      | city       | roomType | checkIn    | checkOut   | noOfRooms | noOfAdults | noOfChildren | hotelName     | itineraryDetails  | noOfTickets | carType | cardType    |
      | 9D             | 9E              | 9D                   | 9E                    | srinipmps@gmail.com | 8@ndHEw5TfaLm5e | Chennai    | Bengaluru | 27-06-2024 | 1      | 1        | 0       | Srinivasu | Aruchamy | 16-06-1998 | 9487715046   | srinipmps@gmail.com | SDETHIJKWN | VSDFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9876543456   | Venkatesh | Don      | 16-07-1998 | 0987654321   | venkipmps@gmail.com | JHGFDSSDFS | VSVFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9776543456   | 1        | 10          | Tamil Nadu | Coimbatore | Deluxe   | 02-07-2024 | 03-07-2024 | 1-One     | 1-One      | 1            | Hilton Deluxe | City Sight Seeing | 1           | BMW     | Debit Card  |
      | 10D            | 10E             | 10D                  | 10E                   | srinipmps@gmail.com | 8@ndHEw5TfaLm5e | Chennai    | Bengaluru | 27-06-2024 | 1      | 1        | 0       | Srinivasu | Aruchamy | 16-06-1998 | 9487715046   | srinipmps@gmail.com | SDETHIJKWN | VSDFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9876543456   | Venkatesh | Don      | 16-07-1998 | 0987654321   | venkipmps@gmail.com | JHGFDSSDFS | VSVFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9776543456   | 1        | 10          | Tamil Nadu | Coimbatore | Deluxe   | 02-07-2024 | 03-07-2024 | 1-One     | 1-One      | 1            | Hilton Deluxe | City Sight Seeing | 1           | BMW     | Credit Card |

  @Book18
  Scenario Outline: Book Round trip flight with one adult without GST details (Card Type - Debit and Credit )
    Given User is on the OMR Branch hotel page
    When User enter "<userName>" and "<password>"
    Then User should verify success message after login "Welcome Srinivasu"
    When  User enter "<flyingFrom>", "<flingTo>", "<departDate>", "<adults>", "<children>" and "<infants>"
    Then User should verify that flights are displayed after search
    When User save first flight name and price
    And User select the first flight for round trip and accept the alert
    Then User should verify select success message
    When User enter "<firstName>", "<lastName>", "<DOB>", "<mobileNumber>", "<emailID>", "<passportID>", "<VISAID>", "<validDate>", "<occupation>", "<graduation>", "<passedOut>","<address>", "<country>", "<state>", "<city>", "<pincode>", "<airLineName>" and "<memberShipId>" for first passenger
    And User click next
    Then User should verify the success message after entering passenger details
    And User select insurance details
    And User click coupon code
    Then User should verify the success message after entering gst details
    When User enter bag details "<noOfBags>" and "<totalWeight>"
    And User enter hotel details "<state>", "<city>", "<roomType>", "<checkIn>", "<checkOut>", "<noOfRooms>", "<noOfAdults>", "<noOfChildren>" and "<hotelName>"
    Then User should verify the success message after entering baggage details
    When User select "<itineraryDetails>", "<noOfTickets>" and "<carType>" for one passenger
    Then User should verify the success message after entering itinerary details
    When User select the flight seats for one passenger "<firstPassenger>" and "<firstPassengerReturn>"
    Then User should verify the success message after entering flight seat details
    When User enter the payment details, proceed with "<cardType>"
      | Select Card | Card No          | Card Name | Month | Year | CVV |
      | Visa        | 5555555555552222 | Srini     | July  | 2025 | 123 |
      | Visa        | 5555555555552223 | Srini     | July  | 2025 | 123 |
      | MasterCard  | 5555555555554444 | Srini     | July  | 2025 | 123 |
      | Amex        | 5555555555550000 | Srini     | July  | 2025 | 123 |
      | Discover    | 5555555555556666 | Srini     | July  | 2025 | 123 |
    Then User should verify the success message after booking "Booking is Confirmed" and save the orderId

    Examples:
      | firstPassenger | firstPassengerReturn | userName            | password        | flyingFrom | flingTo   | departDate | adults | children | infants | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | gstNumber  | gstName                | gstAddress   | noOfBags | totalWeight | state      | city       | roomType | checkIn    | checkOut   | noOfRooms | noOfAdults | noOfChildren | hotelName     | itineraryDetails  | noOfTickets | carType | cardType    |
      | 11D            | 11D                  | srinipmps@gmail.com | 8@ndHEw5TfaLm5e | Chennai    | Bengaluru | 27-06-2024 | 1      | 0        | 0       | Srinivasu | Aruchamy | 16-06-1998 | 9487715046   | srinipmps@gmail.com | SDETHIJKWN | VSDFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9876543456   | 9043592058 | Greens Tech OMR Branch | Thoraipakkam | 1        | 10          | Tamil Nadu | Coimbatore | Deluxe   | 02-07-2024 | 03-07-2024 | 1-One     | 1-One      | 1            | Hilton Deluxe | City Sight Seeing | 1           | BMW     | Debit Card  |
      | 12D            | 12D                  | srinipmps@gmail.com | 8@ndHEw5TfaLm5e | Chennai    | Bengaluru | 27-06-2024 | 1      | 0        | 0       | Srinivasu | Aruchamy | 16-06-1998 | 9487715046   | srinipmps@gmail.com | SDETHIJKWN | VSDFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9876543456   | 9043592058 | Greens Tech OMR Branch | Thoraipakkam | 1        | 10          | Tamil Nadu | Coimbatore | Deluxe   | 02-07-2024 | 03-07-2024 | 1-One     | 1-One      | 1            | Hilton Deluxe | City Sight Seeing | 1           | BMW     | Credit Card |

  @Book25
  Scenario Outline: Book flight without entering any details in add passenger details page
    Given User is on the OMR Branch hotel page
    When User enter "<userName>" and "<password>"
    Then User should verify success message after login "Welcome Srinivasu"
    When  User enter "<flyingFrom>", "<flingTo>", "<departDate>", "<adults>", "<children>" and "<infants>"
    Then User should verify that flights are displayed after search
    When User save first flight name and price
    And User select the first flight and accept the alert
    Then User should verify select success message
    When User click next without entering any fields in add passenger details page
    Then User verify the error message "Please select a valid title (Mr, Mrs, or Miss)", "Please Enter the First Name", "Please Enter the Last Name","Please select the gender", "Please Enter the dob", "Please Enter the Phone Number", "Please Enter the Email", "Please Enter the Passport Number", "Please Enter the VISA", "Please Enter the valid Date", "Please Enter the Occupation", "Please Enter the graduation", "Please Enter the passed out", "Please Enter the Address", "Please Select the Country", "Please Select the State", "Please Select the city", "Please enter a 6-digit number", "Please Select the Airline Name" and "Please enter a 6-digit number"

    Examples:
      | userName            | password        | flyingFrom | flingTo   | departDate | adults | children | infants |
      | srinipmps@gmail.com | 8@ndHEw5TfaLm5e | Chennai    | Bengaluru | 27-06-2024 | 1      | 0        | 0       |

  @Book26
  Scenario Outline: Book flight without entering any details in GST information page
    Given User is on the OMR Branch hotel page
    When User enter "<userName>" and "<password>"
    Then User should verify success message after login "Welcome Srinivasu"
    When  User enter "<flyingFrom>", "<flingTo>", "<departDate>", "<adults>", "<children>" and "<infants>"
    Then User should verify that flights are displayed after search
    When User save first flight name and price
    And User select the first flight and accept the alert
    Then User should verify select success message
    When User enter "<firstName>", "<lastName>", "<DOB>", "<mobileNumber>", "<emailID>", "<passportID>", "<VISAID>", "<validDate>", "<occupation>", "<graduation>", "<passedOut>","<address>", "<country>", "<state>", "<city>", "<pincode>", "<airLineName>" and "<memberShipId>" for first passenger
    And User click next
    Then User should verify the success message after entering passenger details
    When User click gst Details and click next without entering any details
    Then User should verify the error message "Please provide your GST Registration No.", "Please provide your registered Company Name" and "Please provide your registered Company Address"

    Examples:
      | userName            | password        | flyingFrom | flingTo   | departDate | adults | children | infants | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId |
      | srinipmps@gmail.com | 8@ndHEw5TfaLm5e | Chennai    | Bengaluru | 27-06-2024 | 1      | 0        | 0       | Srinivasu | Aruchamy | 16-06-1998 | 9487715046   | srinipmps@gmail.com | SDETHIJKWN | VSDFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9876543456   |

  @Book27
  Scenario Outline: Book flight without entering any details in add Baggage details page
    Given User is on the OMR Branch hotel page
    When User enter "<userName>" and "<password>"
    Then User should verify success message after login "Welcome Srinivasu"
    When  User enter "<flyingFrom>", "<flingTo>", "<departDate>", "<adults>", "<children>" and "<infants>"
    Then User should verify that flights are displayed after search
    When User save first flight name and price
    And User select the first flight and accept the alert
    Then User should verify select success message
    When User enter "<firstName>", "<lastName>", "<DOB>", "<mobileNumber>", "<emailID>", "<passportID>", "<VISAID>", "<validDate>", "<occupation>", "<graduation>", "<passedOut>","<address>", "<country>", "<state>", "<city>", "<pincode>", "<airLineName>" and "<memberShipId>" for first passenger
    And User click next
    Then User should verify the success message after entering passenger details
    When User enter gst details "<gstNumber>", "<gstName>" and "<gstAddress>"
    And User select insurance details
    And User click coupon code
    Then User should verify the success message after entering gst details
    When User click next without entering details in add baggage details page
    Then User should verify the error message "Please Enter the Number of Bag", "Please Enter the Total Weight", "Please Select State", "Please select city", "Please select Check-in date", "Please select Check-out date", "Please select no. of rooms" and "Please select no. of adults"

    Examples:
      | userName            | password        | flyingFrom | flingTo   | departDate | adults | children | infants | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | gstNumber  | gstName                | gstAddress   |
      | srinipmps@gmail.com | 8@ndHEw5TfaLm5e | Chennai    | Bengaluru | 27-06-2024 | 1      | 0        | 0       | Srinivasu | Aruchamy | 16-06-1998 | 9487715046   | srinipmps@gmail.com | SDETHIJKWN | VSDFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9876543456   | 9043592058 | Greens Tech OMR Branch | Thoraipakkam |

  @Book28
  Scenario Outline: Book flight without entering any fields in add itinerary details page
    Given User is on the OMR Branch hotel page
    When User enter "<userName>" and "<password>"
    Then User should verify success message after login "Welcome Srinivasu"
    When  User enter "<flyingFrom>", "<flingTo>", "<departDate>", "<adults>", "<children>" and "<infants>"
    Then User should verify that flights are displayed after search
    When User save first flight name and price
    And User select the first flight and accept the alert
    Then User should verify select success message
    When User enter "<firstName>", "<lastName>", "<DOB>", "<mobileNumber>", "<emailID>", "<passportID>", "<VISAID>", "<validDate>", "<occupation>", "<graduation>", "<passedOut>","<address>", "<country>", "<state>", "<city>", "<pincode>", "<airLineName>" and "<memberShipId>" for first passenger
    And User click next
    Then User should verify the success message after entering passenger details
    When User enter gst details "<gstNumber>", "<gstName>" and "<gstAddress>"
    And User select insurance details
    And User click coupon code
    Then User should verify the success message after entering gst details
    When User enter bag details "<noOfBags>" and "<totalWeight>"
    And User enter hotel details "<state>", "<city>", "<roomType>", "<checkIn>", "<checkOut>", "<noOfRooms>", "<noOfAdults>", "<noOfChildren>" and "<hotelName>"
    Then User should verify the success message after entering baggage details
    When User click next without entering any fields in add itinerary details page
    Then User should verify the error message "Please Select the itinerary Name" and "Please Enter the Number of ticket"

    Examples:
      | userName            | password        | flyingFrom | flingTo   | departDate | adults | children | infants | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | gstNumber  | gstName                | gstAddress   | noOfBags | totalWeight | state      | city       | roomType | checkIn    | checkOut   | noOfRooms | noOfAdults | noOfChildren | hotelName     |
      | srinipmps@gmail.com | 8@ndHEw5TfaLm5e | Chennai    | Bengaluru | 01-07-2024 | 1      | 0        | 0       | Srinivasu | Aruchamy | 16-06-1998 | 9487715046   | srinipmps@gmail.com | SDETHIJKWN | VSDFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9876543456   | 9043592058 | Greens Tech OMR Branch | Thoraipakkam | 1        | 10          | Tamil Nadu | Coimbatore | Deluxe   | 02-07-2024 | 03-07-2024 | 1-One     | 1-One      | 1            | Hilton Deluxe |

  @Book29
  Scenario Outline: Book flight without entering any fields in Payment page
    Given User is on the OMR Branch hotel page
    When User enter "<userName>" and "<password>"
    Then User should verify success message after login "Welcome Srinivasu"
    When  User enter "<flyingFrom>", "<flingTo>", "<departDate>", "<adults>", "<children>" and "<infants>"
    Then User should verify that flights are displayed after search
    When User save first flight name and price
    And User select the first flight and accept the alert
    Then User should verify select success message
    When User enter "<firstName>", "<lastName>", "<DOB>", "<mobileNumber>", "<emailID>", "<passportID>", "<VISAID>", "<validDate>", "<occupation>", "<graduation>", "<passedOut>","<address>", "<country>", "<state>", "<city>", "<pincode>", "<airLineName>" and "<memberShipId>" for first passenger
    And User click next
    Then User should verify the success message after entering passenger details
    When User enter gst details "<gstNumber>", "<gstName>" and "<gstAddress>"
    And User select insurance details
    And User click coupon code
    Then User should verify the success message after entering gst details
    When User enter bag details "<noOfBags>" and "<totalWeight>"
    And User enter hotel details "<state>", "<city>", "<roomType>", "<checkIn>", "<checkOut>", "<noOfRooms>", "<noOfAdults>", "<noOfChildren>" and "<hotelName>"
    Then User should verify the success message after entering baggage details
    When User select "<itineraryDetails>", "<noOfTickets>" and "<carType>" for one passenger
    Then User should verify the success message after entering itinerary details
    When User select the flight seats for one passenger "<firstPassenger>"
    Then User should verify the success message after entering flight seat details
    When User click next without entering any  details in card payment page
    Then user should verify the error message "Please select your card type","Please select your card","Please provide your card number","Please provide name on your card","Please provide your Card Expiry Date" and "Please provide your Card's security code"

    Examples:
      | firstPassenger | userName            | password        | flyingFrom | flingTo   | departDate | adults | children | infants | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | gstNumber  | gstName                | gstAddress   | noOfBags | totalWeight | state      | city       | roomType | checkIn    | checkOut   | noOfRooms | noOfAdults | noOfChildren | hotelName     | itineraryDetails  | noOfTickets | carType |
      | 25A            | srinipmps@gmail.com | 8@ndHEw5TfaLm5e | Chennai    | Bengaluru | 01-07-2024 | 1      | 0        | 0       | Srinivasu | Aruchamy | 16-06-1998 | 9487715046   | srinipmps@gmail.com | SDETHIJKWN | VSDFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9876543456   | 9043592058 | Greens Tech OMR Branch | Thoraipakkam | 1        | 10          | Tamil Nadu | Coimbatore | Deluxe   | 02-07-2024 | 03-07-2024 | 1-One     | 1-One      | 1            | Hilton Deluxe | City Sight Seeing | 1           | BMW     |

  @Book30
  Scenario Outline: Book One way trip flight with one adult, one children and one infants including GST details with upi
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
    When User enter the upi payment details, proceed with "<upiId>"
    Then User should verify the success message after booking "Booking is Confirmed" and save the orderId




    Examples:
      | userName            | password        | firstPassenger | secondPassenger | thirdPassenger | flyingFrom | flingTo   | departDate | adults | children | infants | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address    | country | state      | city    | pincode | airLineName | memberShipId | firstName | lastName | DOB        | mobileNumber | emailID              | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | gstNumber  | gstName | gstAddress | noOfBags | totalWeight | state      | city       | roomType | checkIn    | checkOut   | noOfRooms | noOfAdults | noOfChildren | hotelName     | itineraryDetails  | noOfTickets | carType | upiId                |
      | srinipmps@gmail.com | 8@ndHEw5TfaLm5e | 21A            | 21B             | 21C            | Chennai    | Bengaluru | 27-06-2024 | 1      | 1        | 1       | Srinivasu | Aruchamy | 16-06-1998 | 9487715046   | srinipmps@gmail.com | SDETHIJKWN | VIKENKT | 16-07-2024 | TESTER     | 600112     | 2020      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9876543456   | Venkatesh | Don      | 16-07-1998 | 0987654321   | venkipmps@gmail.com | SDETHIJKWN | VSVFGHJ | 16-07-2024 | IT         | B.E        | 2019      | 3/2 STRRET | India   | Tamil Nadu | Chennai | 600112  | AirIndia    | SDTHIKENJH   | Naveen    | Kumar    | 16-08-1998 | 0907654321   | vasnkipmps@gmail.com | SDETHIJKWN | VSVRGHJ | 16-08-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9776533456   | HRTJKIENTH | SRINI   | STRRER     | 1        | 10          | Tamil Nadu | Coimbatore | Deluxe   | 02-07-2024 | 03-07-2024 | 1-One     | 1-One      | 1            | Hilton Deluxe | City Sight Seeing | 1           | BMW     | seleniumtraining@vbc |


  @Book31
  Scenario Outline: Book One way trip flight with one adult and one children including GST details (UPI Id )
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
    And User click next
    Then User should verify the success message after entering passenger details
    When User enter gst details "<gstNumber>", "<gstName>" and "<gstAddress>"
    And User select insurance details
    And User click coupon code
    Then User should verify the success message after entering gst details
    When User enter bag details "<noOfBags>" and "<totalWeight>"
    And User enter hotel details "<state>", "<city>", "<roomType>", "<checkIn>", "<checkOut>", "<noOfRooms>", "<noOfAdults>", "<noOfChildren>" and "<hotelName>"
    Then User should verify the success message after entering baggage details
    When User select "<itineraryDetails>", "<noOfTickets>" and "<carType>" for two passenger
    Then User should verify the success message after entering itinerary details
    When User select the flight seats for two passenger "<firstPassenger>" and "<secondPassenger>"
    Then User should verify the success message after entering flight seat details
    When User enter the upi payment details, proceed with "<upiId>"
    Then User should verify the success message after booking "Booking is Confirmed" and save the orderId


    Examples:
      | userName            | password        | flyingFrom | firstPassenger | secondPassenger | flingTo   | departDate | adults | children | infants | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | gstNumber  | gstName                | gstAddress   | noOfBags | totalWeight | state      | city       | roomType | checkIn    | checkOut   | noOfRooms | noOfAdults | noOfChildren | hotelName     | itineraryDetails  | noOfTickets | carType | upiId                |
      | srinipmps@gmail.com | 8@ndHEw5TfaLm5e | Chennai    | 3A             | 3B              | Bengaluru | 27-06-2024 | 1      | 1        | 0       | Srinivasu | Aruchamy | 16-06-1998 | 9487715046   | srinipmps@gmail.com | SDETHIJKWN | VSDFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9876543456   | Venkatesh | Don      | 16-07-1998 | 0987654321   | venkipmps@gmail.com | JHGFDSSDFS | VSVFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9776543456   | 9043592058 | Greens Tech OMR Branch | Thoraipakkam | 1        | 10          | Tamil Nadu | Coimbatore | Deluxe   | 02-07-2024 | 03-07-2024 | 1-One     | 1-One      | 1            | Hilton Deluxe | City Sight Seeing | 1           | BMW     | seleniumtraining@vbc |

  @Book32
  Scenario Outline: Book One way trip flight with one adult including GST details (UPI Id )
    Given User is on the OMR Branch hotel page
    When User enter "<userName>" and "<password>"
    Then User should verify success message after login "Welcome Srinivasu"
    When  User enter "<flyingFrom>", "<flingTo>", "<departDate>", "<adults>", "<children>" and "<infants>"
    Then User should verify that flights are displayed after search
    When User save first flight name and price
    And User select the first flight and accept the alert
    Then User should verify select success message
    When User enter "<firstName>", "<lastName>", "<DOB>", "<mobileNumber>", "<emailID>", "<passportID>", "<VISAID>", "<validDate>", "<occupation>", "<graduation>", "<passedOut>","<address>", "<country>", "<state>", "<city>", "<pincode>", "<airLineName>" and "<memberShipId>" for first passenger
    And User click next
    Then User should verify the success message after entering passenger details
    When User enter gst details "<gstNumber>", "<gstName>" and "<gstAddress>"
    And User select insurance details
    And User click coupon code
    Then User should verify the success message after entering gst details
    When User enter bag details "<noOfBags>" and "<totalWeight>"
    And User enter hotel details "<state>", "<city>", "<roomType>", "<checkIn>", "<checkOut>", "<noOfRooms>", "<noOfAdults>", "<noOfChildren>" and "<hotelName>"
    Then User should verify the success message after entering baggage details
    When User select "<itineraryDetails>", "<noOfTickets>" and "<carType>" for one passenger
    Then User should verify the success message after entering itinerary details
    When User select the flight seats for one passenger "<firstPassenger>"
    Then User should verify the success message after entering flight seat details
    When User enter the upi payment details, proceed with "<upiId>"
    Then User should verify the success message after booking "Booking is Confirmed" and save the orderId

    Examples:
      | firstPassenger | userName            | password        | flyingFrom | flingTo   | departDate | adults | children | infants | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | gstNumber  | gstName                | gstAddress   | noOfBags | totalWeight | state      | city       | roomType | checkIn    | checkOut   | noOfRooms | noOfAdults | noOfChildren | hotelName     | itineraryDetails  | noOfTickets | carType | upiId                |
      | 11A            | srinipmps@gmail.com | 8@ndHEw5TfaLm5e | Chennai    | Bengaluru | 27-06-2024 | 1      | 0        | 0       | Srinivasu | Aruchamy | 16-06-1998 | 9487715046   | srinipmps@gmail.com | SDETHIJKWN | VSDFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9876543456   | 9043592058 | Greens Tech OMR Branch | Thoraipakkam | 1        | 10          | Tamil Nadu | Coimbatore | Deluxe   | 02-07-2024 | 03-07-2024 | 1-One     | 1-One      | 1            | Hilton Deluxe | City Sight Seeing | 1           | BMW     | seleniumtraining@vbc |

  @Book33
  Scenario Outline: Book One way trip flight with one adult, one children and one infants without GST details with upi
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
    When User enter the upi payment details, proceed with "<upiId>"
    Then User should verify the success message after booking "Booking is Confirmed" and save the orderId




    Examples:
      | userName            | password        | firstPassenger | secondPassenger | thirdPassenger | flyingFrom | flingTo   | departDate | adults | children | infants | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address    | country | state      | city    | pincode | airLineName | memberShipId | firstName | lastName | DOB        | mobileNumber | emailID              | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | noOfBags | totalWeight | state      | city       | roomType | checkIn    | checkOut   | noOfRooms | noOfAdults | noOfChildren | hotelName     | itineraryDetails  | noOfTickets | carType | upiId                |
      | srinipmps@gmail.com | 8@ndHEw5TfaLm5e | 21A            | 21B             | 21C            | Chennai    | Bengaluru | 27-06-2024 | 1      | 1        | 1       | Srinivasu | Aruchamy | 16-06-1998 | 9487715046   | srinipmps@gmail.com | SDETHIJKWN | VIKENKT | 16-07-2024 | TESTER     | 600112     | 2020      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9876543456   | Venkatesh | Don      | 16-07-1998 | 0987654321   | venkipmps@gmail.com | SDETHIJKWN | VSVFGHJ | 16-07-2024 | IT         | B.E        | 2019      | 3/2 STRRET | India   | Tamil Nadu | Chennai | 600112  | AirIndia    | SDTHIKENJH   | Naveen    | Kumar    | 16-08-1998 | 0907654321   | vasnkipmps@gmail.com | SDETHIJKWN | VSVRGHJ | 16-08-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9776533456   | 1        | 10          | Tamil Nadu | Coimbatore | Deluxe   | 02-07-2024 | 03-07-2024 | 1-One     | 1-One      | 1            | Hilton Deluxe | City Sight Seeing | 1           | BMW     | seleniumtraining@vbc |


  @Book34
  Scenario Outline: Book One way trip flight with one adult and one children without GST details (UPI Id )
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
    And User click next
    Then User should verify the success message after entering passenger details
    And User select insurance details
    And User click coupon code
    Then User should verify the success message after entering gst details
    When User enter bag details "<noOfBags>" and "<totalWeight>"
    And User enter hotel details "<state>", "<city>", "<roomType>", "<checkIn>", "<checkOut>", "<noOfRooms>", "<noOfAdults>", "<noOfChildren>" and "<hotelName>"
    Then User should verify the success message after entering baggage details
    When User select "<itineraryDetails>", "<noOfTickets>" and "<carType>" for two passenger
    Then User should verify the success message after entering itinerary details
    When User select the flight seats for two passenger "<firstPassenger>" and "<secondPassenger>"
    Then User should verify the success message after entering flight seat details
    When User enter the upi payment details, proceed with "<upiId>"
    Then User should verify the success message after booking "Booking is Confirmed" and save the orderId


    Examples:
      | userName            | password        | flyingFrom | firstPassenger | secondPassenger | flingTo   | departDate | adults | children | infants | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | noOfBags | totalWeight | state      | city       | roomType | checkIn    | checkOut   | noOfRooms | noOfAdults | noOfChildren | hotelName     | itineraryDetails  | noOfTickets | carType | upiId                |
      | srinipmps@gmail.com | 8@ndHEw5TfaLm5e | Chennai    | 3A             | 3B              | Bengaluru | 27-06-2024 | 1      | 1        | 0       | Srinivasu | Aruchamy | 16-06-1998 | 9487715046   | srinipmps@gmail.com | SDETHIJKWN | VSDFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9876543456   | Venkatesh | Don      | 16-07-1998 | 0987654321   | venkipmps@gmail.com | JHGFDSSDFS | VSVFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9776543456   | 1        | 10          | Tamil Nadu | Coimbatore | Deluxe   | 02-07-2024 | 03-07-2024 | 1-One     | 1-One      | 1            | Hilton Deluxe | City Sight Seeing | 1           | BMW     | seleniumtraining@vbc |

  @Book35
  Scenario Outline: Book One way trip flight with one adult without GST details (UPI Id )
    Given User is on the OMR Branch hotel page
    When User enter "<userName>" and "<password>"
    Then User should verify success message after login "Welcome Srinivasu"
    When  User enter "<flyingFrom>", "<flingTo>", "<departDate>", "<adults>", "<children>" and "<infants>"
    Then User should verify that flights are displayed after search
    When User save first flight name and price
    And User select the first flight and accept the alert
    Then User should verify select success message
    When User enter "<firstName>", "<lastName>", "<DOB>", "<mobileNumber>", "<emailID>", "<passportID>", "<VISAID>", "<validDate>", "<occupation>", "<graduation>", "<passedOut>","<address>", "<country>", "<state>", "<city>", "<pincode>", "<airLineName>" and "<memberShipId>" for first passenger
    And User click next
    Then User should verify the success message after entering passenger details
    And User select insurance details
    And User click coupon code
    Then User should verify the success message after entering gst details
    When User enter bag details "<noOfBags>" and "<totalWeight>"
    And User enter hotel details "<state>", "<city>", "<roomType>", "<checkIn>", "<checkOut>", "<noOfRooms>", "<noOfAdults>", "<noOfChildren>" and "<hotelName>"
    Then User should verify the success message after entering baggage details
    When User select "<itineraryDetails>", "<noOfTickets>" and "<carType>" for one passenger
    Then User should verify the success message after entering itinerary details
    When User select the flight seats for one passenger "<firstPassenger>"
    Then User should verify the success message after entering flight seat details
    When User enter the upi payment details, proceed with "<upiId>"
    Then User should verify the success message after booking "Booking is Confirmed" and save the orderId

    Examples:
      | firstPassenger | userName            | password        | flyingFrom | flingTo   | departDate | adults | children | infants | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | noOfBags | totalWeight | state      | city       | roomType | checkIn    | checkOut   | noOfRooms | noOfAdults | noOfChildren | hotelName     | itineraryDetails  | noOfTickets | carType | upiId                |
      | 31A            | srinipmps@gmail.com | 8@ndHEw5TfaLm5e | Chennai    | Bengaluru | 27-06-2024 | 1      | 0        | 0       | Srinivasu | Aruchamy | 16-06-1998 | 9487715046   | srinipmps@gmail.com | SDETHIJKWN | VSDFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9876543456   | 1        | 10          | Tamil Nadu | Coimbatore | Deluxe   | 02-07-2024 | 03-07-2024 | 1-One     | 1-One      | 1            | Hilton Deluxe | City Sight Seeing | 1           | BMW     | seleniumtraining@vbc |

  @Book36
  Scenario Outline: Book Round trip flight with one adult, one children and one infants including GST details with upi
    Given User is on the OMR Branch hotel page
    When User enter "<userName>" and "<password>"
    Then User should verify success message after login "Welcome Srinivasu"
    When  User enter "<flyingFrom>", "<flingTo>", "<departDate>", "<returnDate>", "<adults>", "<children>" and "<infants>"
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
    When User select the flight seats for three passenger "<firstPassenger>", "<secondPassenger>", "<thirdPassenger>", "<firstPassengerReturn>", "<secondPassengerReturn>" and "<thirdPassengerReturn>"
    Then User should verify the success message after entering flight seat details
    When User enter the upi payment details, proceed with "<upiId>"
    Then User should verify the success message after booking "Booking is Confirmed" and save the orderId




    Examples:
      | returnDate | firstPassengerReturn | secondPassengerReturn | thirdPassengerReturn | userName            | password        | firstPassenger | secondPassenger | thirdPassenger | flyingFrom | flingTo   | departDate | adults | children | infants | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address    | country | state      | city    | pincode | airLineName | memberShipId | firstName | lastName | DOB        | mobileNumber | emailID              | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | gstNumber  | gstName | gstAddress | noOfBags | totalWeight | state      | city       | roomType | checkIn    | checkOut   | noOfRooms | noOfAdults | noOfChildren | hotelName     | itineraryDetails  | noOfTickets | carType | upiId                |
      | 29-07-2024 | 21A                  | 21B                   | 21C                  | srinipmps@gmail.com | 8@ndHEw5TfaLm5e | 21A            | 21B             | 21C            | Chennai    | Bengaluru | 27-06-2024 | 1      | 1        | 1       | Srinivasu | Aruchamy | 16-06-1998 | 9487715046   | srinipmps@gmail.com | SDETHIJKWN | VIKENKT | 16-07-2024 | TESTER     | 600112     | 2020      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9876543456   | Venkatesh | Don      | 16-07-1998 | 0987654321   | venkipmps@gmail.com | SDETHIJKWN | VSVFGHJ | 16-07-2024 | IT         | B.E        | 2019      | 3/2 STRRET | India   | Tamil Nadu | Chennai | 600112  | AirIndia    | SDTHIKENJH   | Naveen    | Kumar    | 16-08-1998 | 0907654321   | vasnkipmps@gmail.com | SDETHIJKWN | VSVRGHJ | 16-08-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9776533456   | HRTJKIENTH | SRINI   | STRRER     | 1        | 10          | Tamil Nadu | Coimbatore | Deluxe   | 02-07-2024 | 03-07-2024 | 1-One     | 1-One      | 1            | Hilton Deluxe | City Sight Seeing | 1           | BMW     | seleniumtraining@vbc |


  @Book37
  Scenario Outline: Book Round trip flight with one adult and one children including GST details (UPI Id )
    Given User is on the OMR Branch hotel page
    When User enter "<userName>" and "<password>"
    Then User should verify success message after login "Welcome Srinivasu"
    When  User enter "<flyingFrom>", "<flingTo>", "<departDate>", "<returnDate>", "<adults>", "<children>" and "<infants>"
    Then User should verify that flights are displayed after search
    When User save first flight name and price
    And User select the first flight and accept the alert
    Then User should verify select success message
    When User enter "<firstName>", "<lastName>", "<DOB>", "<mobileNumber>", "<emailID>", "<passportID>", "<VISAID>", "<validDate>", "<occupation>", "<graduation>", "<passedOut>","<address>", "<country>", "<state>", "<city>", "<pincode>", "<airLineName>" and "<memberShipId>" for first passenger
    And User enter "<firstName>", "<lastName>", "<DOB>", "<mobileNumber>", "<emailID>", "<passportID>", "<VISAID>", "<validDate>", "<occupation>", "<graduation>", "<passedOut>","<address>", "<country>", "<state>", "<city>", "<pincode>", "<airLineName>" and "<memberShipId>" for second passenger
    And User click next
    Then User should verify the success message after entering passenger details
    When User enter gst details "<gstNumber>", "<gstName>" and "<gstAddress>"
    And User select insurance details
    And User click coupon code
    Then User should verify the success message after entering gst details
    When User enter bag details "<noOfBags>" and "<totalWeight>"
    And User enter hotel details "<state>", "<city>", "<roomType>", "<checkIn>", "<checkOut>", "<noOfRooms>", "<noOfAdults>", "<noOfChildren>" and "<hotelName>"
    Then User should verify the success message after entering baggage details
    When User select "<itineraryDetails>", "<noOfTickets>" and "<carType>" for two passenger
    Then User should verify the success message after entering itinerary details
    When User select the flight seats for two passenger "<firstPassenger>", "<secondPassenger>", "<firstPassengerReturn>" and "<secondPassengerReturn>"
    Then User should verify the success message after entering flight seat details
    When User enter the upi payment details, proceed with "<upiId>"
    Then User should verify the success message after booking "Booking is Confirmed" and save the orderId


    Examples:
      | returnDate | firstPassengerReturn | secondPassengerReturn | userName            | password        | flyingFrom | firstPassenger | secondPassenger | flingTo   | departDate | adults | children | infants | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | gstNumber  | gstName                | gstAddress   | noOfBags | totalWeight | state      | city       | roomType | checkIn    | checkOut   | noOfRooms | noOfAdults | noOfChildren | hotelName     | itineraryDetails  | noOfTickets | carType | upiId                |
      | 29-07-2024 | 21A                  | 21B                   | srinipmps@gmail.com | 8@ndHEw5TfaLm5e | Chennai    | 3A             | 3B              | Bengaluru | 27-06-2024 | 1      | 1        | 0       | Srinivasu | Aruchamy | 16-06-1998 | 9487715046   | srinipmps@gmail.com | SDETHIJKWN | VSDFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9876543456   | Venkatesh | Don      | 16-07-1998 | 0987654321   | venkipmps@gmail.com | JHGFDSSDFS | VSVFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9776543456   | 9043592058 | Greens Tech OMR Branch | Thoraipakkam | 1        | 10          | Tamil Nadu | Coimbatore | Deluxe   | 02-07-2024 | 03-07-2024 | 1-One     | 1-One      | 1            | Hilton Deluxe | City Sight Seeing | 1           | BMW     | seleniumtraining@vbc |

  @Book38
  Scenario Outline: Book Round trip flight with one adult including GST details (UPI Id )
    Given User is on the OMR Branch hotel page
    When User enter "<userName>" and "<password>"
    Then User should verify success message after login "Welcome Srinivasu"
    When  User enter "<flyingFrom>", "<flingTo>", "<departDate>", "<returnDate>", "<adults>", "<children>" and "<infants>"
    Then User should verify that flights are displayed after search
    When User save first flight name and price
    And User select the first flight and accept the alert
    Then User should verify select success message
    When User enter "<firstName>", "<lastName>", "<DOB>", "<mobileNumber>", "<emailID>", "<passportID>", "<VISAID>", "<validDate>", "<occupation>", "<graduation>", "<passedOut>","<address>", "<country>", "<state>", "<city>", "<pincode>", "<airLineName>" and "<memberShipId>" for first passenger
    And User click next
    Then User should verify the success message after entering passenger details
    When User enter gst details "<gstNumber>", "<gstName>" and "<gstAddress>"
    And User select insurance details
    And User click coupon code
    Then User should verify the success message after entering gst details
    When User enter bag details "<noOfBags>" and "<totalWeight>"
    And User enter hotel details "<state>", "<city>", "<roomType>", "<checkIn>", "<checkOut>", "<noOfRooms>", "<noOfAdults>", "<noOfChildren>" and "<hotelName>"
    Then User should verify the success message after entering baggage details
    When User select "<itineraryDetails>", "<noOfTickets>" and "<carType>" for one passenger
    Then User should verify the success message after entering itinerary details
    When User select the flight seats for one passenger "<firstPassenger>" and "<firstPassengerReturn>"
    Then User should verify the success message after entering flight seat details
    When User enter the upi payment details, proceed with "<upiId>"
    Then User should verify the success message after booking "Booking is Confirmed" and save the orderId

    Examples:
      | returnDate | firstPassengerReturn | firstPassenger | userName            | password        | flyingFrom | flingTo   | departDate | adults | children | infants | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | gstNumber  | gstName                | gstAddress   | noOfBags | totalWeight | state      | city       | roomType | checkIn    | checkOut   | noOfRooms | noOfAdults | noOfChildren | hotelName     | itineraryDetails  | noOfTickets | carType | upiId                |
      | 29-07-2024 | 21A                  | 11A            | srinipmps@gmail.com | 8@ndHEw5TfaLm5e | Chennai    | Bengaluru | 27-06-2024 | 1      | 0        | 0       | Srinivasu | Aruchamy | 16-06-1998 | 9487715046   | srinipmps@gmail.com | SDETHIJKWN | VSDFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9876543456   | 9043592058 | Greens Tech OMR Branch | Thoraipakkam | 1        | 10          | Tamil Nadu | Coimbatore | Deluxe   | 02-07-2024 | 03-07-2024 | 1-One     | 1-One      | 1            | Hilton Deluxe | City Sight Seeing | 1           | BMW     | seleniumtraining@vbc |

  @Book39
  Scenario Outline: Book Round trip flight with one adult, one children and one infants without GST details with upi
    Given User is on the OMR Branch hotel page
    When User enter "<userName>" and "<password>"
    Then User should verify success message after login "Welcome Srinivasu"
    When  User enter "<flyingFrom>", "<flingTo>", "<departDate>", "<returnDate>", "<adults>", "<children>" and "<infants>"
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
    When User select the flight seats for three passenger "<firstPassenger>", "<secondPassenger>", "<thirdPassenger>", "<firstPassengerReturn>", "<secondPassengerReturn>" and "<thirdPassengerReturn>"
    Then User should verify the success message after entering flight seat details
    When User enter the upi payment details, proceed with "<upiId>"
    Then User should verify the success message after booking "Booking is Confirmed" and save the orderId




    Examples:
      | returnDate | firstPassengerReturn | secondPassengerReturn | thirdPassengerReturn | userName            | password        | firstPassenger | secondPassenger | thirdPassenger | flyingFrom | flingTo   | departDate | adults | children | infants | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address    | country | state      | city    | pincode | airLineName | memberShipId | firstName | lastName | DOB        | mobileNumber | emailID              | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | noOfBags | totalWeight | state      | city       | roomType | checkIn    | checkOut   | noOfRooms | noOfAdults | noOfChildren | hotelName     | itineraryDetails  | noOfTickets | carType | upiId                |
      | 29-07-2024 | 21A                  | 21B                   | 21C                  | srinipmps@gmail.com | 8@ndHEw5TfaLm5e | 21A            | 21B             | 21C            | Chennai    | Bengaluru | 27-06-2024 | 1      | 1        | 1       | Srinivasu | Aruchamy | 16-06-1998 | 9487715046   | srinipmps@gmail.com | SDETHIJKWN | VIKENKT | 16-07-2024 | TESTER     | 600112     | 2020      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9876543456   | Venkatesh | Don      | 16-07-1998 | 0987654321   | venkipmps@gmail.com | SDETHIJKWN | VSVFGHJ | 16-07-2024 | IT         | B.E        | 2019      | 3/2 STRRET | India   | Tamil Nadu | Chennai | 600112  | AirIndia    | SDTHIKENJH   | Naveen    | Kumar    | 16-08-1998 | 0907654321   | vasnkipmps@gmail.com | SDETHIJKWN | VSVRGHJ | 16-08-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9776533456   | 1        | 10          | Tamil Nadu | Coimbatore | Deluxe   | 02-07-2024 | 03-07-2024 | 1-One     | 1-One      | 1            | Hilton Deluxe | City Sight Seeing | 1           | BMW     | seleniumtraining@vbc |


  @Book40
  Scenario Outline: Book Round trip flight with one adult and one children without GST details (UPI Id )
    Given User is on the OMR Branch hotel page
    When User enter "<userName>" and "<password>"
    Then User should verify success message after login "Welcome Srinivasu"
    When  User enter "<flyingFrom>", "<flingTo>", "<departDate>", "<returnDate>", "<adults>", "<children>" and "<infants>"
    Then User should verify that flights are displayed after search
    When User save first flight name and price
    And User select the first flight and accept the alert
    Then User should verify select success message
    When User enter "<firstName>", "<lastName>", "<DOB>", "<mobileNumber>", "<emailID>", "<passportID>", "<VISAID>", "<validDate>", "<occupation>", "<graduation>", "<passedOut>","<address>", "<country>", "<state>", "<city>", "<pincode>", "<airLineName>" and "<memberShipId>" for first passenger
    And User enter "<firstName>", "<lastName>", "<DOB>", "<mobileNumber>", "<emailID>", "<passportID>", "<VISAID>", "<validDate>", "<occupation>", "<graduation>", "<passedOut>","<address>", "<country>", "<state>", "<city>", "<pincode>", "<airLineName>" and "<memberShipId>" for second passenger
    And User click next
    Then User should verify the success message after entering passenger details
    And User select insurance details
    And User click coupon code
    Then User should verify the success message after entering gst details
    When User enter bag details "<noOfBags>" and "<totalWeight>"
    And User enter hotel details "<state>", "<city>", "<roomType>", "<checkIn>", "<checkOut>", "<noOfRooms>", "<noOfAdults>", "<noOfChildren>" and "<hotelName>"
    Then User should verify the success message after entering baggage details
    When User select "<itineraryDetails>", "<noOfTickets>" and "<carType>" for two passenger
    Then User should verify the success message after entering itinerary details
    When User select the flight seats for two passenger "<firstPassenger>", "<secondPassenger>", "<firstPassengerReturn>" and "<secondPassengerReturn>"
    Then User should verify the success message after entering flight seat details
    When User enter the upi payment details, proceed with "<upiId>"
    Then User should verify the success message after booking "Booking is Confirmed" and save the orderId


    Examples:
      | returnDate | firstPassengerReturn | secondPassengerReturn | userName            | password        | flyingFrom | firstPassenger | secondPassenger | flingTo   | departDate | adults | children | infants | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | noOfBags | totalWeight | state      | city       | roomType | checkIn    | checkOut   | noOfRooms | noOfAdults | noOfChildren | hotelName     | itineraryDetails  | noOfTickets | carType | upiId                |
      | 29-07-2024 | 21A                  | 21B                   | srinipmps@gmail.com | 8@ndHEw5TfaLm5e | Chennai    | 3A             | 3B              | Bengaluru | 27-06-2024 | 1      | 1        | 0       | Srinivasu | Aruchamy | 16-06-1998 | 9487715046   | srinipmps@gmail.com | SDETHIJKWN | VSDFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9876543456   | Venkatesh | Don      | 16-07-1998 | 0987654321   | venkipmps@gmail.com | JHGFDSSDFS | VSVFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9776543456   | 1        | 10          | Tamil Nadu | Coimbatore | Deluxe   | 02-07-2024 | 03-07-2024 | 1-One     | 1-One      | 1            | Hilton Deluxe | City Sight Seeing | 1           | BMW     | seleniumtraining@vbc |

  @Book41
  Scenario Outline: Book Round trip flight with one adult without GST details (UPI Id )
    Given User is on the OMR Branch hotel page
    When User enter "<userName>" and "<password>"
    Then User should verify success message after login "Welcome Srinivasu"
    When  User enter "<flyingFrom>", "<flingTo>", "<departDate>", "<returnDate>", "<adults>", "<children>" and "<infants>"
    Then User should verify that flights are displayed after search
    When User save first flight name and price
    And User select the first flight and accept the alert
    Then User should verify select success message
    When User enter "<firstName>", "<lastName>", "<DOB>", "<mobileNumber>", "<emailID>", "<passportID>", "<VISAID>", "<validDate>", "<occupation>", "<graduation>", "<passedOut>","<address>", "<country>", "<state>", "<city>", "<pincode>", "<airLineName>" and "<memberShipId>" for first passenger
    And User click next
    Then User should verify the success message after entering passenger details
    And User select insurance details
    And User click coupon code
    Then User should verify the success message after entering gst details
    When User enter bag details "<noOfBags>" and "<totalWeight>"
    And User enter hotel details "<state>", "<city>", "<roomType>", "<checkIn>", "<checkOut>", "<noOfRooms>", "<noOfAdults>", "<noOfChildren>" and "<hotelName>"
    Then User should verify the success message after entering baggage details
    When User select "<itineraryDetails>", "<noOfTickets>" and "<carType>" for one passenger
    Then User should verify the success message after entering itinerary details
    When User select the flight seats for one passenger "<firstPassenger>" and "<firstPassengerReturn>"
    Then User should verify the success message after entering flight seat details
    When User enter the upi payment details, proceed with "<upiId>"
    Then User should verify the success message after booking "Booking is Confirmed" and save the orderId

    Examples:
      | returnDate | firstPassengerReturn | firstPassenger | userName            | password        | flyingFrom | flingTo   | departDate | adults | children | infants | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | noOfBags | totalWeight | state      | city       | roomType | checkIn    | checkOut   | noOfRooms | noOfAdults | noOfChildren | hotelName     | itineraryDetails  | noOfTickets | carType | upiId                |
      | 29-07-2024 | 21A                  | 31A            | srinipmps@gmail.com | 8@ndHEw5TfaLm5e | Chennai    | Bengaluru | 27-06-2024 | 1      | 0        | 0       | Srinivasu | Aruchamy | 16-06-1998 | 9487715046   | srinipmps@gmail.com | SDETHIJKWN | VSDFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9876543456   | 1        | 10          | Tamil Nadu | Coimbatore | Deluxe   | 02-07-2024 | 03-07-2024 | 1-One     | 1-One      | 1            | Hilton Deluxe | City Sight Seeing | 1           | BMW     | seleniumtraining@vbc |

  @Book42
  Scenario Outline: Book flight without entering any fields in Payment page - UPI
    Given User is on the OMR Branch hotel page
    When User enter "<userName>" and "<password>"
    Then User should verify success message after login "Welcome Srinivasu"
    When  User enter "<flyingFrom>", "<flingTo>", "<departDate>", "<adults>", "<children>" and "<infants>"
    Then User should verify that flights are displayed after search
    When User save first flight name and price
    And User select the first flight and accept the alert
    Then User should verify select success message
    When User enter "<firstName>", "<lastName>", "<DOB>", "<mobileNumber>", "<emailID>", "<passportID>", "<VISAID>", "<validDate>", "<occupation>", "<graduation>", "<passedOut>","<address>", "<country>", "<state>", "<city>", "<pincode>", "<airLineName>" and "<memberShipId>" for first passenger
    And User click next
    Then User should verify the success message after entering passenger details
    When User enter gst details "<gstNumber>", "<gstName>" and "<gstAddress>"
    And User select insurance details
    And User click coupon code
    Then User should verify the success message after entering gst details
    When User enter bag details "<noOfBags>" and "<totalWeight>"
    And User enter hotel details "<state>", "<city>", "<roomType>", "<checkIn>", "<checkOut>", "<noOfRooms>", "<noOfAdults>", "<noOfChildren>" and "<hotelName>"
    Then User should verify the success message after entering baggage details
    When User select "<itineraryDetails>", "<noOfTickets>" and "<carType>" for one passenger
    Then User should verify the success message after entering itinerary details
    When User select the flight seats for one passenger "<firstPassenger>"
    Then User should verify the success message after entering flight seat details
    When User click next without entering any  details in upi payment page
    Then user should verify the error message "Please provide your UPI ID"

    Examples:
      | firstPassenger | userName            | password        | flyingFrom | flingTo   | departDate | adults | children | infants | firstName | lastName | DOB        | mobileNumber | emailID             | passportID | VISAID  | validDate  | occupation | graduation | passedOut | address | country | state      | city       | pincode | airLineName | memberShipId | gstNumber  | gstName                | gstAddress   | noOfBags | totalWeight | state      | city       | roomType | checkIn    | checkOut   | noOfRooms | noOfAdults | noOfChildren | hotelName     | itineraryDetails  | noOfTickets | carType |
      | 25A            | srinipmps@gmail.com | 8@ndHEw5TfaLm5e | Chennai    | Bengaluru | 01-07-2024 | 1      | 0        | 0       | Srinivasu | Aruchamy | 16-06-1998 | 9487715046   | srinipmps@gmail.com | SDETHIJKWN | VSDFGHJ | 16-07-2024 | IT         | B.E        | 2019      | Chennai | India   | Tamil Nadu | Coimbatore | 642129  | AirIndia    | 9876543456   | 9043592058 | Greens Tech OMR Branch | Thoraipakkam | 1        | 10          | Tamil Nadu | Coimbatore | Deluxe   | 02-07-2024 | 03-07-2024 | 1-One     | 1-One      | 1            | Hilton Deluxe | City Sight Seeing | 1           | BMW     | `