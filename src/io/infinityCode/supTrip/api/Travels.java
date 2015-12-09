package io.infinityCode.supTrip.api;

import java.util.ArrayList;
import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import io.infinityCode.supTrip.bo.AvailableTrip;
import io.infinityCode.supTrip.bo.Campus;
import io.infinityCode.supTrip.bo.Trip;
import io.infinityCode.supTrip.dao.DaoFactory;
import io.infinityCode.supTrip.dao.TripDao;

@Path("/travels")
@Produces(MediaType.APPLICATION_JSON)
public class Travels
{
	@GET
    public List<AvailableTrip> AllTravels()
	{
		List<AvailableTrip> ret = new ArrayList<AvailableTrip>();
		List<Campus> campuses = DaoFactory.getCampusDao().all();

		for(int i = 0; i < campuses.size(); ++i)
			for(int j = 0; j < campuses.size(); ++j)
				if(i == j) continue;
				else
					ret.add(new AvailableTrip(
						campuses.get(i).getId(), campuses.get(i).getCampusName(),
						campuses.get(j).getId(), campuses.get(j).getCampusName()
					));
		
		return ret;
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
