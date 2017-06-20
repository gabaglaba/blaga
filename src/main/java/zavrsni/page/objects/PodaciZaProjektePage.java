package zavrsni.page.objects;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class PodaciZaProjektePage {
	private WebDriver driver;
	
	public PodaciZaProjektePage (WebDriver driver) {
		this.driver = driver;
	}
	
	public WebElement getBrojRacuna () {
		return driver.findElement(By.xpath("//input[@name='account']"));
	}
	
	public void setBrojRacuna (String brRacuna) {
		WebElement brRacunaInput = getBrojRacuna();
		brRacunaInput.clear();
		brRacunaInput.sendKeys(brRacuna);
	}
	
	// ne moze da se kuca
	public WebElement getIdMinistarstva () {
		return driver.findElement(By.xpath("//input[@name='mntrID']"));
	}
	
	public void setIdMinistarstva (String idMin) {
		WebElement idMinInput = getIdMinistarstva();
		idMinInput.clear();
		idMinInput.sendKeys(idMin);
	}
	
	public WebElement getOrcid () {
		return driver.findElement(By.xpath("//input[@name='orcid']"));
	}
	
	public void setOrcid (String orcid) {
		WebElement orcidInput = getOrcid();
		orcidInput.clear();
		orcidInput.sendKeys(orcid);
	}
	
	// ?
	public WebElement getStatusInstDrop () {
		return driver.findElement(By.xpath("//select[@name='institutionStatus']"));
	}
	
	// oblast istrazivanja ?
}
