package com.omrbranch.pages;

import com.omrbranch.base.BaseClass;
import net.sourceforge.tess4j.TesseractException;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Collections;
import java.util.List;

public class SelectPage extends BaseClass {
    public SelectPage () {
        PageFactory.initElements (driver, this);
    }

    @FindBy (id = "one-way-trip")
    private WebElement texOneWay;
    @FindBy (xpath = "//label[contains(@for,'pltoh')]")
    private WebElement rdoLowToHigh;
    @FindBy (xpath = "//label[contains(@for,'phtol')]")
    private WebElement rdoHighToLow;
    @FindBy (xpath = "//label[contains(@for,'value_nasc')]")
    private WebElement rdoNameAscending;
    @FindBy (xpath = "//label[contains(@for,'value_ndesc')]")
    private WebElement rdoNameDescending;
    @FindBy (xpath = "//label[@class='pricing']")
    private List <WebElement> txtFlightPrice;
    @FindBy (xpath = "(//img[@class='airlineImg'])[1]")
    private WebElement textFlightName;
    @FindBy (xpath = "//a[text()='BOOK NOW']")
    private List <WebElement> btnContinue;

    public void getImgaeText () throws IOException, TesseractException {
        String src = textFlightName.getAttribute ("src");
        System.out.println (src);
        try {
            URL url = new URL (src);
            InputStream inputStream = url.openStream ();
            byte[] bytes = inputStream.readAllBytes ();
            String data = new String (bytes);
            if (src.startsWith ("data:image/png;base64")) {
                String substring = src.substring ("data:image/png;base64,".length ());
                byte[] decode = Base64.getDecoder ().decode (substring);
                String decoded = new String (decode);
                System.out.println (decoded);
            }
            inputStream.close ();
        } catch (Exception e) {
            e.printStackTrace ();
        }
//        URL url = new URL (src);
//        BufferedImage image = ImageIO.read (url);
//        ITesseract tesseract = new Tesseract ();
//        tesseract.setDatapath ("path/to/tesseract/tessdata");
//        tesseract.setLanguage ("eng");
//        String text = tesseract.doOCR (image);
//        System.out.println (text);
    }

    public void selectLowToHigh () throws InterruptedException {
        pageScrollDown (texOneWay);
        elementClick (rdoLowToHigh);
        sleep (18000);
    }

    public void selectNameAscending () throws InterruptedException {
        pageScrollDown (texOneWay);
        elementClick (rdoNameAscending);
        sleep (18000);
    }

    public void selectNameDescending () throws InterruptedException {
        pageScrollDown (texOneWay);
        elementClick (rdoNameDescending);
        sleep (18000);
    }

    public boolean verifyThatPriceIsLowToHigh () {
        List <Integer> dev = new ArrayList <> ();
        for (WebElement price : txtFlightPrice) {
            String[] split = price.getText ().split (" ");
            dev.add (Integer.parseInt (split[1]));
        }
        List <Integer> qa = new ArrayList <> ();
        qa.addAll (dev);
        Collections.sort (qa);
        return dev.equals (qa);

    }

    public void selectHighToLow () throws InterruptedException {
        pageScrollDown (texOneWay);
        elementClick (rdoHighToLow);
        sleep (18000);
    }

    public boolean verifyThatPricesIsHighToLow () {
        List <Integer> dev = new ArrayList <> ();
        for (WebElement price : txtFlightPrice) {
            String[] split = price.getText ().split (" ");
            dev.add (Integer.parseInt (split[1]));
        }
        List <Integer> qa = new ArrayList <> ();
        qa.addAll (dev);
        Collections.sort (qa);
        Collections.reverse (qa);
        return dev.equals (qa);
    }

    public void selectFirstFlight () {
        elementClick (btnContinue.get (0));
        acceptAlert ();
    }

    public void selectLastFlight () {
        elementClick (btnContinue.get (btnContinue.size () - 1));
        acceptAlert ();
    }

}