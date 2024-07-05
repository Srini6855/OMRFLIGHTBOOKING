package com.omrbranch.stepdefinition;

import com.omrbranch.pagemanager.PageObjectManager;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import net.sourceforge.tess4j.TesseractException;
import org.junit.Assert;

import java.io.IOException;

public class TC3_SelectFlight_Step {
    PageObjectManager manager = new PageObjectManager ();

    @When ("User click price low to high button")
    public void user_click_price_low_to_high_button () throws InterruptedException {
        manager.getSelectPage ().selectLowToHigh ();
    }

    @Then ("User should verify that flights are listed in low to high prices")
    public void user_should_verify_that_flights_are_listed_in_low_to_high_prices () {
        Assert.assertTrue ("Verify that flights are listed in low to high price", manager.getSelectPage ().verifyThatPriceIsLowToHigh ());
    }

    @When ("User click price high to low button")
    public void user_click_price_high_to_low_button () throws InterruptedException, TesseractException, IOException {
        manager.getSelectPage ().selectHighToLow ();
    }

    @Then ("User should verify that flights are listed in high to low prices")
    public void user_should_verify_that_flights_are_listed_in_high_to_low_prices () {
        Assert.assertTrue ("Verify that flights are listed in high to low price", manager.getSelectPage ().verifyThatPricesIsHighToLow ());
    }

    @When ("User save first flight name and price")
    public void user_save_first_flight_name_and_price () {
    }

    @When ("User select the first flight and accept the alert")
    public void user_select_the_first_flight_and_accept_the_alert () {
        manager.getSelectPage ().selectFirstFlight ();
    }

    @Then ("User should verify select success message")
    public void user_should_verify_select_success_message () {
        Assert.assertTrue ("Verify the select success message", manager.getBookFlightPage ().isPassengerDetailsDisplayed ());
    }

    @When ("User save last flight name and price")
    public void user_save_last_flight_name_and_price () {
    }

    @When ("User select the last flight and accept the alert")
    public void user_select_the_last_flight_and_accept_the_alert () {
        manager.getSelectPage ().selectLastFlight ();
    }

    @When ("User select the first flight for round trip and accept the alert")
    public void user_select_the_first_flight_for_round_trip_and_accept_the_alert () {
        manager.getBookFlightPage ().selectFirstRoundTripFlights ();
    }

    @Then ("User select the last flight for round trip and accept the alert")
    public void user_select_the_last_flight_for_round_trip_and_accept_the_alert () {
        manager.getBookFlightPage ().selectLastRoundTripFlights ();
    }


}