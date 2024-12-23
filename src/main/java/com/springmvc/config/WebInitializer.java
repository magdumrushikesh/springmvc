package com.springmvc.config;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRegistration;

public class WebInitializer implements WebApplicationInitializer{

	@Override
	public void onStartup(ServletContext servletContext) throws ServletException {
		
		AnnotationConfigWebApplicationContext springContext = new AnnotationConfigWebApplicationContext();
		springContext.setServletContext(servletContext);
		System.out.println("springContext");
		ServletRegistration.Dynamic frontController = servletContext.addServlet("dispatcher", 				
				new DispatcherServlet(springContext));
		
		frontController.addMapping("/spring/*");
		frontController.setLoadOnStartup(1);
		
		springContext.register(SpringMVCConfiguration.class);
		
		
	}

}
