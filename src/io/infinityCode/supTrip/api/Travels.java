package io.infinityCode.supTrip.api;

import java.util.ArrayList;
import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import io.infinityCode.supTrip.dao.DaoFactory;
import io.infinityCode.supTrip.entity.AvailableTrip;
import io.infinityCode.supTrip.entity.Campus;

@Path("/travels")
@Produces(MediaType.APPLICATION_JSON)
public class Travels
{
	@GET
    public List<AvailableTrip> AllTravels()
	{
		List<AvailableTrip> ret = new ArrayList<AvailableTrip>();
		List<Campus> campuses = DaoFactory.getCampusDao().all();

		for(Campus dep : campuses)
			for(Campus des : campuses)
				if(dep == des) continue;
				else
					ret.add(new AvailableTrip(dep, des));
		
		return ret;
    }

	@GET @Path("/{departure: [A-Za-z]*}/{destination: [A-Za-z]*}")
    public List<AvailableTrip> searchTravel(@PathParam("departure") String from, @PathParam("destination") String to)
	{
		List<AvailableTrip> ret = new ArrayList<AvailableTrip>();

		if(from.isEmpty() && to.isEmpty())
			ret = this.AllTravels();
		else if(!from.isEmpty() && !to.isEmpty())
			ret.add(new AvailableTrip(
				DaoFactory.getCampusDao().oneByName(from),
				DaoFactory.getCampusDao().oneByName(to)
			));
		else
		{
			if(to.isEmpty())
			{
				Campus find = DaoFactory.getCampusDao().oneByName(from);
				List<Campus> campuses = DaoFactory.getCampusDao().allExceptGivenCampus(from);
				for(Campus campus: campuses)
					ret.add(new AvailableTrip(find, campus));
			}
			else if(from.isEmpty())
			{
				Campus find = DaoFactory.getCampusDao().oneByName(to);
				List<Campus> campuses = DaoFactory.getCampusDao().allExceptGivenCampus(to);
				for(Campus campus: campuses)
					ret.add(new AvailableTrip(campus, find));
			}
		}

        return ret;
    }

	@GET @Path("/{campus: [A-Za-z]*}")
    public List<AvailableTrip> searchCampus(@PathParam("campus") String depdes)
	{
		if(depdes.isEmpty()) return null;

		List<AvailableTrip> ret = new ArrayList<AvailableTrip>();

		Campus find = DaoFactory.getCampusDao().oneByName(depdes);
		if(0 >= find.getId()) return null;
		
		
		List<Campus> campuses = DaoFactory.getCampusDao().allExceptGivenCampus(depdes);
		for(Campus campus: campuses)
		{
			ret.add(new AvailableTrip(find, campus));
			ret.add(new AvailableTrip(campus, find));
		}
	
		return ret;
    }
}
