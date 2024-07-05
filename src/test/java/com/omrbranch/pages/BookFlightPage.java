package com.omrbranch.pages;

import com.omrbranch.base.BaseClass;
import lombok.Getter;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;

@Getter
public class BookFlightPage extends BaseClass {
    public BookFlightPage () {
        PageFactory.initElements (driver, this);
    }

    @FindBy (xpath = "//a[@class='active show']")
    private WebElement textPassengerDetails;
    @FindBy (id = "mr_0")
    private WebElement rdoSaluation;
    @FindBy (id = "firstName_0")
    private WebElement txtFirstName;
    @FindBy (id = "lastName_0")
    private WebElement txtLastName;
    @FindBy (id = "male_0")
    private WebElement rdoMale;
    @FindBy (id = "dob_0")
    private WebElement txtDOB;
    @FindBy (id = "mobileNumber_0")
    private WebElement txtMobileNumber;
    @FindBy (id = "passengerEmail_0")
    private WebElement txtEmail;
    @FindBy (id = "passport_0")
    private WebElement txtPassportID;
    @FindBy (id = "visa_0")
    private WebElement txtVISAID;
    @FindBy (id = "valid_date_0")
    private WebElement txtValidDate;
    @FindBy (id = "occupation_0")
    private WebElement txtOccupation;
    @FindBy (id = "graduation_0")
    private WebElement txtGraduation;
    @FindBy (id = "passed_out_0")
    private WebElement txtPassedOut;
    @FindBy (id = "address_0")
    private WebElement txtAddress;
    @FindBy (id = "country_0")
    private WebElement ddnCountry;
    @FindBy (id = "state_0")
    private WebElement ddnState;
    @FindBy (id = "city_0")
    private WebElement ddnCity;
    @FindBy (id = "pincode_0")
    private WebElement txtPincode;
    @FindBy (id = "Student_0")
    private WebElement rdoStudentFare;
    @FindBy (id = "airline_0")
    private WebElement ddnAirline;
    @FindBy (id = "membership_id_0")
    private WebElement txtMemberShipID;
    @FindBy (id = "mr_1")
    private WebElement rdoSaluationSecond;
    @FindBy (id = "firstName_1")
    private WebElement txtFirstNameSecond;
    @FindBy (id = "lastName_1")
    private WebElement txtLastNameSecond;
    @FindBy (id = "male_1")
    private WebElement rdoMaleSecond;
    @FindBy (xpath = "//input[@name='dob[1]']")
    private WebElement txtDOBSecond;
    @FindBy (id = "mobileNumber_1")
    private WebElement txtMobileNumberSecond;
    @FindBy (id = "passengerEmail_1")
    private WebElement txtEmailSecond;
    @FindBy (id = "passport_1")
    private WebElement txtPassportIDSecond;
    @FindBy (id = "visa_1")
    private WebElement txtVISAIDSecond;
    @FindBy (xpath = "//input[@name='validDate[1]']")
    private WebElement txtValidDateSecond;
    @FindBy (id = "occupation_1")
    private WebElement txtOccupationSecond;
    @FindBy (id = "graduation_1")
    private WebElement txtGraduationSecond;
    @FindBy (id = "passed_out_1")
    private WebElement txtPassedOutSecond;
    @FindBy (id = "address_1")
    private WebElement txtAddressSecond;
    @FindBy (id = "country_1")
    private WebElement ddnCountrySecond;
    @FindBy (id = "state_1")
    private WebElement ddnStateSecond;
    @FindBy (id = "city_1")
    private WebElement ddnCitySecond;
    @FindBy (id = "pincode_1")
    private WebElement txtPincodeSecond;
    @FindBy (id = "Student_1")
    private WebElement rdoStudentFareSecond;
    @FindBy (id = "airline_1")
    private WebElement ddnAirlineSecond;
    @FindBy (id = "membership_id_1")
    private WebElement txtMemberShipIDSecond;
    @FindBy (id = "mr_2")
    private WebElement rdoSaluationThird;
    @FindBy (id = "firstName_2")
    private WebElement txtFirstNameThird;
    @FindBy (id = "lastName_2")
    private WebElement txtLastNameThird;
    @FindBy (id = "male_2")
    private WebElement rdoMaleThird;
    @FindBy (xpath = "//input[@name='dob[2]']")
    private WebElement txtDOBThird;
    @FindBy (id = "mobileNumber_2")
    private WebElement txtMobileNumberThird;
    @FindBy (id = "passengerEmail_2")
    private WebElement txtEmailThird;
    @FindBy (id = "passport_2")
    private WebElement txtPassportIDThird;
    @FindBy (id = "visa_2")
    private WebElement txtVISAIDThird;
    @FindBy (xpath = "//input[@name='validDate[2]']")
    private WebElement txtValidDateThird;
    @FindBy (id = "occupation_2")
    private WebElement txtOccupationThird;
    @FindBy (id = "graduation_2")
    private WebElement txtGraduationThird;
    @FindBy (id = "passed_out_2")
    private WebElement txtPassedOutThird;
    @FindBy (id = "address_2")
    private WebElement txtAddressThird;
    @FindBy (id = "country_2")
    private WebElement ddnCountryThird;
    @FindBy (id = "state_2")
    private WebElement ddnStateThird;
    @FindBy (id = "city_2")
    private WebElement ddnCityThird;
    @FindBy (id = "pincode_2")
    private WebElement txtPincodeThird;
    @FindBy (id = "Student_2")
    private WebElement rdoStudentThird;
    @FindBy (id = "airline_2")
    private WebElement ddnAirlineThird;
    @FindBy (id = "membership_id_2")
    private WebElement txtMemberShipIDThird;
    @FindBy (id = "add_row")
    private WebElement btnAddPassenger;
    @FindBy (id = "step1next")
    private WebElement btnNextInPassengerDetailsPage;
    @FindBy (id = "gst")
    private WebElement rdoGST;
    @FindBy (id = "gst_registration")
    private WebElement txtRegistrationNumber;
    @FindBy (id = "company_name")
    private WebElement txtCompanyName;
    @FindBy (id = "company_address")
    private WebElement txtCompanyAddress;
    @FindBy (id = "yes")
    private WebElement rdoInsuranceTripYes;
    @FindBy (xpath = "//a[contains(text(),'ICICI')]")
    private WebElement srcInsurance;
    @FindBy (xpath = "//p[contains(text(),'Drop')]/parent::div")
    private WebElement targetInsurance;
    @FindBy (xpath = "//button[contains(text(),'100')]")
    private WebElement btnOffer;
    @FindBy (id = "step2next")
    private WebElement btnNextInGSTPage;
    @FindBy (id = "numberbagsId")
    private WebElement txtNumberOfBags;
    @FindBy (id = "totalweightId")
    private WebElement txtTotalWeight;
    @FindBy (id = "state")
    private WebElement ddnStateInSelectHotel;
    @FindBy (id = "city")
    private WebElement ddnCityInSelectHotel;
    @FindBy (id = "room_type")
    private WebElement ddnRoomType;
    @FindBy (xpath = "//input[@name='check_in']")
    private WebElement txtCheckIn;
    @FindBy (xpath = "//input[@name='check_out']")
    private WebElement txtCheckOut;
    @FindBy (id = "no_rooms")
    private WebElement ddnNoOfRooms;
    @FindBy (id = "no_adults")
    private WebElement ddnNoOdAdults;
    @FindBy (id = "no_child")
    private WebElement txtNoOfChild;
    @FindBy (id = "hotelsearch")
    private WebElement btnSearch;
    @FindBy (id = "confirmbag")
    private WebElement btnConfirmBag;
    @FindBy (id = "hotel_name")
    private WebElement ddnSelectHotel;
    @FindBy (id = "hotelconfirm")
    private WebElement btnConfirm;
    @FindBy (id = "step3next")
    private WebElement btnNextInBaggageDetailsPAge;
    @FindBy (id = "itinerary_name_0")
    private WebElement ddnItineraryName;
    @FindBy (id = "number_ticket_0")
    private WebElement txtNoOfTickets;
    @FindBy (xpath = "//li[contains(text(),'Sand')]")
    private WebElement srcMeals;
    @FindBy (xpath = "//div[@class='mealDroppable']/parent::td")
    private List <WebElement> targetMeals;
    @FindBy (id = "car_name")
    private WebElement ddnCarName;
    @FindBy (id = "step4next")
    private WebElement btnNextInItineraryPage;
    @FindBy (xpath = "//input[@value='5A']")
    private List <WebElement> btnSeatNumberPassengerOne;
    @FindBy (xpath = "//input[@value='5B']")
    private List <WebElement> btnSeatNumberPassengerTwo;
    @FindBy (xpath = "//input[@value='5C']")
    private List <WebElement> btnSeatNumberPassengerThree;
    @FindBy (id = "step5next")
    private WebElement btnNextInSelectSeatPage;
    @FindBy (xpath = "//div[@class='credit-card pm']")
    private WebElement btnCredit;
    @FindBy (id = "payment_type")
    private WebElement ddnPaymentType;
    @FindBy (id = "card_type")
    private WebElement ddnCardType;
    @FindBy (id = "card_no")
    private WebElement txtCardNo;
    @FindBy (id = "card_name")
    private WebElement txtCardName;
    @FindBy (id = "card_month")
    private WebElement ddnCardMonth;
    @FindBy (id = "cvv")
    private WebElement txtCvv;
    @FindBy (id = "submitBtn")
    private WebElement btnSubmit;
    @FindBy (id = "card_year")
    private WebElement ddnYear;
    @FindBy (xpath = "//input[@name='flightRouteIdDepart']")
    private List <WebElement> btnFirstFlightSelect;
    @FindBy (xpath = "//input[@name='flightRouteId']")
    private List <WebElement> btnSecondFlightSelect;
    @FindBy (id = "bookNowLink")
    private WebElement btnBookNow;
    @FindBy (xpath = "//h2[text()='Sort By']")
    private WebElement scrollDown;
    @FindBy (id = "invalid-mr_type[0]")
    private WebElement textErrorSaluation;
    @FindBy (id = "invalid-firstName[0]")
    private WebElement textErrorFirstName;
    @FindBy (id = "invalid-lastName[0]")
    private WebElement textErrorLastName;
    @FindBy (id = "invalid-gender[0]")
    private WebElement textErrorGender;
    @FindBy (id = "invalid-dob[0]")
    private WebElement textErrorDOB;
    @FindBy (id = "invalid-mobileNumber[0]")
    private WebElement textErrorMobileNumber;
    @FindBy (id = "invalid-passengerEmail[0]")
    private WebElement textErrorEmail;
    @FindBy (id = "invalid-passport[0]")
    private WebElement textErrorPassport;
    @FindBy (id = "invalid-visa[0]")
    private WebElement textErrorVisa;
    @FindBy (id = "invalid-validDate[0]")
    private WebElement textErrorValidDate;
    @FindBy (id = "invalid-occupation[0]")
    private WebElement textErrorOccupation;
    @FindBy (id = "invalid-graduation[0]")
    private WebElement textErrorGraduation;
    @FindBy (id = "invalid-passed_out[0]")
    private WebElement textErrorPassedOut;
    @FindBy (id = "invalid-address[0]")
    private WebElement textErrorAddress;
    @FindBy (id = "invalid-country_name[0]")
    private WebElement textErrorCountry;
    @FindBy (id = "invalid-state_name[0]")
    private WebElement textErrorState;
    @FindBy (id = "invalid-city_name[0]")
    private WebElement textErrorCity;
    @FindBy (id = "invalid-pin_number[0]")
    private WebElement textErrorPincode;
    @FindBy (id = "invalid-airline_name[0]")
    private WebElement textErrorAirline;
    @FindBy (id = "invalid-membership_id[0]")
    private WebElement textErrorMembershipId;
    @FindBy (id = "invalid-registration")
    private WebElement textErrorGSTNumberMessage;
    @FindBy (id = "invalid-company_name")
    private WebElement textErrorGSTNameMessage;
    @FindBy (id = "invalid-company_address")
    private WebElement textErrorGSTAddressMessage;
    @FindBy (xpath = "//a[text()='BOOK NOW']")
    private List <WebElement> btnContinue;
    @FindBy (id = "invalid-state")
    private WebElement textErrorStateMessage;
    @FindBy (id = "invalid-city")
    private WebElement textErrorCityMessage;
    @FindBy (id = "invalid-check_in")
    private WebElement textErrorCheckInMessage;
    @FindBy (id = "invalid-check_out")
    private WebElement textErrorCheckOutMessage;
    @FindBy (id = "invalid-no_rooms")
    private WebElement textErrorNoOfRoomsMessage;
    @FindBy (id = "invalid-no_adults")
    private WebElement textErrorNoOfAdultsMessage;
    @FindBy (id = "invalid-numberbags")
    private WebElement textErrorNoOfBagsMessage;
    @FindBy (id = "invalid-totalweight")
    private WebElement textErrorTotalWeightMessage;
    @FindBy (id = "invalid-itinerary_name[0]")
    private WebElement textErrorItineraryMessage;
    @FindBy (id = "invalid-number_ticket[0]")
    private WebElement textErrorNoOfTicketsMessage;
    @FindBy (id = "invalid-payment_type")
    private WebElement textErrorPaymentMessage;
    @FindBy (id = "invalid-card_type")
    private WebElement textErrorCardTypeMessage;
    @FindBy (id = "invalid-card_no")
    private WebElement textErrorCardNumberErrorMessage;
    @FindBy (id = "invalid-card_name")
    private WebElement textCardNameErrorMessage;
    @FindBy (id = "invalid-card_month")
    private WebElement textCardExpiryMonthErrorMessage;
    @FindBy (id = "invalid-cvv")
    private WebElement textCardCvvErrorMessage;
    @FindBy (xpath = "//div[@class='upi pm']")
    private WebElement btnUpi;
    @FindBy (id = "upi_id")
    private WebElement txtUppiID;
    @FindBy (id = "invalid-upi")
    private WebElement textErrorUpiIDMessage;

