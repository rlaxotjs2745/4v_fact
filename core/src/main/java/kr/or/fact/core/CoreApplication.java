package kr.or.fact.core;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
@EnableConfigurationProperties({
        WebFrontFileUploadProperties.class
})
public class CoreApplication extends SpringBootServletInitializer {

    public static void main(String[] args) {
        SpringApplication.run(CoreApplication.class, args);
    }

}