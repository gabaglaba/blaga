package zavrsni.page.objects;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class IstrazivaciHomePage {
	private WebDriver driver;
	
	public IstrazivaciHomePage(WebDriver driver) {
		this.driver = driver;
	}
	
	public void navigateToPage() {
		driver.navigate().to("http://localhost:8080/#/persons");
	}

	public WebElement getPretraziIstrazivace () {
		return driver.findElement(By.xpath("//input[@placeholder='Pretraži istraživače']"));
	}
	
	public WebElement getDodajIstrazivacaBtn () {
		return driver.findElement(By.xpath("//a[@ui-sref='addPerson']"));
	}
	
	public WebElement getMigriraniPodaciCb () {
		return driver.findElement(By.xpath("//input[@name='migrated']"));
	}
	
	public WebElement getVerifikovaniMigPodaciCb () {
		return driver.findElement(By.xpath("//input[@name='changed']"));
	}
}
