/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package thucnh.demo;

import org.hamcrest.Description;
import org.junit.rules.TestWatcher;

/**
 *
 * @author HP
 */
public class NewClass extends TestWatcher {
    
    protected void failed(Throwable e, Description description) {
        System.out.println("Herer");
        System.out.println(description.toString());
    }
    
}