    public void enterUpiDetails (String upiId) throws InterruptedException {
        elementClickByJavaScript (btnUpi);
        elementSendKeys (txtUppiID, upiId);
        sleep (9000);
        elementClick (btnSubmit);
    }

    public void clickNextInUpiPage() throws InterruptedException {
        elementClickByJavaScript (btnUpi);
        sleep (9000);
        elementClick (btnSubmit);
    }

    public String actualErrorUpiMessage () {
        return elementGetText (textErrorUpiIDMessage);
    }

    public String actualErrorPaymentTypeMessage () {
        return elementGetText (textErrorPaymentMessage);
    }

    public String actualErrorCardTypeMessage () {
        return elementGetText (textErrorCardTypeMessage);
    }

    public String actualErrorCardNumberMessage () {
        return elementGetText (textErrorCardNumberErrorMessage);
    }

    public String actualErrorCardNameMessage () {
        return elementGetText (textCardNameErrorMessage);
    }

    public String actualErrorCardExpiryMonthMessage () {
        return elementGetText (textCardExpiryMonthErrorMessage);
    }

    public String actualErrorCardCvvMessage () {
        return elementGetText (textCardCvvErrorMessage);
    }

    public String actualErrorItineraryNameMessage () {
        return elementGetText (textErrorItineraryMessage);
    }

