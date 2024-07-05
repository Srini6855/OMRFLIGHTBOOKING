package com.omrbranch.base;


import org.openqa.selenium.*;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.edge.EdgeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.awt.*;
import java.awt.event.KeyEvent;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.time.Duration;
import java.util.List;
import java.util.Properties;

public class BaseClass {
    protected static WebDriver driver;

    public void browserLaunch () {
        driver = new ChromeDriver ();
    }

    public void launchTheWebApplication (String url) {
        driver.get (url);
    }

    public void maximizeWindow () {
        driver.manage ().window ().maximize ();
    }

    public void implicitWait () {
        driver.manage ().timeouts ().implicitlyWait (Duration.ofSeconds (10));
    }

    public void elementSendKeys (WebElement element, String data) {
        element.sendKeys (data);
    }

    public void promptAlert (String data) {
        Alert alert = driver.switchTo ().alert ();
        alert.sendKeys (data);
        alert.accept ();
    }

    public List <WebElement> locatorsByXpath (String xpath) {
        return driver.findElements (By.xpath (xpath));
    }

    public WebElement locatorByXpath (String xpath) {
        return driver.findElement (By.xpath (xpath));
    }

    public void elementClick (WebElement element) {
        explicitWait (element);
        boolean displayed = element.isDisplayed ();
        boolean enabled = element.isEnabled ();
        if (displayed && enabled) {
            element.click ();
        }

    }

    public void elementDoubleClick (WebElement element) {
        Actions action = new Actions (driver);
        action.doubleClick (element).perform ();
    }

    public void elementDragAndDrop (WebElement srcElement, WebElement targetElement) {
        Actions action = new Actions (driver);
        action.dragAndDrop (srcElement, targetElement).perform ();

    }

    public void elementClear (WebElement element) {
        element.clear ();
    }

    public String elementGetText (WebElement element) {
        explicitWait (element);
        String text = null;
        boolean displayed = element.isDisplayed ();
        if (displayed) {

            text = element.getText ();
        }

        return text;
    }

    public void enterKey () throws AWTException {
        Robot robot = new Robot ();
        robot.keyPress (KeyEvent.VK_ENTER);
        robot.keyRelease (KeyEvent.VK_ENTER);
    }

    public boolean isDiplayed (WebElement element) {
        return element.isDisplayed ();
    }

    public boolean isEnabled (WebElement element) {
        return element.isEnabled ();
    }

    public void explicitWait (WebElement element) {
        WebDriverWait webDriverWait = new WebDriverWait (driver, Duration.ofSeconds (10));
        webDriverWait.until (ExpectedConditions.visibilityOf (element));
    }

    public void elementDropDownByVisibletext (WebElement element, String data) {
        Select select = new Select (element);
        select.selectByVisibleText (data);
    }

    public void elementSendKeysByJavaScript (WebElement element, String data) {
        JavascriptExecutor js = (JavascriptExecutor) driver;
        js.executeScript ("arguments[0].setAttribute('value','" + data + "');", element);
    }

    public void elementClickByJavaScript (WebElement element) {
        JavascriptExecutor js = (JavascriptExecutor) driver;
        js.executeScript ("arguments[0].click();", element);
    }

    public void switchToFrame (WebElement element) {
        driver.switchTo ().frame (element);
    }

    public void sleep () throws InterruptedException {
        Thread.sleep (3000);
    }

    public WebElement findElemnetById (String id) {
        return driver.findElement (By.id (id));
    }

    public WebElement findElementByXpath (String xpath) {
        return driver.findElement (By.xpath (xpath));
    }

    public WebElement findElementByClassName (String className) {
        return driver.findElement (By.className (className));
    }


    public void switchToParentFrame () {
        driver.switchTo ().defaultContent ();
    }

    public void acceptAlert () {
        try {
            WebDriverWait webDriverWait = new WebDriverWait (driver, Duration.ofSeconds (2));
            webDriverWait.until (ExpectedConditions.alertIsPresent ());
            driver.switchTo ().alert ().accept ();
        } catch (Exception e) {
        }
    }

    public void dismissAlert () {
        driver.switchTo ().alert ().dismiss ();
    }

    public byte[] takeScreenshotinByte () {
        TakesScreenshot screenshot = (TakesScreenshot) driver;
        return screenshot.getScreenshotAs (OutputType.BYTES);
    }

    public static String getProjectPath () {
        String property = System.getProperty ("user.dir");
        return property;

    }

    public static String getPropertyValue (String key) throws IOException, IOException, FileNotFoundException {
        Properties properties = new Properties ();
        properties.load (new FileInputStream (getProjectPath () + "\\config\\config.properties"));
        Object object = properties.get (key);
        String value = (String) object;
        return value;

    }

    public static void browserLaunch (String browserType) {
        switch (browserType) {
            case "googleChrome":
                driver = new ChromeDriver ();
                break;
            case "edge":
                driver = new EdgeDriver ();
                break;
            case "firefox":
                driver = new FirefoxDriver ();
                break;

            default:
                break;
        }

    }

    public void closeBrowser () {
        driver.close ();
    }

    public void sleep (int sec) throws InterruptedException {
        Thread.sleep (sec);
    }

    public void pageScrollDown (WebElement element) {
        JavascriptExecutor js = (JavascriptExecutor) driver;
        js.executeScript ("arguments[0].scrollIntoView(true);", element);
    }


}