package zavrsni.page.objects;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class InstitucijaHomePage {
	private WebDriver driver;
	
	public InstitucijaHomePage(WebDriver driver) {
		this.driver = driver;
	}
	
	public void navigateToPage() {
		driver.navigate().to("http://localhost:8080/#/admin-institution/");
	}
	
	public WebElement getMinis() {
		return driver.findElement(By.xpath("//span[@class='logo-lg']"));
	}
	
	public WebElement getIstrazivaci() {
		return driver.findElement(By.xpath("//i[@class='ng-scope fa fa-user']"));
	}
	
	public WebElement getOdjaviseDrop() {
		return driver.findElement(By.xpath("//img[@class='user-image']"));
	}
	
	public WebElement getOdjaviseBtn () {
		return driver.findElement(By.xpath("//span[@translate='LOGOUT']"));
	}
	
	public WebElement getOsnovniPodaci () {
		return driver.findElement(By.linkText("Osnovni podaci"));
	}
	
	public WebElement getPodaciZaRegistar () {
		return driver.findElement(By.linkText("Podaci za registar"));
	}
	
	public WebElement getPodaciZaProjekte () {
		return driver.findElement(By.linkText("Podaci za projekte"));
	}
	
	public WebElement getSacuvajBtn () {
		return driver.findElement(By.linkText(" Sačuvaj"));
	}
	
	public WebElement getOdustaniBtn () {
		return driver.findElement(By.linkText(" Odustani"));
	}
}
