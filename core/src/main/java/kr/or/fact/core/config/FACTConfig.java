package kr.or.fact.core.config;

import lombok.Getter;
import lombok.Setter;
import org.springframework.boot.context.properties.ConfigurationProperties;

@ConfigurationProperties(prefix = "eval.fact")
@Getter
@Setter
public class FACTConfig {
    private String uploadDir;
    private String searchSeverUrl;


}
