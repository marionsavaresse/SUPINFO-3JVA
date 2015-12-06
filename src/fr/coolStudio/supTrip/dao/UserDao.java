package fr.coolStudio.supTrip.dao;

import fr.coolStudio.supTrip.bo.Campus;
import fr.coolStudio.supTrip.bo.User;
import fr.coolStudio.supTrip.exception.UnknownUserException;



import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public interface UserDao {

	public User persist(User user);
	public User oneById(Long user);
	public List<User> all();
}
