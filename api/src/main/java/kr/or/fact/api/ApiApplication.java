package kr.or.fact.api;

import org.apache.logging.log4j.core.util.JsonUtils;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

import java.time.LocalDateTime;

@SpringBootApplication
public class ApiApplication extends SpringBootServletInitializer {
@Override
protected SpringApplicationBuilder configure(SpringApplicationBuilder application){
    return application.sources(ApiApplication.class);
}
    public static void main(String[] args) {
        SpringApplication.run(ApiApplication.class, args);
    }
}
