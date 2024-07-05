package com.omrbranch.stepdefinition;

import com.omrbranch.pagemanager.PageObjectManager;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;

public class TC4_BookFlight_Step {
    PageObjectManager manager = new PageObjectManager ();

    @When ("User enter {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string},{string}, {string}, {string}, {string}, {string}, {string} and {string} for first passenger")
    public void user_enter_for_first_passenger (String firstName, String lastName, String DOB, String mobileNumber, String emailID, String passportID, String VISAID, String validDate, String occupation, String graduation, String passedOut, String address, String country, String state, String city, String pincode, String airLineName, String memberShipID) {
        manager.getBookFlightPage ().enterFirstPassengerDetails (firstName, lastName, DOB, mobileNumber, emailID, passportID, VISAID, validDate, occupation, graduation, passedOut, address, country, state, city, pincode, airLineName, memberShipID);
    }

    @When ("User enter {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string},{string}, {string}, {string}, {string}, {string}, {string} and {string} for second passenger")
    public void user_enter_and_for_second_passenger (String firstName, String lastName, String DOB, String mobileNumber, String emailID, String passportID, String VISAID, String validDate, String occupation, String graduation, String passedOut, String address, String country, String state, String city, String pincode, String airLineName, String memberShipID) {
        manager.getBookFlightPage ().enterSecondPassengerDetails (firstName, lastName, DOB, mobileNumber, emailID, passportID, VISAID, validDate, occupation, graduation, passedOut, address, country, state, city, pincode, airLineName, memberShipID);
    }

    @When ("User enter {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string},{string}, {string}, {string}, {string}, {string}, {string} and {string} for third passenger")
    public void user_enter_and_for_third_passenger (String firstName, String lastName, String DOB, String mobileNumber, String emailID, String passportID, String VISAID, String validDate, String occupation, String graduation, String passedOut, String address, String country, String state, String city, String pincode, String airLineName, String memberShipID) {
        manager.getBookFlightPage ().addThirdPassengerDetails (firstName, lastName, DOB, mobileNumber, emailID, passportID, VISAID, validDate, occupation, graduation, passedOut, address, country, state, city, pincode, airLineName, memberShipID);
    }

    @When ("User click next")
    public void user_click_next () {
        manager.getBookFlightPage ().clickNextInPassengerDetailsPage ();
    }

    @Then ("User should verify the success message after entering passenger details")
    public void user_should_verify_the_success_message_after_entering_passenger_details () {
        Assert.assertTrue ("Verify the success message after entering passenger details", manager.getBookFlightPage ().isGSTInformationDisplayed ());

    }

    @When ("User enter gst details {string}, {string} and {string}")
    public void user_enter_gst_details_and (String gstNumber, String gstName, String gstAddress) {
        manager.getBookFlightPage ().enterGstDetails (gstNumber, gstName, gstAddress);
    }

    @When ("User select insurance details")
    public void user_select_insurance_details () throws InterruptedException {
        manager.getBookFlightPage ().enterInsurance ();
    }

    @When ("User click coupon code")
    public void user_click_coupon_code () {
        manager.getBookFlightPage ().applyCouponCode ();
        manager.getBookFlightPage ().clickNextInGSTDetailsPage ();
    }

    @Then ("User should verify the success message after entering gst details")
    public void user_should_verify_the_success_message_after_entering_gst_details () {
        Assert.assertTrue ("Verify the success message after entering gst details", manager.getBookFlightPage ().isBaggageInformationDisplayed ());
    }

    @When ("User enter bag details {string} and {string}")
    public void user_enter_bag_details_and (String noOfBags, String totalWeight) {
        manager.getBookFlightPage ().enterBagDetails (noOfBags, totalWeight);
    }

    @When ("User enter hotel details {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string} and {string}")
    public void user_enter_hotel_details (String state, String city, String roomType, String checkIn, String checkOut, String noOfRooms, String noOfAdults, String noOfChildren, String hotelName) {
        manager.getBookFlightPage ().enterHotelDetails (state, city, roomType, checkIn, checkOut, noOfRooms, noOfAdults, noOfChildren, hotelName);
    }

    @Then ("User should verify the success message after entering baggage details")
    public void user_should_verify_the_success_message_after_entering_baggage_details () {
        Assert.assertTrue ("Verify the success message after entering baggage details", manager.getBookFlightPage ().isAddItineraryDetailsDisplayed ());
    }

    @When ("User select {string}, {string} and {string} for three passenger")
    public void user_select_and (String itineraryDetails, String noOfTickets, String carType) {
        manager.getBookFlightPage ().enterItineraryDetailsForThreePassenger (itineraryDetails, noOfTickets, carType);
    }

