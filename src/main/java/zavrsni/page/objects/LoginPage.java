package zavrsni.page.objects;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class LoginPage {
	private WebDriver driver;
	
	public LoginPage (WebDriver driver) {
		this.driver = driver;
	}
	
	public WebElement getUsername() {
		return driver.findElement(By.id("username"));
	}
	
	public void setUsername (String username) {
		WebElement usernameInput = getUsername();
		usernameInput.clear();
		usernameInput.sendKeys(username);
	}
	
	public WebElement getPassword() {
		return driver.findElement(By.id("password"));
	}
	
	public void setPassword (String password) {
		WebElement passwordInput = getPassword();
		passwordInput.clear();
		passwordInput.sendKeys(password);
	}
	
	public void login (String username,String password) {
		setUsername(username);
		setPassword(password);
		getPrijaviSeBtn().click();
	}
	
	public WebElement getPrijaviSeBtn() {
		return driver.findElement(By.xpath("//button[@type='submit']"));
	}
	
	public WebElement getOdustaniBtn() {
		return driver.findElement(By.xpath("//div[@class='col-xs-6 pull-left']"));
	}

	public WebElement getZaboraviliSteLozinku() {
		return driver.findElement(By.xpath("//a[@ui-sref='forgotPassword']"));
	}
	
	public void navigateToPage() {
		driver.navigate().to("localhost:8080/#/login");
	}
}
