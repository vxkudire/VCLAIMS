package org.venky.benefits.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.env.Environment;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.venky.benefits.properties.SupportDetails;

import java.util.logging.Logger;

@RestController
public class MainController {

    private static final Logger LOGGER = Logger.getLogger(MainController.class.getName());

    @Value("${build.version}")
    private String buildVersion;

    @Autowired
    private Environment environment;

    @Autowired
    private SupportDetails supportDetails;

    @GetMapping("/hello")
    public String hello(){
        return "Hello World\n BuildVersion: "+buildVersion+"\n JDK Version: "+environment.getProperty("JAVA_HOME")+"\n Support Details: "+supportDetails.toString()+"\n";
    }
}