    @Then ("User should verify the success message after entering itinerary details")
    public void user_should_verify_the_success_message_after_entering_itinerary_details () {
        Assert.assertTrue ("Verify the success message after entering itinerary details", manager.getBookFlightPage ().isSelectSeatDisplayed ());
    }


    @Then ("User should verify the success message after entering flight seat details")
    public void user_should_verify_the_success_message_after_entering_flight_seat_details () {
        Assert.assertTrue ("Verify the success message after selecting flight seat", manager.getBookFlightPage ().isPaymentDetailsDisplayed ());

    }

    @When ("User enter the payment details, proceed with {string}")
    public void user_enter_the_payment_details_proceed_with (String paymentType, io.cucumber.datatable.DataTable dataTable) {
        manager.getBookFlightPage ().enterPaymentDetails (paymentType, dataTable);
    }

    @When ("User select {string}, {string} and {string} for two passenger")
    public void user_select_and_for_two_passenger (String itineraryDetails, String noOfTickets, String carType) {
        manager.getBookFlightPage ().enterItineraryDetailsForTwoPassenger (itineraryDetails, noOfTickets, carType);
    }

    @When ("User select {string}, {string} and {string} for one passenger")
    public void user_select_and_for_one_passenger (String itineraryDetails, String noOfTickets, String carType) {
        manager.getBookFlightPage ().enterItineraryDetailsForOnePassenger (itineraryDetails, noOfTickets, carType);
    }


    @When ("User select the flight seats for three passenger {string}, {string} and {string}")
    public void user_select_the_flight_seats_for_three_passenger_and (String seat1, String seat2, String seat3) {
        manager.getBookFlightPage ().selectFlightSeatForThreePassengerInOneWay (seat1, seat2, seat3);
    }

    @When ("User select the flight seats for three passenger {string}, {string}, {string}, {string}, {string} and {string}")
    public void user_select_the_flight_seats_for_three_passenger_and (String seat1, String seat2, String seat3, String seat1R, String seat2R, String seat3R) {
        manager.getBookFlightPage ().selectFlightSeatForThreePassengerInRoundTrip (seat1, seat2, seat3, seat1R, seat2R, seat3R);
    }

    @When ("User select the flight seats for two passenger {string}, {string}, {string} and {string}")
    public void user_select_the_flight_seats_for_three_passenger_and (String seat1, String seat2, String seat1R, String seat2R) {
        manager.getBookFlightPage ().selectFlightSeatForTwoPassengerInRoundTrip (seat1, seat2, seat1R, seat2R);
    }

    @When ("User select the flight seats for two passenger {string} and {string}")
    public void user_select_the_flight_seats_for_two_passenger_and (String seat1, String seat2) {
        manager.getBookFlightPage ().selectFlightSeatForTwoPassengerInOneWay (seat1, seat2);
    }

    @When ("User select the flight seats for one passenger {string} and {string}")
    public void user_select_the_flight_seats_for_one_passenger_and (String seat1, String seat1R) {
        manager.getBookFlightPage ().selectFlightSeatForOnePassengerInRoundTrip (seat1, seat1R);
    }

    @When ("User select the flight seats for one passenger {string}")
    public void user_select_the_flight_seats_for_one_passenger_and (String seat1) {
        manager.getBookFlightPage ().selectFlightSeatForOnePassengerInOneWay (seat1);
    }

    @When ("User click next without entering any fields in add passenger details page")
    public void user_click_next_without_entering_any_fields_in_add_passenger_details_page () {
        manager.getBookFlightPage ().clickNextInPassengerDetailsPage ();
    }

