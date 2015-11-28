package fr.coolStudio.supTrip.config;

import org.glassfish.jersey.server.ResourceConfig;
import com.fasterxml.jackson.jaxrs.xml.JacksonJaxbXMLProvider;

public class AppConfig extends ResourceConfig
{
	public AppConfig()
	{
		packages("fr.coolStudio.supTrip");
		register(JacksonJaxbXMLProvider.class);
	}
}
