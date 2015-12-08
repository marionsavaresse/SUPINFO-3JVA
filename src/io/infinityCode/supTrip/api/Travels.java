package io.infinityCode.supTrip.api;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import io.infinityCode.supTrip.bo.AvailableTrip;
import io.infinityCode.supTrip.bo.Trip;
import io.infinityCode.supTrip.dao.DaoFactory;
import io.infinityCode.supTrip.dao.TripDao;

@Path("/travels")
@Produces(MediaType.APPLICATION_JSON)
public class Travels
{
	@GET
    public List<AvailableTrip> getTravels()
	{
        return DaoFactory.getAvailableTripDao().all();
    }

	@GET @Path("/{id: [0-9]+}")
    public Trip getTravel(@PathParam("id") Long tid)
	{
        return TripDao.findTripById(tid);
    }

	@GET @Path("/{departure: [A-Za-z]*}/{destination: [A-Za-z]*}")
    public String searchTravel(@PathParam("departure") String from, @PathParam("destination") String to)
	{
        return "{\n\tdeparture : \"" + from + "\",\n\tdestination : \"" + to + "\"\n}";
    }

	@GET @Path("/{campus: [A-Za-z]+}")
    public String searchCampus(@PathParam("campus") String campus)
	{
        return "{\n\tdeparture : \"" + campus + "\",\n\tdestination : \"" + campus + "\"\n}";
    }
}
