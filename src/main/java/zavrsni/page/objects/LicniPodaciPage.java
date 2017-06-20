package zavrsni.page.objects;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class LicniPodaciPage {
	private WebDriver driver;
	
	public LicniPodaciPage (WebDriver driver) {
		this.driver = driver;
	}
	
	public WebElement getImeIstr () {
		return driver.findElement(By.xpath("//input[@name='firstNameText']"));
	}
	
	public void setImeIstr (String imeIstr) {
		WebElement imeIstrInput = getImeIstr();
		imeIstrInput.clear();
		imeIstrInput.sendKeys(imeIstr);
	}
	
	public WebElement getPrezimeIstr () {
		return driver.findElement(By.xpath("//input[@ng-model='value']"));
	}
	
	public void setPrezimeIstr (String prezimeIstr) {
		WebElement prezimeIstrInput = getPrezimeIstr();
		prezimeIstrInput.clear();
		prezimeIstrInput.sendKeys(prezimeIstr);
	}
	
	public WebElement getImeRoditelja () {
		return driver.findElement(By.xpath("//input[@name='middleName']"));
	}
	
	public void setImeRoditelja (String imeRod) {
		WebElement imeRodInput = getImeRoditelja();
		imeRodInput.clear();
		imeRodInput.sendKeys(imeRod);
	}
	
	// datum ?
	
	public WebElement getDrzavaRodjenja () {
		return driver.findElement(By.xpath("//input[@name='state']"));
	}
	
	public void setDrzavaRodjenja (String state) {
		WebElement drzavaRodjInput = getDrzavaRodjenja();
		drzavaRodjInput.clear();
		drzavaRodjInput.sendKeys(state);
	}
	
	public WebElement getMestoRodjenja () {
		return driver.findElement(By.xpath("//input[@name='placeOfBirth']"));
	}
	
	public void setMestoRodjenja (String mestoRodj) {
		WebElement mestoRodjInput = getMestoRodjenja();
		mestoRodjInput.clear();
		mestoRodjInput.sendKeys(mestoRodj);
	}
	
	public WebElement getOpstinaRodjenja () {
		return driver.findElement(By.xpath("//input[@name='townShipOfBirth']"));
	}
	
	public void setOpstinaRodjenja (String opstinaRodj) {
		WebElement opstinaInput = getOpstinaRodjenja();
		opstinaInput.clear();
		opstinaInput.sendKeys(opstinaRodj);
	}
	
	public WebElement getDrzavaPrebivalista () {
		return driver.findElement(By.xpath("//input[@name='stateOfResidence']"));
	}
	
	public void setDrzavaPrebivalista (String drzavaPreb) {
		WebElement drzavaPrebInput = getDrzavaPrebivalista();
		drzavaPrebInput.clear();
		drzavaPrebInput.sendKeys(drzavaPreb);
	}
	
	public WebElement getMestoPrebivalista () {
		return driver.findElement(By.xpath("//input[@name='city']"));
	}
	
	public void setMestoPrebivalista (String mestoPreb) {
		WebElement mestoPrebInput = getMestoPrebivalista();
		mestoPrebInput.clear();
		mestoPrebInput.sendKeys(mestoPreb);
	}
	
	public WebElement getOpstinaPreb () {
		return driver.findElement(By.xpath("//input[@name='townShipOfResidence']"));
	}
	
	public void setOpstinaPreb (String opstinaPreb) {
		WebElement opstinaPrebInput = getOpstinaPreb();
		opstinaPrebInput.clear();
		opstinaPrebInput.sendKeys(opstinaPreb);
	}
	
	// isti sel za adresu?
	public WebElement getAdresaPreb () {
		return driver.findElement(By.xpath("//input[@name='address']"));
	}
	
	public void setAdresaPreb (String adresaPreb) {
		WebElement adresaPrebInput = getAdresaPreb();
		adresaPrebInput.clear();
		adresaPrebInput.sendKeys(adresaPreb);
	}
	
	// ?
	public WebElement getPolDrop () {
		return driver.findElement(By.xpath("//select[@name='gender']"));
	}
	
	public WebElement getJmbg () {
		return driver.findElement(By.xpath("//input[@name='jmbg']"));
	}
	
	public void setJmbg (String jmbg) {
		WebElement jmbgInput = getJmbg();
		jmbgInput.clear();
		jmbgInput.sendKeys(jmbg);
	}
	
	// isti sel
	public WebElement getEmail () {
		return driver.findElement(By.xpath("//input[@name='email']"));
	}
	
	public void setEmail (String email) {
		WebElement emailInput = getEmail();
		emailInput.clear();
		emailInput.sendKeys(email);
	}
	
	public WebElement getTel () {
		return driver.findElement(By.xpath("//input[@name='phones']"));
	}
	
	public void setTel (String phones) {
		WebElement telInput = getTel();
		telInput.clear();
		telInput.sendKeys(phones);
	}
	
	// isti sel
	public WebElement getLicnaWebAdresa () {
		return driver.findElement(By.xpath("//input[@name='uri']"));
	}
	
	public void setLicnaWebAdresa (String uri) {
		WebElement licnaWebAdrsInput = getLicnaWebAdresa();
		licnaWebAdrsInput.clear();
		licnaWebAdrsInput.sendKeys(uri);
	}
	
	// ?
	public WebElement getStatusIstrazivacaDrop () {
		return driver.findElement(By.xpath("//select[@name='personStatus']"));
	}

}
