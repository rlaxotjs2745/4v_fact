package kr.or.fact;

import kr.or.fact.core.config.FACTConfig;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import java.util.Properties;

@SpringBootApplication
@EnableConfigurationProperties({
        FACTConfig.class
})
public class AdminApplication extends SpringBootServletInitializer {

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application){
        return application.sources(AdminApplication.class);
    }

    public static void main(String[] args) {
        SpringApplication.run(AdminApplication.class, args);
    }

   @Bean
    public InternalResourceViewResolver setupViewResolver(){
        InternalResourceViewResolver resolver = new InternalResourceViewResolver();
        resolver.setPrefix("WEB-INF/jsp/");
        resolver.setSuffix(".jsp");
        return resolver;
    }
}
