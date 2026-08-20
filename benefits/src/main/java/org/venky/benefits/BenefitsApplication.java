package org.venky.benefits;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.venky.benefits.properties.SupportDetails;

@SpringBootApplication
@EnableConfigurationProperties(value = {SupportDetails.class})
public class BenefitsApplication {

    public static void main(String[] args) {
        SpringApplication.run(BenefitsApplication.class, args);
    }

}
