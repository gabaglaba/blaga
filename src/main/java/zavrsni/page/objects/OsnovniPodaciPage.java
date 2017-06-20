package zavrsni.page.objects;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class OsnovniPodaciPage {
	private WebDriver driver;
	
	public OsnovniPodaciPage(WebDriver driver) {
		this.driver = driver;
	}
	
	public WebElement getNazivInstitucije () {
		return driver.findElement(By.xpath("//input[@ng-model='data.name']"));
	}
	
	public void setNazivInstitucije (String nazivInstitucije) {
		
		WebElement nazivInstitucjeInput = getNazivInstitucije();
		nazivInstitucjeInput.clear();
		nazivInstitucjeInput.sendKeys(nazivInstitucije);
	}
	
	public WebElement getNameOfInst () {
		return driver.findElement(By.xpath("//input[@name='eng_name']"));
	}
	
	public void setNameOfInst (String nameOfInstitution) {
		
		WebElement nameOfInstInput = getNameOfInst();
		nameOfInstInput.clear();
		nameOfInstInput.sendKeys(nameOfInstitution);
		
	}
		// sta radim za dropove		
		public WebElement getDrzavaDrop () {
			return driver.findElement(By.xpath("//select[@name='state']"));
		}	
		
		public void setDrzava (String drzava) {
			
			WebElement drzavaInput = getDrzavaDrop();
			drzavaInput.clear();
			drzavaInput.sendKeys(drzava);
		}
		
		public WebElement getMesto () {
			return driver.findElement(By.xpath("//input[@name='place']"));
		}
		
		public void setMesto (String mesto) {
			
			WebElement mestoInput = getMesto();
			mestoInput.clear();
			mestoInput.sendKeys(mesto);
		}
		
		public WebElement getOpstina () {
			return driver.findElement(By.xpath("//input[@name='townShipText']"));
		}
		
		public void setOpstina (String opstina) {
			
			WebElement opstinaInput = getOpstina();
			opstinaInput.clear();
			opstinaInput.sendKeys(opstina);
		}
	
		public WebElement getAdresa () {
			return driver.findElement(By.xpath("//input[@name='address']"));
		}
		
		public void setAdresa (String adresa) {
			
			WebElement adresaInput = getAdresa();
			adresaInput.clear();
			adresaInput.sendKeys(adresa);
		}
		
		public WebElement getWebAdresa () {
			return driver.findElement(By.xpath("//input[@name='uri']"));
		}
		
		public void setWebAdresa (String uri) {
			
			WebElement webAdresaInput = getWebAdresa();
			webAdresaInput.clear();
			webAdresaInput.sendKeys(uri);
		}
		
		public WebElement getEmail () {
			return driver.findElement(By.xpath("//input[@name='email']"));
		}
		
		public void setEmail (String email) {
			
			WebElement emailInput = getEmail();
			emailInput.clear();
			emailInput.sendKeys(email);
		}
		
		public WebElement getPhone () {
			return driver.findElement(By.xpath("//input[@name='phone']"));
		}
		
		public void setPhone (String phone) {
			
			WebElement phoneInput = getPhone();
			phoneInput.clear();
			phoneInput.sendKeys(phone);
		}
		
		public WebElement getSkraceniNaziv () {
			return driver.findElement(By.xpath("//input[@name='acro']"));
		}
		
		public void setSkraceniNaziv (String acro) {
			
			WebElement acroInput = getSkraceniNaziv();
			acroInput.clear();
			acroInput.sendKeys(acro);
		}
		
		// ?
		public WebElement getNadredjenaInstDrop () {
			return driver.findElement(By.xpath("//div[@id='select2-drop-mask']"));
		}
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	

