

import java.util.List;
import org.junit.Test;
import static org.junit.Assert.*;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Tim
 */

//TODO: Add PageObjects
public class GameWebTest {
    private WebDriver driver;
    
//    @Test
//    public void test_Game_is_added_after_correct_input(){
//        driver=new FirefoxDriver();
//        String URL="http://localhost:8080/GameProjectGitAttempt2/game/new.htm?";
//        driver.get(URL);
//        WebElement nameField=driver.findElement(By.id("name"));
//        WebElement genreField=driver.findElement(By.id("genre"));
//        WebElement submitButton=driver.findElement(By.id("submitButton"));
//        
//        nameField.clear();
//        genreField.clear();
//        
//        nameField.sendKeys("TheMostAwesomeGameEverToBeTested");
//        genreField.sendKeys("TheMostAwesomeGenreEverToBeTested");
//        submitButton.click();
//        assertTrue(hasGameWithId("TheMostAwesomeGameEverToBeTested"));
//    }
//    
//    public boolean hasGameWithId(String gameName){
//		List<WebElement> allTableElements = driver.findElements(By.cssSelector("tr td"));
//		for(WebElement e:allTableElements){
//			if(e.getText().equals(gameName)){
//				return true;
//			}
//		}
//		return false;
//		
//	}

}
