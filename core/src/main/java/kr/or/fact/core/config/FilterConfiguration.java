package kr.or.fact.core.config;

import kr.or.fact.core.logging.HttpLoggingFilter;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.Arrays;
import java.util.List;

@Configuration
public class FilterConfiguration {

    @Bean
    public FilterRegistrationBean httpLoggingFilter(){
        FilterRegistrationBean registrationBean = new FilterRegistrationBean(new HttpLoggingFilter());
        registrationBean.setName("httpLoggingFilter");

//        List<String> urls = Arrays.asList("/a/*");
//        registrationBean.setUrlPatterns(urls);

        return registrationBean;
    }
}
