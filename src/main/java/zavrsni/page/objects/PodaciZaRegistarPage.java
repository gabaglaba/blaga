package zavrsni.page.objects;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class PodaciZaRegistarPage {
	private WebDriver driver;

	public PodaciZaRegistarPage(WebDriver driver) {
		this.driver = driver;
	}
	
	public WebElement getPib() {
		return driver.findElement(By.xpath("//input[@name='pib']"));
	}
	
	public void setUsername (String pib) {
		WebElement pibInput = getPib();
		pibInput.clear();
		pibInput.sendKeys(pib);
	}
	
	public WebElement getMaticniBr() {
		return driver.findElement(By.xpath("//input[@name='maticniBroj']"));
	}
	
	public void setMaticniBr (String maticni) {
		WebElement maticniInput = getMaticniBr();
		maticniInput.clear();
		maticniInput.sendKeys(maticni);
	}
	
	public WebElement getBrNaucneAkred() {
		return driver.findElement(By.xpath("//input[@name='accreditationNumber']"));
	}
	
	public void setBrNaucneAkred (String brAkred) {
		WebElement brAkredInput = getBrNaucneAkred();
		brAkredInput.clear();
		brAkredInput.sendKeys(brAkred);
	}
	
	// datum ?	
	
	public WebElement getNazivInstIzAkred() {
		return driver.findElement(By.xpath("//input[@name='accreditationNote']"));
	}
	
	public void setNazivInstIzAkred (String nazivInst) {
		WebElement nazivInstAkred = getNazivInstIzAkred();
		nazivInstAkred.clear();
		nazivInstAkred.sendKeys(nazivInst);
	}
	
	public WebElement getNapomenaORegistru() {
		return driver.findElement(By.xpath("//input[@name='note']"));
	}
	
	public void setNapomenaORegistru (String napomena) {
		WebElement napomenaORegInpt = getNapomenaORegistru();
		napomenaORegInpt.clear();
		napomenaORegInpt.sendKeys(napomena);
	}
	
	public WebElement getVrstaInst() {
		return driver.findElement(By.xpath("//select[@name='institutionType']"));
	}
	
	public void setVrstaInt (String vrstaInst) {
		WebElement vrstaInstInput = getVrstaInst();
		vrstaInstInput.clear();
		vrstaInstInput.sendKeys(vrstaInst);
	}
	
	// ?
	public WebElement getVrstaInstDrop () {
		return driver.findElement(By.xpath("//select[@name='institutionType']"));
	}

	// osnovna delatnost ?
	
	public WebElement getOsnivac() {
		return driver.findElement(By.xpath("//select[@name='founder']"));
	}
	
	public void setOsnivac (String osnivac) {
		WebElement osnivacInput = getOsnivac();
		osnivacInput.clear();
		osnivacInput.sendKeys(osnivac);
	}
	
	// datum ?
	
	public WebElement getBrResenjaOsnivanja	() {
		return driver.findElement(By.xpath("//input[@name='rescriptNumber']"));
	}
	
	public void setBrResenjaOsnivanja (String brResenja) {
		WebElement brResenjaInput = getBrResenjaOsnivanja();
		brResenjaInput.clear();
		brResenjaInput.sendKeys(brResenja);
	}
	
	// ?
	public WebElement getVlasnickaStrukturaDrop	() {
		return driver.findElement(By.xpath("//select[@name='ownershipStructure']"));
	}
	
}
