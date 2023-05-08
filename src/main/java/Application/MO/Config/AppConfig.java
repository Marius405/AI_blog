package Application.MO.Config;

import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.filter.CommonsRequestLoggingFilter;
//import org.springframework.web.filter.CompressionFilter;

@Configuration
public class AppConfig {

    /*@Bean
    public FilterRegistrationBean<CompressionFilter> compressionFilter() {
        FilterRegistrationBean<CompressionFilter> registration = new FilterRegistrationBean<>();
        registration.setFilter(new CompressionFilter());
        registration.addUrlPatterns("/*");
        registration.setName("compressionFilter");
        registration.setOrder(1);
        return registration;
    }*/

}
