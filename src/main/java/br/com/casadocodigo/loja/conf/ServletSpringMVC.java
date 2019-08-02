package br.com.casadocodigo.loja.conf;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class ServletSpringMVC extends AbstractAnnotationConfigDispatcherServletInitializer{

	@Override
	protected Class<?>[] getRootConfigClasses() {
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		
		//retornando o controller
		return new Class[] {AppWebConfiguration.class};
	}

	@Override
	protected String[] getServletMappings() {
		
		//mapeando o serlet do spring
		return new String[] {"/"};
	}

}
