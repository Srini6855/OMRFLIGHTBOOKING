package com.omrbranch.pages;

import com.omrbranch.base.BaseClass;
import lombok.Getter;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import java.awt.*;

@Getter
public class LoginPage extends BaseClass {
    public LoginPage () {
        PageFactory.initElements (driver, this);
    }

    @FindBy (id = "email")
    private WebElement txtEmail;
    @FindBy (id = "pass")
    private WebElement txtPass;
    @FindBy (xpath = "//button[text()='Login']")
    private WebElement btnLogin;
    @FindBy (id = "errorMessage")
    private WebElement textErrorMessage;

    public void loginWithoutEnter (String email, String password) {
        elementSendKeys (txtEmail, email);
        elementSendKeys (txtPass, password);
        elementClick (btnLogin);
    }

    public void loginWithEnter (String email, String password) throws AWTException {
        elementSendKeys (txtEmail, email);
        elementSendKeys (txtPass, password);
        enterKey ();
    }

    public String expectedErrorMessage () {
        return elementGetText (textErrorMessage);
    }

}