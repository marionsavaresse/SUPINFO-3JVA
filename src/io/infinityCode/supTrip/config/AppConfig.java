package io.infinityCode.supTrip.config;

import org.glassfish.jersey.server.ResourceConfig;
import com.fasterxml.jackson.jaxrs.xml.JacksonJaxbXMLProvider;

public class AppConfig extends ResourceConfig
{
	public AppConfig()
	{
		packages("io.infinityCode.supTrip");
		register(JacksonJaxbXMLProvider.class);
	}
}