    public String actualErrorNoOfTicketsMessage () {
        return elementGetText (textErrorNoOfTicketsMessage);
    }

    public String actualErrorNoOfBagsMessage () {
        return elementGetText (textErrorNoOfBagsMessage);
    }

    public String actualErrorTotalWeightErrorMessage () {
        return elementGetText (textErrorTotalWeightMessage);
    }

    public String actualErrorStateMessageHotel () {
        return elementGetText (textErrorStateMessage);
    }

    public String actualErrorCityMessageHotel () {
        return elementGetText (textErrorCityMessage);
    }

    public String actualErrorCheckINMessage () {
        return elementGetText (textErrorCheckInMessage);
    }

    public String actualErrorCheckOutMessage () {
        return elementGetText (textErrorCheckOutMessage);
    }

    public String actualErrorNoOfRoomsMessage () {
        return elementGetText (textErrorNoOfRoomsMessage);
    }

    public String actualErrorNoOfAdultsMessage () {
        return elementGetText (textErrorNoOfAdultsMessage);
    }

    public String actualErrorGSTNameMessage () {
        return elementGetText (textErrorGSTNameMessage);
    }

    public String actualGSTNumberMessage () {
        return elementGetText (textErrorGSTNumberMessage);
    }

    public String actualGSTAddressMessage () {
        return elementGetText (textErrorGSTAddressMessage);
    }