    @Then ("User verify the error message {string}, {string}, {string},{string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string} and {string}")
    public void user_verify_the_error_message_and (String expectedErrorSaluationMessage, String expectedErrorFirstNameMessage, String expectedErrorLastNameMessage, String expectedErrorGenderMessage, String expectedErrorDOBMessage, String expectedErrorMobileNumberMessage, String expectedErrorEmailIDMessage, String expectedErrorPassportIDMessage, String expectedErrorVISAIDMessage, String expectedErrorValidDateMessage, String expectedErrorOccupationMessage, String expectedErrorGraduationMessage, String expectedErrorPassedOutMessage, String expectedErrorAddressMessage, String expectedErrorCountryMessage, String expectedErrorStateMessage, String expectedErrorCityMessage, String expectedErrorPincodeMessage, String expectedErrorAirLineNameMessage, String expectedErrorMemberShipIDMessage) {
        Assert.assertEquals ("Verify the Saluation error message", expectedErrorSaluationMessage, manager.getBookFlightPage ().actualErrorSaluationMessage ());
        Assert.assertEquals ("Verify the First Name error message", expectedErrorFirstNameMessage, manager.getBookFlightPage ().actualErrorFirstNameErrorMessage ());
        Assert.assertEquals ("Verify the Last Name error message", expectedErrorLastNameMessage, manager.getBookFlightPage ().actualErrorLastNameErrorMessage ());
        Assert.assertEquals ("Verify the Gender error message", expectedErrorGenderMessage, manager.getBookFlightPage ().actualErrorGenderMessage ());
        Assert.assertEquals ("Verify the DOB error message", expectedErrorDOBMessage, manager.getBookFlightPage ().actualErrorDOB ());
        Assert.assertEquals ("Verify the Mobile Number error message", expectedErrorMobileNumberMessage, manager.getBookFlightPage ().actualErrorMobileNumber ());
        Assert.assertEquals ("Verify the Email ID error message", expectedErrorEmailIDMessage, manager.getBookFlightPage ().actualErrorEmail ());
        Assert.assertEquals ("Verify the Passport ID error message", expectedErrorPassportIDMessage, manager.getBookFlightPage ().actualErrorPassportMessage ());
        Assert.assertEquals ("Verify the VISA ID error message", expectedErrorVISAIDMessage, manager.getBookFlightPage ().actualErrorVisaMessage ());
        Assert.assertEquals ("Verify the Valid Date error message", expectedErrorValidDateMessage, manager.getBookFlightPage ().actualErrorValidDateMessage ());
        Assert.assertEquals ("Verify the Occupation error message", expectedErrorOccupationMessage, manager.getBookFlightPage ().actualErrorOccupationMessage ());
        Assert.assertEquals ("Verify the Graduation error message", expectedErrorGraduationMessage, manager.getBookFlightPage ().actualErrorGraduationMessage ());
        Assert.assertEquals ("Verify the Passed Out error message", expectedErrorPassedOutMessage, manager.getBookFlightPage ().actualErrorPassedOutMessage ());
        Assert.assertEquals ("Verify the Address error message", expectedErrorAddressMessage, manager.getBookFlightPage ().actualErrorAddressMessage ());
        Assert.assertEquals ("Verify the Country error message", expectedErrorCountryMessage, manager.getBookFlightPage ().actualErrorCountryMessage ());
        Assert.assertEquals ("Verify the State error message", expectedErrorStateMessage, manager.getBookFlightPage ().actualErrorStateMessage ());
        Assert.assertEquals ("Verify the City error message", expectedErrorCityMessage, manager.getBookFlightPage ().actualErrorCityMessage ());
        Assert.assertEquals ("Verify the Pincode error message", expectedErrorPincodeMessage, manager.getBookFlightPage ().actualErrorPincodeMessage ());
        Assert.assertEquals ("Verify the Airline Name error message", expectedErrorAirLineNameMessage, manager.getBookFlightPage ().actualErrorAirlineMessage ());
        Assert.assertEquals ("Verify the MemberShip ID error message", expectedErrorMemberShipIDMessage, manager.getBookFlightPage ().actualErrorMembershipIdMessage ());
    }

    @When ("User click gst Details and click next without entering any details")
    public void user_click_gst_details_and_click_next_without_entering_any_details () {
        manager.getBookFlightPage ().clickNextWithoutEnteringDetailsInGSTPage ();
    }

    @When ("User click next without entering details in add baggage details page")
    public void user_click_next_without_entering_details_in_add_baggage_details_page () {
        manager.getBookFlightPage ().clickNextWithoutEnteringDetailsInBaggagePage ();
    }

    @Then ("User should verify the error message {string}, {string}, {string}, {string}, {string}, {string}, {string} and {string}")
    public void user_should_verify_the_error_message_and (String expectedNoOfBagsErrorMessage, String expectedTotalWeightErrorMessage, String expectedStateErrorMessage, String expectedCityErrorMessage, String expectedCheckInErrorMessage, String expectedCheckOutErrorMessage, String expectedCheckNoOfRoomsErrorMessage, String expectedCheckNoOfAdultsErrorMessage) {
        Assert.assertEquals ("Verify the no of bags error message", expectedNoOfBagsErrorMessage, manager.getBookFlightPage ().actualErrorNoOfBagsMessage ());
        Assert.assertEquals ("Verify the total Weight error message", expectedTotalWeightErrorMessage, manager.getBookFlightPage ().actualErrorTotalWeightErrorMessage ());
        Assert.assertEquals ("Verify the State Error message", expectedStateErrorMessage, manager.getBookFlightPage ().actualErrorStateMessageHotel ());
        Assert.assertEquals ("Verify the City Error message", expectedCityErrorMessage, manager.getBookFlightPage ().actualErrorCityMessageHotel ());
        Assert.assertEquals ("Verify the Check In Error message", expectedCheckInErrorMessage, manager.getBookFlightPage ().actualErrorCheckINMessage ());
        Assert.assertEquals ("Verify the Check Out Error message", expectedCheckOutErrorMessage, manager.getBookFlightPage ().actualErrorCheckOutMessage ());
        Assert.assertEquals ("Verify the No Of Rooms Error message", expectedCheckNoOfRoomsErrorMessage, manager.getBookFlightPage ().actualErrorNoOfRoomsMessage ());
        Assert.assertEquals ("Verify the No Of Adults Error message", expectedCheckNoOfAdultsErrorMessage, manager.getBookFlightPage ().actualErrorNoOfAdultsMessage ());
    }

