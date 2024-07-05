package com.omrbranch.pages;

import com.omrbranch.base.BaseClass;
import lombok.Getter;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;


@Getter
public class SearchPage extends BaseClass {
    public SearchPage () {
        PageFactory.initElements (driver, this);
    }

    @FindBy (xpath = "//a[@data-testid='username']")
    private WebElement textSuccessMessage;
    @FindBy (xpath = "//a[text()='Book Flight']")
    private WebElement btnFlight;
    @FindBy (id = "left")
    private WebElement txtFlyingFrom;
    @FindBy (id = "right")
    private WebElement txtFlyingTo;
    @FindBy (xpath = "//div[contains(text(),'Chennai')]")
    private WebElement btnChennai;
    @FindBy (xpath = "//div[contains(text(),'Bengaluru')]")
    private WebElement btnBangalore;
    @FindBy (id = "departureDate")
    private WebElement txtDepartureDate;
    @FindBy (id = "passenger")
    private WebElement btnPassenger;
    @FindBy (id = "adultsCount")
    private WebElement ddnAdults;
    @FindBy (id = "childrenCount")
    private WebElement ddnChildren;
    @FindBy (id = "infantsCount")
    private WebElement ddnInfants;
    @FindBy (xpath = "//input[@id='economy']/parent::label")
    private WebElement btnEconomy;
    @FindBy (xpath = "//input[@id='seniorCitizen']/parent::label")
    private WebElement btnSeniorCitizen;
    @FindBy (xpath = "//button[text()='Apply']")
    private WebElement btnApply;
    @FindBy (id = "search_flight")
    private WebElement btnSearchFlight;
    @FindBy (id = "flightlist")
    private WebElement flightList;
    @FindBy (id = "removeReadonly")
    private WebElement btnRoundTrip;
    @FindBy (id = "returnDate")
    private WebElement txtReturnDate;
    @FindBy (id = "invalid-flyingfrom")
    private WebElement textErrorFlyingFrom;
    @FindBy (id = "invalid-flyingTo")
    private WebElement textErrorFlyingTo;


    public String expectedSuccessMessage () {
        elementClick (btnFlight);
        return elementGetText (textSuccessMessage);

    }

    public void searchAllFields (String flyingFrom, String flyingTo, String departDate, String adults, String children, String infants) {
        elementSendKeys (txtFlyingFrom, flyingFrom);
        elementClick (locatorByXpath ("//div[contains(text(),'" + flyingFrom + "')]"));
        elementSendKeys (txtFlyingTo, flyingTo);
        elementClick (locatorByXpath ("//div[contains(text(),'" + flyingTo + "')]"));
        elementClear (txtDepartureDate);
        elementSendKeys (txtDepartureDate, departDate);
        elementClick (btnPassenger);
        elementDropDownByVisibletext (ddnAdults, adults);
        elementDropDownByVisibletext (ddnChildren, children);
        elementDropDownByVisibletext (ddnInfants, infants);
        elementClick (btnEconomy);
        elementClick (btnSeniorCitizen);
        elementClick (btnApply);
        elementClick (btnSearchFlight);


    }

    public void searchRoundTripWithAllFields (String flyingFrom, String flyingTo, String departDate, String returnDate, String adults, String children, String infants) {
        elementClick (btnRoundTrip);
        elementSendKeys (txtFlyingFrom, flyingFrom);
        elementClick (locatorByXpath ("//div[contains(text(),'" + flyingFrom + "')]"));
        elementSendKeys (txtFlyingTo, flyingTo);
        elementClick (locatorByXpath ("//div[contains(text(),'" + flyingTo + "')]"));
        elementClear (txtDepartureDate);
        elementSendKeys (txtDepartureDate, departDate);
        elementClick (btnPassenger);
        elementClear (txtReturnDate);
        elementSendKeys (txtReturnDate, returnDate);
        elementDropDownByVisibletext (ddnAdults, adults);
        elementDropDownByVisibletext (ddnChildren, children);
        elementDropDownByVisibletext (ddnInfants, infants);
        elementClick (btnEconomy);
        elementClick (btnSeniorCitizen);
        elementClick (btnApply);
        elementClick (btnSearchFlight);


    }

    public boolean verifyFlightIsDisplayed () {
        return flightList.isDisplayed ();
    }

    public void searchWithMandatoryFields (String flyingFrom, String flyingTo, String departDate, String adults) {
        elementSendKeys (txtFlyingFrom, flyingFrom);
        elementClick (locatorByXpath ("//div[contains(text(),'" + flyingFrom + "')]"));
        elementSendKeys (txtFlyingTo, flyingTo);
        elementClick (locatorByXpath ("//div[contains(text(),'" + flyingTo + "')]"));
        elementClear (txtDepartureDate);
        elementSendKeys (txtDepartureDate, departDate);
        elementClick (btnPassenger);
        elementDropDownByVisibletext (ddnAdults, adults);
        elementClick (btnApply);
        elementClick (btnSearchFlight);
    }

    public void searchWithMandatoryFieldsRoundTrip (String flyingFrom, String flyingTo, String departDate, String returnDate, String adults) {
        elementClick (btnRoundTrip);
        elementSendKeys (txtFlyingFrom, flyingFrom);
        elementClick (locatorByXpath ("//div[contains(text(),'" + flyingFrom + "')]"));
        elementSendKeys (txtFlyingTo, flyingTo);
        elementClick (locatorByXpath ("//div[contains(text(),'" + flyingTo + "')]"));
        elementClear (txtDepartureDate);
        elementSendKeys (txtDepartureDate, departDate);
        elementClear (txtReturnDate);
        elementSendKeys (txtReturnDate, returnDate);
        elementClick (btnPassenger);
        elementDropDownByVisibletext (ddnAdults, adults);
        elementClick (btnApply);
        elementClick (btnSearchFlight);
    }

    public void clickSearchFlight () {
        elementClick (btnSearchFlight);

    }

    public String actualFlyingFromErrorMessage () {
        return elementGetText (textErrorFlyingFrom);
    }

    public String actualFlyingToErrorMessage () {
        return elementGetText (textErrorFlyingTo);
    }


}