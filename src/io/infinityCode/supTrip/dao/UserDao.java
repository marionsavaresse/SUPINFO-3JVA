package io.infinityCode.supTrip.dao;

import io.infinityCode.supTrip.bo.User;
import java.util.List;

public interface UserDao {
	public User persist(User user);
	public User oneById(int user);
	public String update(User user);
	public List<User> all();
}