    public String actualErrorSaluationMessage () {
        return elementGetText (textErrorSaluation);
    }

    public String actualErrorFirstNameErrorMessage () {
        return elementGetText (textErrorFirstName);
    }

    public String actualErrorLastNameErrorMessage () {
        return elementGetText (textErrorLastName);
    }

    public String actualErrorGenderMessage () {
        return elementGetText (textErrorGender);
    }

    public String actualErrorDOB () {
        return elementGetText (textErrorDOB);
    }

    public String actualErrorEmail () {
        return elementGetText (textErrorEmail);
    }

    public String actualErrorMobileNumber () {
        return elementGetText (textErrorMobileNumber);
    }

    public String actualErrorPassportMessage () {
        return elementGetText (textErrorPassport);
    }

    public String actualErrorVisaMessage () {
        return elementGetText (textErrorVisa);
    }

    public String actualErrorValidDateMessage () {
        return elementGetText (textErrorValidDate);
    }

    public String actualErrorOccupationMessage () {
        return elementGetText (textErrorOccupation);
    }

    public String actualErrorPassedOutMessage () {
        return elementGetText (textErrorPassedOut);
    }

    public String actualErrorGraduationMessage () {
        return elementGetText (textErrorGraduation);
    }

    public String actualErrorAddressMessage () {
        return elementGetText (textErrorAddress);
    }

