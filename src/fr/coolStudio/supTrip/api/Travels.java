package fr.coolStudio.supTrip.api;

import javax.ws.rs.GET;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.Path;
import javax.ws.rs.core.MediaType;

@Path("/travels")
public class Travels
{
	@GET
	@Produces(MediaType.APPLICATION_JSON)
    public String getTravels()
	{
        return "{allTravels: null}";
    }

	@GET
	@Path("/{id: [0-9]+}")
	@Produces(MediaType.APPLICATION_JSON)
    public String getTravel(@PathParam("id") int tid)
	{
        return "{Hey : " + tid + "}";
    }
}
