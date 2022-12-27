package kr.or.fact.web_gimje.config;

import kr.or.fact.core.service.AdminService;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import javax.annotation.Resource;
/*
@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Resource(name="adminService")
    AdminService adminService;

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers("resources/assets/**");
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {

        http.authorizeRequests()
                .antMatchers("/**").permitAll();
        http.csrf().disable();
       *//* http.formLogin()
                .loginPage("/login")
                .defaultSuccessUrl("/")
                .permitAll();

        http.logout()
                .logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
                .logoutSuccessUrl("/")
                .invalidateHttpSession(true);
*//*
        http.exceptionHandling()
                .accessDeniedPage("/denied");
    }

    @Override
    public void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(adminService).passwordEncoder(passwordEncoder());
    }

}*/