    public String actualErrorCountryMessage () {
        return elementGetText (textErrorCountry);
    }

    public String actualErrorStateMessage () {
        return elementGetText (textErrorState);
    }

    public String actualErrorCityMessage () {
        return elementGetText (textErrorCity);
    }

    public String actualErrorPincodeMessage () {
        return elementGetText (textErrorPincode);
    }

    public String actualErrorAirlineMessage () {
        return elementGetText (textErrorAirline);
    }

    public String actualErrorMembershipIdMessage () {
        return elementGetText (textErrorMembershipId);
    }


    public boolean isPassengerDetailsDisplayed () {
        try {
            return textPassengerDetails.isDisplayed ();
        } catch (NoSuchElementException e) {
            elementClick (btnContinue.get (0));
            acceptAlert ();
            return textPassengerDetails.isDisplayed ();
        }

    }

    public boolean isGSTInformationDisplayed () {
        return textPassengerDetails.isDisplayed ();
    }

    public boolean isBaggageInformationDisplayed () {
        return textPassengerDetails.isDisplayed ();
    }

    public boolean isAddItineraryDetailsDisplayed () {
        return textPassengerDetails.isDisplayed ();
    }

    public boolean isSelectSeatDisplayed () {
        return textPassengerDetails.isDisplayed ();
    }

    public boolean isPaymentDetailsDisplayed () {
        return textPassengerDetails.isDisplayed ();
    }

    public void enterFirstPassengerDetails (String firstName, String lastName, String DOB, String mobileNumber, String emailID, String passportID, String VISAID, String validDate, String occupation, String graduation, String passedOut, String address, String country, String state, String city, String pincode, String airLineName, String memberShipID) {
        elementClick (rdoSaluation);
        if (rdoSaluation.isSelected ()) {
            elementSendKeys (txtFirstName, firstName);
        } else {
            elementClick (rdoSaluation);
            elementSendKeys (txtFirstName, firstName);
        }

        elementSendKeys (txtLastName, lastName);
        elementClick (rdoMale);
        elementSendKeys (txtDOB, DOB);
        elementSendKeys (txtMobileNumber, mobileNumber);
        elementSendKeys (txtEmail, emailID);
        elementSendKeys (txtPassportID, passportID);
        elementSendKeys (txtVISAID, VISAID);
        elementSendKeys (txtValidDate, validDate);
        elementSendKeys (txtOccupation, occupation);
        elementSendKeys (txtGraduation, graduation);
        elementSendKeys (txtPassedOut, passedOut);
        elementSendKeys (txtAddress, address);
        elementDropDownByVisibletext (ddnCountry, country);
        elementDropDownByVisibletext (ddnState, state);
        elementDropDownByVisibletext (ddnCity, city);
        elementSendKeys (txtPincode, pincode);
        elementClick (rdoStudentFare);
        elementDropDownByVisibletext (ddnAirline, airLineName);
        elementSendKeys (txtMemberShipID, memberShipID);
    }


