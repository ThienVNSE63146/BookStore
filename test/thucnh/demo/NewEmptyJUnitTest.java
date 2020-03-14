/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package thucnh.demo;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Assert;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.fail;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Rule;
import org.junit.Test;
import org.junit.rules.TestWatcher;
import org.junit.runner.Description;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

/**
 *
 * @author HP
 */

public class NewEmptyJUnitTest {
    
     private static String watchedLog;
     private static WebDriver driver;

    @Rule
    public TestWatcher watchman = new TestWatcher() {
        @Override
        protected void failed(Throwable e, Description description) {
            watchedLog += description + "\n";
        }

        @Override
        protected void succeeded(Description description) {
            watchedLog += description + " " + "success!\n";
        }
    };

//    @Test
//    public void checkquestion1() {
//        fail();
//    }

    @Test
    public void succeeds() {
        Assert.assertEquals("1", "1");
    }
    
    public NewEmptyJUnitTest() {
    }
    
    // Start project trc - 1 port
    // chạy test - 1 port
    
    @BeforeClass
    public static void setUpClass() {
        System.setProperty("webdriver.chrome.driver", "C:\\Users\\ASUS\\Desktop\\chromedriver2.exe");
        ChromeOptions options = new ChromeOptions();
//        options.addArguments("--headless");
        driver = new ChromeDriver(options);
    }
    
    @AfterClass
    public static void tearDownClass() {
        System.out.println(watchedLog);
        System.out.println(2);
    }
    @Before
    public void setUp() throws Exception {
        System.out.println("11");
    }
    
//    @Test
//    public void testAdd() {
//           driver.get("http://localhost:8084/ASM_SE63155/");
//        driver.findElement(By.id("txtSearch")).clear();
//       // driver.findElement(By.id("txtPassword")).clear();
//        driver.findElement(By.id("txtSearch")).sendKeys("thucnh");
//       // driver.findElement(By.id("txtPassword")).sendKeys("thucnh");
//        //driver.findElement(By.id("btnSubmit")).click();
//       WebElement elementName = driver.findElement(By.id("pTag"));
//        String s = elementName.getText();
//        assertEquals("Thien", s);
//    }
    
    
    
//    @Test
//    public void testAdd2() {
//        Assert.assertEquals(17, 17);
//    }
//    
//    @Test
//    public void testAdd3() {
//        Assert.assertEquals(17, 17);
//    }
    
    @After
    public void tearDown() {
        System.out.println(4);
    }
}
