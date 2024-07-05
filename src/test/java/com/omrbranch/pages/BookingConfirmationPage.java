package com.omrbranch.pages;

import com.omrbranch.base.BaseClass;
import lombok.Getter;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

@Getter
public class BookingConfirmationPage extends BaseClass {
    public BookingConfirmationPage () {
        PageFactory.initElements (driver, this);
    }

    public static String bookingId;

    @FindBy (xpath = "//h2[@class='couppon-code']")
    private WebElement textBookingConfirmMessage;
    @FindBy (xpath = "//button[text()='My Booking']")
    private WebElement btnMyBooking;
    @FindBy (xpath = "//h2[@class='couppon-code']/strong")
    private WebElement textBookingId;

    public String actualBookingConfirmationMessage () {
        acceptAlert ();
        return elementGetText (textBookingConfirmMessage);
    }

    public void saveBookingId () {
        acceptAlert ();
        bookingId = elementGetText (textBookingId);
        System.out.println (bookingId);
    }

}