package io.cucumber.skeleton;

import io.cucumber.java.*;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.jupiter.api.Assertions;
import org.openqa.selenium.*;
import org.openqa.selenium.chrome.ChromeDriver;

public class WebStepDefinitions {

    /**
     * Note: You must have installed chromedriver in your system
     *       https://chromedriver.chromium.org/downloads
     *       The version must match with the version of your Chrome browser
     */

    private static WebDriver driver;
    private Scenario scenario;

    @BeforeAll
    public static void setUp() {
        // This property is optional.
        // If not specified, WebDriver searches the path for chromedriver in your environment variables
        // Example path for Linux or Mac:
        System.setProperty("webdriver.chrome.driver", "C:/Users/gma01/Desktop/UAB/TERCER CURS/PRIMER SEMESTRE/TQS/TQS-UI_Testing/cucumber-java-skeleton-main/chromedriver.exe");
        driver = new ChromeDriver();
    }

    @Before
    public void before(Scenario scenario) {
        this.scenario = scenario;
    }

    @Given("I go to the home page")
    public void iGoToTheHomePage() {
        driver.get("https://www.instant-gaming.com/es/");
    }

    @Then("I should see a {string} button/text")
    public void iShouldSeeAButton(String text) {
        By byXPath = By.xpath("//*[contains(text(),'" + text + "')]");
        boolean present = driver.findElements(byXPath).size() > 0;
        Assertions.assertTrue(present);
    }

    @When("I click on {string} button")
    public void iClickOnButton(String button_text) {
        driver.findElement(By.linkText(button_text)).click();
    }

    @When("I click on {string} IdButton")
    public void iClickOnIdButton(String button_text) {
        driver.findElement(By.id(button_text)).click();
    }

    @And("I click on OkButton")
    public void iClickOnOkButton() {
        driver.findElement(By.cssSelector("input[value='OK']")).click();
        driver.navigate().refresh();
    }

    @And("I take a screenshot with filename {string}")
    public void iTakeAScreenshotWithFilename(String filename) {
        byte[] screenshot = ((TakesScreenshot) driver).getScreenshotAs(OutputType.BYTES);
        scenario.attach(screenshot, "image/png", "filename");
    }
    @Then("I should see the account button")
    public void iShouldSeeTheAccountButton(){
        By byXPath = By.xpath("/html/body/div[1]/div[1]/div[2]/div[1]/div/img");
        boolean button = driver.findElements(byXPath).size() > 0;
        Assertions.assertTrue(button);
    }
    @Then("I should see the OK button")
    public void iShouldSeeTheOkButton(){
        By byXPath = By.cssSelector("input[value='OK']");
        boolean button = driver.findElements(byXPath).size() > 0;
        Assertions.assertTrue(button);
    }

    @Then("I should see the alert")
    public void iShouldSeeTheAlert(){
        Alert alert = driver.switchTo().alert();
        String alertMSG = alert.getText();
        Assertions.assertEquals("Correo electrónico o contraseña errónea.",alertMSG);
        alert.accept();
    }

    @And("I introduce the credentials email: {string} password: {string}")
    public void iIntroduceTheCredentials(String email, String pswd){
        driver.findElement(By.cssSelector("input[name='email']")).sendKeys(email);
        driver.findElement(By.cssSelector("input[name='password']")).sendKeys(pswd);
    }

    @When("I write on the search bar {string}")
    public void iWriteOnTheSearchBar(String search){
        driver.findElement(By.cssSelector("input[id='ig-header-search-box-input']")).sendKeys(search);
    }
    @Then("I go to the page {string}")
    public void iGoToThePage(String page) {
        driver.get(page);
    }

    @AfterAll()
    public static void tearDown() {
        driver.quit();
    }



}