    public void enterSecondPassengerDetails (String firstName, String lastName, String DOB, String mobileNumber, String emailID, String passportID, String VISAID, String validDate, String occupation, String graduation, String passedOut, String address, String country, String state, String city, String pincode, String airLineName, String memberShipID) {
        elementClick (btnAddPassenger);
        elementClick (rdoSaluationSecond);
        elementSendKeys (txtFirstNameSecond, firstName);
        elementSendKeys (txtLastNameSecond, lastName);
        elementClick (rdoMaleSecond);
        elementSendKeys (txtDOBSecond, DOB);
        elementSendKeys (txtMobileNumberSecond, mobileNumber);
        elementSendKeys (txtEmailSecond, emailID);
        elementSendKeys (txtPassportIDSecond, passportID);
        elementSendKeys (txtVISAIDSecond, VISAID);
        elementSendKeys (txtValidDateSecond, validDate);
        elementSendKeys (txtOccupationSecond, occupation);
        elementSendKeys (txtGraduationSecond, graduation);
        elementSendKeys (txtPassedOutSecond, passedOut);
        elementSendKeys (txtAddressSecond, address);
        elementDropDownByVisibletext (ddnCountrySecond, country);
        elementDropDownByVisibletext (ddnStateSecond, state);
        elementDropDownByVisibletext (ddnCitySecond, city);
        elementSendKeys (txtPincodeSecond, pincode);
        elementClick (rdoStudentFareSecond);
        elementDropDownByVisibletext (ddnAirlineSecond, airLineName);
        elementSendKeys (txtMemberShipIDSecond, memberShipID);
    }

    public void addThirdPassengerDetails (String firstName, String lastName, String DOB, String mobileNumber, String emailID, String passportID, String VISAID, String validDate, String occupation, String graduation, String passedOut, String address, String country, String state, String city, String pincode, String airLineName, String memberShipID) {
        elementClick (btnAddPassenger);
        elementClick (rdoSaluationThird);
        elementSendKeys (txtFirstNameThird, firstName);
        elementSendKeys (txtLastNameThird, lastName);
        elementClick (rdoMaleThird);
        elementSendKeys (txtDOBThird, DOB);
        elementSendKeys (txtMobileNumberThird, mobileNumber);
        elementSendKeys (txtEmailThird, emailID);
        elementSendKeys (txtPassportIDThird, passportID);
        elementSendKeys (txtVISAIDThird, VISAID);
        elementSendKeys (txtValidDateThird, validDate);
        elementSendKeys (txtOccupationThird, occupation);
        elementSendKeys (txtGraduationThird, graduation);
        elementSendKeys (txtPassedOutThird, passedOut);
        elementSendKeys (txtAddressThird, address);
        elementDropDownByVisibletext (ddnCountryThird, country);
        elementDropDownByVisibletext (ddnStateThird, state);
        elementDropDownByVisibletext (ddnCityThird, city);
        elementSendKeys (txtPincodeThird, pincode);
        elementClick (rdoStudentThird);
        elementDropDownByVisibletext (ddnAirlineThird, airLineName);
        elementSendKeys (txtMemberShipIDThird, memberShipID);

    }

    public void clickNextInPassengerDetailsPage () {
        elementClick (btnNextInPassengerDetailsPage);
    }

    public void enterGstDetails (String gstNumber, String gstName, String gstAddress) {
        elementClickByJavaScript (rdoGST);
        elementSendKeys (txtRegistrationNumber, gstNumber);
        elementSendKeys (txtCompanyName, gstName);
        elementSendKeys (txtCompanyAddress, gstAddress);

    }

    public void enterInsurance () throws InterruptedException {
        try {
            elementClick (rdoInsuranceTripYes);
        } catch (Exception e) {
            sleep (3000);
            elementClick (rdoInsuranceTripYes);
        }
        elementDragAndDrop (srcInsurance, targetInsurance);
    }

    public void applyCouponCode () {
        elementDoubleClick (btnOffer);
    }

    public void clickNextInGSTDetailsPage () {
        elementClick (btnNextInGSTPage);
    }

    public void enterBagDetails (String noOfBags, String totalWeight) {
        elementSendKeys (txtNumberOfBags, noOfBags);
        elementSendKeys (txtTotalWeight, totalWeight);
        elementClick (btnConfirmBag);
        promptAlert (totalWeight);

    }

