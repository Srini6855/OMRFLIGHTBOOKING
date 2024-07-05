package com.omrbranch.stepdefinition;

import com.omrbranch.base.BaseClass;
import com.omrbranch.pagemanager.PageObjectManager;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;

import java.awt.*;


public class TC1_Login_Step extends BaseClass {

    PageObjectManager manager = new PageObjectManager ();

    @Given ("User is on the OMR Branch hotel page")
    public void user_is_on_the_omr_branch_hotel_page () {
        browserLaunch ();
        launchTheWebApplication ("https://www.omrbranch.com/");
        maximizeWindow ();
        implicitWait ();

    }

    @When ("User enter {string} and {string}")
    public void user_enter_and (String email, String password) {
        manager.getLoginPage ().loginWithoutEnter (email, password);

    }

    @Then ("User should verify success message after login {string}")
    public void user_should_verify_success_message_after_login (String actualSuccessMessage) {
        Assert.assertEquals ("Verify the success message after login", actualSuccessMessage, manager.getSearchPage ().expectedSuccessMessage ());
    }


    @When ("User enter {string} and {string} with enter key")
    public void user_enter_and_with_enter_key (String email, String password) throws AWTException {
        manager.getLoginPage ().loginWithEnter (email, password);

    }


    @Then ("User should verify error message after login {string}")
    public void user_should_verify_error_message_after_login (String actualErrorMessage) throws InterruptedException {
        Assert.assertTrue ("Verify the error message after login", manager.getLoginPage ().expectedErrorMessage ().contains (actualErrorMessage));
    }


}