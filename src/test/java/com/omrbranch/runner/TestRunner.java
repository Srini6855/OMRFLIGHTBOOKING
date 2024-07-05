package com.omrbranch.runner;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith (Cucumber.class)
@CucumberOptions (features = "src/test/resources/Features", glue = "com.omrbranch.stepdefinition", tags = "@Book1", dryRun = false)
public class TestRunner {

}