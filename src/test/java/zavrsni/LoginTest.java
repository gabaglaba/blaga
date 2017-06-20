package zavrsni;

import static org.testng.Assert.assertEquals;
import static org.testng.Assert.assertFalse;
import static org.testng.Assert.assertTrue;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.BeforeSuite;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Test;

import com.google.common.base.Throwables;

import zavrsni.page.objects.InstitucijaHomePage;
import zavrsni.page.objects.IstrazivaciHomePage;
import zavrsni.page.objects.LicniPodaciPage;
import zavrsni.page.objects.LoginPage;
import zavrsni.page.objects.OsnovniPodaciPage;
import zavrsni.page.objects.PodaciZaProjektePage;
import zavrsni.page.objects.PodaciZaRegistarPage;

@Test
public class LoginTest {
	private WebDriver driver;
	private LoginPage loginPage;
	private InstitucijaHomePage institucijaHomePage;
	private IstrazivaciHomePage istrazivaciHomePage;
	private LicniPodaciPage licniPodaciPage;
	private OsnovniPodaciPage osnovniPodaciPage;
	private PodaciZaProjektePage podaciZaProjektePage;
	private PodaciZaRegistarPage podaciZaRegistarPage;
	
	@BeforeSuite
	public void setupSelenium() {
		
		// chrome?
		driver = new FirefoxDriver();
		driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
		driver.manage().window().maximize();
		driver.navigate().to("http://localhost:8080/#/login");
	}
	
	@BeforeTest
	public void setupPage() {
		
		loginPage = new LoginPage(driver);
		institucijaHomePage = new InstitucijaHomePage(driver);
		istrazivaciHomePage = new IstrazivaciHomePage(driver);
		licniPodaciPage = new LicniPodaciPage(driver);
		osnovniPodaciPage = new OsnovniPodaciPage(driver);
		podaciZaProjektePage = new PodaciZaProjektePage(driver);
		podaciZaRegistarPage = new PodaciZaRegistarPage(driver);
	}
	
	            // da li treba exc
	public void login() throws InterruptedException {
	/*
		assertTrue(loginPage.getUsername().isDisplayed());
		assertTrue(loginPage.getPassword().isDisplayed());
		assertTrue(loginPage.getPrijaviSeBtn().isDisplayed());
		assertTrue(loginPage.getOdustaniBtn().isDisplayed());
		
		loginPage.login("wrngusrnm", "adminvinca");
		String expMsg = "Pogrešno korisničko ime ili lozinka!";
		String actMsg = driver.findElement(By.xpath("//li[@class='ng-binding ng-scope']")).getText();
		
		assertEquals(actMsg, expMsg);
		
		//jel moram da menjam svaki boziji put?
		loginPage.login("djura@djuraminis.com", "dgssd");
		String expMsgg = "Pogrešno korisničko ime ili lozinka!";
		String actMsgg = driver.findElement(By.xpath("//li[@class='ng-binding ng-scope']")).getText();
		
		assertEquals(actMsg, expMsg);
		
		loginPage.login("", "");
		
		//bolje resenje?
		WebElement element = loginPage.getPrijaviSeBtn();
		if (element.isDisplayed() && element.isEnabled()) {
		    element.click();
		}
	
		loginPage.login(" ", " ");
		
		//bolje resenje?
		WebElement elementt = loginPage.getPrijaviSeBtn();
		if (elementt.isDisplayed() && elementt.isEnabled()) {
		    elementt.click();
		}
		
		// jedna pozitiva
		*/
		loginPage.login("djura@djuraminis.com", "adminvinca");
		// neki wait
		//String actUrl = driver.getCurrentUrl();
		//String expUrl = "http://localhost:8080/#/admin-institution/";
		
		 //assertEquals(actUrl,expUrl); puca
		
		// druga opcija ako moze
		assertTrue(institucijaHomePage.getMinis().isDisplayed());
	}
		
	
	//public void addInstitution() {
		
		//assertTrue(osnovniPodaciPage.getNazivInstitucije().isDisplayed());
		//osnovniPodaciPage.getNazivInstitucije().click();
		//osnovniPodaciPage.getNazivInstitucije().clear();
		
	/*	assertTrue(osnovniPodaciPage.getNameOfInst().isDisplayed());
		osnovniPodaciPage.setNameOfInst("Vincha");
		
		// drzava?
		
		assertTrue(osnovniPodaciPage.getMesto().isDisplayed());
		osnovniPodaciPage.setMesto("Tri jebine");
		
		assertTrue(osnovniPodaciPage.getOpstina().isDisplayed());
		osnovniPodaciPage.setOpstina("Kraljevo");
		
		assertTrue(osnovniPodaciPage.getAdresa().isDisplayed());
		osnovniPodaciPage.setAdresa("Carevo polje");
		
		assertTrue(osnovniPodaciPage.getWebAdresa().isDisplayed());
		osnovniPodaciPage.setWebAdresa("www.www.com");
		
		assertTrue(osnovniPodaciPage.getEmail().isDisplayed());
		osnovniPodaciPage.setWebAdresa("test@test.com");
		
		assertTrue(osnovniPodaciPage.getPhone().isDisplayed());
		osnovniPodaciPage.setWebAdresa("23123123123");
		
		assertTrue(osnovniPodaciPage.getSkraceniNaziv().isDisplayed());
		osnovniPodaciPage.setWebAdresa("SkrcniNzv");
		
		//nadredjena inst; kazli su da se ne dira
		*/
		//assertTrue(institucijaHomePage.getSacuvajBtn().isDisplayed());
		//assertTrue(institucijaHomePage.getSacuvajBtn().isEnabled());
		
		//institucijaHomePage.getSacuvajBtn().click();
		
		//}
		
		
	public void dodajIstrazivaca() throws InterruptedException {
		
		institucijaHomePage.getIstrazivaci().click();
		// assert url = http://localhost:8080/#/persons
		
		//istrazivaciHomePage.getDodajIstrazivacaBtn().click();
		//assert url = http://localhost:8080/#/persons/
		
		//assertTrue(licniPodaciPage.getImeIstr().isDisplayed());
		//licniPodaciPage.setImeIstr("Istrazivac");
		
	}
}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

