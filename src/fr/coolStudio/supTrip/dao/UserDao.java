package fr.coolStudio.supTrip.dao;

import fr.coolStudio.supTrip.bo.User;
import java.util.List;

public interface UserDao {
	public User persist(User user);
	public User oneById(int user);
	public List<User> all();
}
