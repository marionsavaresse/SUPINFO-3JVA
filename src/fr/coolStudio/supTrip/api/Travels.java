package fr.coolStudio.supTrip.api;

import javax.ws.rs.GET;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.Path;
import javax.ws.rs.core.MediaType;

@Path("/travels")
@Produces(MediaType.APPLICATION_JSON)
public class Travels
{
	@GET
    public String getTravels()
	{
        return "{\n\tallTravels: null\n}";
    }

	@GET
	@Path("/{id: [0-9]+}")
    public String getTravel(@PathParam("id") int tid)
	{
        return "{\n\tHey : " + tid + "\n}";
    }

	@GET
	@Path("/{departure: [A-Za-z]*}/{destination: [A-Za-z]*}")
    public String searchTravel(@PathParam("departure") String from, @PathParam("destination") String to)
	{
        return "{\n\tdeparture : \"" + from + "\",\n\tdestination : \"" + to + "\"\n}";
    }

	@GET
	@Path("/{campus: [A-Za-z]+}")
    public String searchCampus(@PathParam("campus") String campus)
	{
        return "{\n\tdeparture : \"" + campus + "\",\n\tdestination : \"" + campus + "\"\n}";
    }
}
