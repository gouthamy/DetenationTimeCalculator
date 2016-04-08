package org.nalashaa.dtc;


import java.util.Arrays;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

/**
 * 
 * @author Goutham(goutham.y@outlook.com)
 *
 */
@SpringBootApplication
public class DTCApplication  {
	
	public static void main(String[] args) {
        ApplicationContext ctx = SpringApplication.run(DTCApplication.class, args);
        /*String[] beanNames = ctx.getBeanDefinitionNames();
        Arrays.sort(beanNames);
        for (String beanName : beanNames) {
            System.out.println(beanName);
        }*/
        System.out.println("DTC- Spring boot is up");

    }
}
