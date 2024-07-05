package com.omrbranch.pagemanager;

import com.omrbranch.pages.*;

public class PageObjectManager {
    private LoginPage loginPage;
    private SearchPage searchPage;
    private SelectPage selectPage;
    private BookFlightPage bookFlightPage;
    private BookingConfirmationPage bookingConfirmationPage;


    public LoginPage getLoginPage () {

        return (loginPage == null) ? loginPage = new LoginPage () : loginPage;
    }

    public SearchPage getSearchPage () {

        return (searchPage == null) ? searchPage = new SearchPage () : searchPage;
    }

    public SelectPage getSelectPage () {

        return (selectPage == null) ? selectPage = new SelectPage () : selectPage;
    }

    public BookFlightPage getBookFlightPage () {

        return (bookFlightPage == null) ? bookFlightPage = new BookFlightPage () : bookFlightPage;
    }

    public BookingConfirmationPage getBookingConfirmationPage () {

        return (bookingConfirmationPage == null) ? bookingConfirmationPage = new BookingConfirmationPage () : bookingConfirmationPage;
    }


}