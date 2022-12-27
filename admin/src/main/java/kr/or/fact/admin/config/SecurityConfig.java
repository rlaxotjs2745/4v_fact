package kr.or.fact.admin.config;

import kr.or.fact.core.service.AdminService;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import javax.annotation.Resource;

//@Configuration
//@EnableWebSecurity
//@EnableGlobalMethodSecurity(prePostEnabled = true)
/*public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }


    @Resource(name="adminService")
    AdminService adminService;

    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers("/resources/assets/**");
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {

        http.authorizeRequests()
                .antMatchers("/")
//                .authenticated()
//                .anyRequest()
//
//                .authenticated();
        .permitAll();

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

        http
                .sessionManagement()
                .invalidSessionUrl("/");
    }

    @Override
    public void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(adminService).passwordEncoder(passwordEncoder());
    }

}*/