    public void enterHotelDetails (String state, String city, String roomType, String checkIn, String checkOut, String noOfRooms, String noOfAdults, String noOfChildren, String hotelName) {
        elementDropDownByVisibletext (ddnStateInSelectHotel, state);
        elementDropDownByVisibletext (ddnCityInSelectHotel, city);
        elementDropDownByVisibletext (ddnRoomType, roomType);
        elementSendKeysByJavaScript (txtCheckIn, checkIn);
        acceptAlert ();
        elementSendKeysByJavaScript (txtCheckOut, checkOut);
        elementDropDownByVisibletext (ddnNoOfRooms, noOfRooms);
        acceptAlert ();
        elementDropDownByVisibletext (ddnNoOdAdults, noOfAdults);
        acceptAlert ();
        elementSendKeys (txtNoOfChild, noOfChildren);
        acceptAlert ();
        acceptAlert ();
        elementClick (btnSearch);
        acceptAlert ();
        elementDropDownByVisibletext (ddnSelectHotel, hotelName);
        acceptAlert ();
        elementClick (btnConfirm);
        acceptAlert ();
        elementClick (btnNextInBaggageDetailsPAge);
    }

    public void enterItineraryDetailsForThreePassenger (String itineraryName, String noOfTickets, String carName) {
        acceptAlert ();
        elementDropDownByVisibletext (ddnItineraryName, itineraryName);
        acceptAlert ();
        elementSendKeys (txtNoOfTickets, noOfTickets);
        acceptAlert ();
        elementDragAndDrop (srcMeals, targetMeals.get (0));
        acceptAlert ();
        elementDragAndDrop (srcMeals, targetMeals.get (1));
        acceptAlert ();
        elementDragAndDrop (srcMeals, targetMeals.get (2));
        acceptAlert ();
        elementDropDownByVisibletext (ddnCarName, carName);
        acceptAlert ();
        elementClick (btnNextInItineraryPage);
    }

    public void enterItineraryDetailsForTwoPassenger (String itineraryName, String noOfTickets, String carName) {
        acceptAlert ();
        elementDropDownByVisibletext (ddnItineraryName, itineraryName);
        acceptAlert ();
        elementSendKeys (txtNoOfTickets, noOfTickets);
        acceptAlert ();
        elementDragAndDrop (srcMeals, targetMeals.get (0));
        elementDragAndDrop (srcMeals, targetMeals.get (1));
        acceptAlert ();
        elementDropDownByVisibletext (ddnCarName, carName);
        acceptAlert ();
        elementClick (btnNextInItineraryPage);
    }

    public void enterItineraryDetailsForOnePassenger (String itineraryName, String noOfTickets, String carName) {
        acceptAlert ();
        elementDropDownByVisibletext (ddnItineraryName, itineraryName);
        acceptAlert ();
        elementSendKeys (txtNoOfTickets, noOfTickets);
        acceptAlert ();
        elementDragAndDrop (srcMeals, targetMeals.get (0));
        acceptAlert ();
        elementDropDownByVisibletext (ddnCarName, carName);
        acceptAlert ();
        elementClick (btnNextInItineraryPage);
    }


    public void selectFlightSeatForThreePassengerInOneWay (String seat1, String seat2, String seat3) {
        elementClickByJavaScript (locatorsByXpath ("//input[@value='" + seat1 + "']").get (0));
        elementClickByJavaScript (locatorsByXpath ("//input[@value='" + seat2 + "']").get (0));
        elementClickByJavaScript (locatorsByXpath ("//input[@value='" + seat3 + "']").get (0));
        elementClickByJavaScript (btnNextInSelectSeatPage);

    }

    public void selectFlightSeatForTwoPassengerInOneWay (String seat1, String seat2) {
        elementClickByJavaScript (locatorsByXpath ("//input[@value='" + seat1 + "']").get (0));
        elementClickByJavaScript (locatorsByXpath ("//input[@value='" + seat2 + "']").get (0));
        elementClickByJavaScript (btnNextInSelectSeatPage);

    }

    public void selectFlightSeatForOnePassengerInRoundTrip (String seat1, String seat1R) {
        elementClickByJavaScript (locatorsByXpath ("//input[@value='" + seat1 + "']").get (0));
        elementClickByJavaScript (locatorsByXpath ("//input[@value='" + seat1R + "']").get (1));
        elementClickByJavaScript (btnNextInSelectSeatPage);

    }

    public void selectFlightSeatForOnePassengerInOneWay (String seat1) {
        elementClickByJavaScript (locatorsByXpath ("//input[@value='" + seat1 + "']").get (0));
        elementClickByJavaScript (btnNextInSelectSeatPage);

    }