    @Then ("User should verify the error message {string}, {string} and {string}")
    public void user_should_verify_the_error_message_and (String expectedGstRegistrationNumberMessage, String expectedGstRegistrationNameMessage, String expectedGstRegistrationCompanyMessage) {
        Assert.assertEquals ("Verify the GST Number error message", expectedGstRegistrationNumberMessage, manager.getBookFlightPage ().actualGSTNumberMessage ());
        Assert.assertEquals ("Verify the GST Name error message", expectedGstRegistrationNameMessage, manager.getBookFlightPage ().actualErrorGSTNameMessage ());
        Assert.assertEquals ("Verify the GST Address error message", expectedGstRegistrationCompanyMessage, manager.getBookFlightPage ().actualGSTAddressMessage ());
    }

    @When ("User click next without entering any fields in add itinerary details page")
    public void user_click_next_without_entering_any_fields_in_add_itinerary_details_page () {
        manager.getBookFlightPage ().clickNextWithoutEnteringDetailsInItineraryPage ();
    }

    @Then ("User should verify the error message {string} and {string}")
    public void user_should_verify_the_error_message_and (String expectedItineraryErrorMessage, String expectedNoOfTicketsErrorMessage) {
        Assert.assertEquals ("Verify the itinerary error message", expectedItineraryErrorMessage, manager.getBookFlightPage ().actualErrorItineraryNameMessage ());
        Assert.assertEquals ("Verify the no of tickets error message", expectedNoOfTicketsErrorMessage, manager.getBookFlightPage ().actualErrorNoOfTicketsMessage ());
    }

    @When ("User click next without entering any  details in card payment page")
    public void user_click_next_without_entering_any_details_in_card_payment_page () throws InterruptedException {
        manager.getBookFlightPage ().clickNextWithoutEnteringDetailsInPaymentPage ();
    }

    @Then ("user should verify the error message {string},{string},{string},{string},{string} and {string}")
    public void user_should_verify_the_error_message_and (String expectedPaymentTypeErrorMessage, String expectedCardTypeErrorMessage, String expectedCardNumberErrorMessage, String expectedCardNameErrorMessage, String expectedCardExpiryMonthErrorMessage, String expectedCardCvvErrorMessage) {
        Assert.assertEquals ("Verify the payment type error message", expectedPaymentTypeErrorMessage, manager.getBookFlightPage ().actualErrorPaymentTypeMessage ());
        Assert.assertEquals ("Verify the card type error message", expectedCardTypeErrorMessage, manager.getBookFlightPage ().actualErrorCardTypeMessage ());
        Assert.assertEquals ("Verify the card number error message", expectedCardNumberErrorMessage, manager.getBookFlightPage ().actualErrorCardNumberMessage ());
        Assert.assertEquals ("Verify the card name error message", expectedCardNameErrorMessage, manager.getBookFlightPage ().actualErrorCardNameMessage ());
        Assert.assertEquals ("Verify the card expiry month error message", expectedCardExpiryMonthErrorMessage, manager.getBookFlightPage ().actualErrorCardExpiryMonthMessage ());
        Assert.assertEquals ("Verify the card cvv error message", expectedCardCvvErrorMessage, manager.getBookFlightPage ().actualErrorCardCvvMessage ());
    }

    @When ("User enter the upi payment details, proceed with {string}")
    public void user_enter_the_upi_payment_details_proceed_with (String upiId) throws InterruptedException {
        manager.getBookFlightPage ().enterUpiDetails (upiId);
    }

    @Then ("User should verify the success message after booking {string} and save the orderId")
    public void user_should_verify_the_success_message_after_booking_and_save_the_order_id (String expectedBookingSuccessMessage) {
        Assert.assertTrue ("Verify the success message after booking", manager.getBookingConfirmationPage ().actualBookingConfirmationMessage ().contains (expectedBookingSuccessMessage));
        manager.getBookingConfirmationPage ().saveBookingId ();
    }

    @When ("User click next without entering any  details in upi payment page")
    public void user_click_next_without_entering_any_details_in_upi_payment_page () throws InterruptedException {
        manager.getBookFlightPage ().clickNextInUpiPage ();
    }

    @Then ("user should verify the error message {string}")
    public void user_should_verify_the_error_message (String expectedUPIErrorMessage) {
        Assert.assertEquals ("Verify the upi error message", expectedUPIErrorMessage, manager.getBookFlightPage ().actualErrorUpiMessage ());
    }


}