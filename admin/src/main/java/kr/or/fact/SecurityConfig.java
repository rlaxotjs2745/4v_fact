package kr.or.fact;

import kr.or.fact.core.service.AdminService;
import kr.or.fact.core.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class SecurityConfig extends WebSecurityConfigurerAdapter {
    @Autowired
    private MemberService memberService;

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers("/static/assets/**");
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {

        http.authorizeRequests()
                .antMatchers("/").authenticated()
                .anyRequest().authenticated();

        http.formLogin()
                .loginPage("/login")
                .defaultSuccessUrl("/")
                .permitAll();

        http.logout()
                .logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
                .logoutSuccessUrl("/login")
                .invalidateHttpSession(true);

        http.exceptionHandling()
                .accessDeniedPage("/denied");
    }

    @Override
    public void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(memberService).passwordEncoder(passwordEncoder());
    }


   /* @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .authorizeRequests()
                .antMatchers(HttpMethod.POST,"/form").hasRole("ADMIN")  // Specific api method request based on role.
                .antMatchers("/home","/basic").permitAll()  // permited urls to guest users(without login).
                .anyRequest().authenticated()
                .and()
                .formLogin()       // not specified form page to use default login page of spring security
                .permitAll()
                .and()
                .logout().deleteCookies("JSESSIONID")  // delete memory of browser after logout

                .and()
                .rememberMe().key("uniqueAndSecret"); // remember me check box enabled.

        http.csrf().disable();  // ADD THIS CODE TO DISABLE CSRF IN PROJECT.**
    }*/
}