    public void selectFlightSeatForThreePassengerInRoundTrip (String seat1, String seat2, String seat3, String seat1R, String seat2R, String seat3R) {
        elementClickByJavaScript (locatorsByXpath ("//input[@value='" + seat1 + "']").get (0));
        elementClickByJavaScript (locatorsByXpath ("//input[@value='" + seat2 + "']").get (0));
        elementClickByJavaScript (locatorsByXpath ("//input[@value='" + seat3 + "']").get (0));
        elementClickByJavaScript (locatorsByXpath ("//input[@value='" + seat1R + "']").get (1));
        elementClickByJavaScript (locatorsByXpath ("//input[@value='" + seat2R + "']").get (1));
        elementClickByJavaScript (locatorsByXpath ("//input[@value='" + seat3R + "']").get (1));
        elementClickByJavaScript (btnNextInSelectSeatPage);

    }

    public void selectFlightSeatForTwoPassengerInRoundTrip (String seat1, String seat2, String seat1R, String seat2R) {
        elementClickByJavaScript (locatorsByXpath ("//input[@value='" + seat1 + "']").get (0));
        elementClickByJavaScript (locatorsByXpath ("//input[@value='" + seat2 + "']").get (0));
        elementClickByJavaScript (locatorsByXpath ("//input[@value='" + seat1R + "']").get (1));
        elementClickByJavaScript (locatorsByXpath ("//input[@value='" + seat2R + "']").get (1));
        elementClickByJavaScript (btnNextInSelectSeatPage);

    }


    public void addPaymentDetails (String card, String cardType, String cardNumber, String cardName, String month, String year, String cvv) {
        elementClick (btnCredit);
        elementDropDownByVisibletext (ddnPaymentType, card);
        elementDropDownByVisibletext (ddnCardType, cardType);
        elementSendKeys (txtCardNo, cardNumber);
        elementSendKeys (txtCardName, cardName);
        elementDropDownByVisibletext (ddnCardMonth, month);
        elementDropDownByVisibletext (ddnYear, year);
        elementSendKeys (txtCvv, cvv);
        elementClick (btnSubmit);
    }

    public void enterPaymentDetails (String cardType, io.cucumber.datatable.DataTable dataTable) {
        List <Map <String, String>> maps = dataTable.asMaps ();
        Map <String, String> map = null;
        if (cardType.equals ("Debit Card")) {
            map = maps.get (0);
        } else if (cardType.equals ("Credit Card")) {
            map = maps.get (1);
        }
        String selectCard = map.get ("Select Card");
        String cardNo = map.get ("Card No");
        String cardName = map.get ("Card Name");
        String month = map.get ("Month");
        String year = map.get ("Year");
        String cvv = map.get ("CVV");
        addPaymentDetails (cardType, selectCard, cardNo, cardName, month, year, cvv);

    }

    public void selectFirstRoundTripFlights () {
        pageScrollDown (scrollDown);
        elementClickByJavaScript (btnFirstFlightSelect.get (0));
        elementClickByJavaScript (btnSecondFlightSelect.get (0));
        elementClick (btnBookNow);
        acceptAlert ();

    }

    public void selectLastRoundTripFlights () {
        pageScrollDown (scrollDown);
        elementClickByJavaScript (btnFirstFlightSelect.get (btnFirstFlightSelect.size () - 1));
        elementClickByJavaScript (btnSecondFlightSelect.get (btnSecondFlightSelect.size () - 1));
        elementClick (btnBookNow);
        acceptAlert ();

    }

    public void clickNextWithoutEnteringDetailsInGSTPage () {
        elementClick (rdoGST);
        elementClick (btnNextInGSTPage);
    }

    public void clickNextWithoutEnteringDetailsInBaggagePage () {
        elementClick (btnConfirmBag);
        acceptAlert ();
        if (textErrorNoOfBagsMessage.isDisplayed ()) {
            elementClick (btnSearch);
        } else {
            elementClick (btnConfirmBag);
            acceptAlert ();
            elementClick (btnSearch);
        }

    }

    public void clickNextWithoutEnteringDetailsInItineraryPage () {
        acceptAlert ();
        elementClick (btnNextInItineraryPage);
    }

    public void clickNextWithoutEnteringDetailsInPaymentPage () throws InterruptedException {
        acceptAlert ();
        elementClick (btnCredit);
        acceptAlert ();
        sleep (6000);
        elementClick (btnSubmit);
    }

}