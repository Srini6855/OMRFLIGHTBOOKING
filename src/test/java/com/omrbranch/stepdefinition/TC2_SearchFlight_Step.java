package com.omrbranch.stepdefinition;

import com.omrbranch.pagemanager.PageObjectManager;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;

public class TC2_SearchFlight_Step {
    PageObjectManager manager = new PageObjectManager ();

    @When ("User enter {string}, {string}, {string}, {string}, {string} and {string}")
    public void user_enter_and (String flyingFrom, String flyingTo, String departDate, String adults, String children, String infants) {
        manager.getSearchPage ().searchAllFields (flyingFrom, flyingTo, departDate, adults, children, infants);
    }

    @Then ("User should verify that flights are displayed after search")
    public void user_should_verify_that_flights_are_displayed_after_search () {
        Assert.assertTrue ("Verify that flights are displayed after search flights", manager.getSearchPage ().verifyFlightIsDisplayed ());
    }

    @When ("User enter {string}, {string}, {string} and {string}")
    public void user_enter_and (String flyingFrom, String flyingTo, String departDate, String adults) {
        manager.getSearchPage ().searchWithMandatoryFields (flyingFrom, flyingTo, departDate, adults);
    }

    @When ("User enter {string}, {string}, {string}, {string}, {string}, {string} and {string}")
    public void user_enter_and (String flyingFrom, String flyingTo, String departDate, String returnDate, String adults, String children, String infants) {
        manager.getSearchPage ().searchRoundTripWithAllFields (flyingFrom, flyingTo, departDate, returnDate, adults, children, infants);
    }

    @When ("User enter {string}, {string}, {string}, {string} and {string}")
    public void user_enter_and (String flyingFrom, String flyingTo, String departDate, String returnDate, String adults) {
        manager.getSearchPage ().searchWithMandatoryFieldsRoundTrip (flyingFrom, flyingTo, departDate, returnDate, adults);
    }

    @When ("User enter {string}, {string}, {string}, {string}, {string}, {string}, {string} and {string}")
    public void user_enter_and (String flyingFrom, String flyingTo, String departDate, String dropCity, String seconddepartDate, String adults, String children, String infants) {
    }

    @Then ("User should verify that flights are not displayed after search")
    public void user_should_verify_that_flights_are_not_displayed_after_search () {
    }

    @When ("User enter {string}, {string}, {string}, {string}, {string} and {string} in Multi Trip")
    public void user_enter_and_in_multi_trip (String flyingFrom, String flyingTo, String departDate, String dropCity, String seconddepartDate, String adults) {
    }

    @When ("User click search without entering any fields")
    public void user_click_search_without_entering_any_fields () {
        manager.getSearchPage ().clickSearchFlight ();
    }

    @Then ("User should verify that search flights error message {string} and {string}")
    public void user_should_verify_that_search_flights_error_message_and (String expectedFlyingFromErrorMessage, String expectedFlyingToErrorMessage) {
        Assert.assertEquals ("Verify that search flights error message", expectedFlyingFromErrorMessage, manager.getSearchPage ().actualFlyingFromErrorMessage ());
        Assert.assertEquals ("Verify that search flights error message", expectedFlyingToErrorMessage, manager.getSearchPage ().actualFlyingToErrorMessage ());
    }


}