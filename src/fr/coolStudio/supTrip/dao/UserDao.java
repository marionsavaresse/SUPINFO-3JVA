package fr.coolStudio.supTrip.dao;

import fr.coolStudio.supTrip.bo.User;
import fr.coolStudio.supTrip.exception.UnknownUserException;


import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class UserDao {

	private static List<User> Users = new ArrayList<User>();
	private static Long idSequence = 1L;
	
	private UserDao() { }
	
	/**
	 * Generate an idBooster to the user and store it in memory
	 * @param user
	 */
	public static void addUser(User user) {
		user.setIdBooster(idSequence++);
		Users.add(user);
	}
	
	/**
	 * Update a user
	 * @throws UnknownUserException when the user doesn't exist
	 * @param user
	 */
	public static void updateUser(User user) {
		int index = getUserIndexByIdBooster(user.getIdBooster());
		if(index > -1) {
			Users.set(index, user);
		} else {
			throw new UnknownUserException(user.getIdBooster());
		}
	}
	
	/**
	 * Find a user by idBooster
	 * @throws UnknownUserException when no user in memory have the idBooster
	 * @param the idBooster of the user to find
	 * @return the user corresponding to the idBooster
	 */
	public static User findUserByIdBooster(Long id) {
		int index = getUserIndexByIdBooster(id);
		if(index > -1) {
			User user = Users.get(index);
			return user;
		}
		throw new UnknownUserException(id);
	}
	
	/**
	 * @return an unmodifiable list of all users stored in memory
	 */
	public static List<User> getAllUser() {
		return Collections.unmodifiableList(Users);
	}
	
	/**
	 * Remove a user from the memory
	 * @param the user to remove
	 * @throws UnknownUserException when the user doesn't exist in memory
	 */
	public static void removeUser(User user) {
		removeUser(user.getIdBooster());
	}
	
	/**
	 * Remove a user from the memory
	 * @param the id of the user to remove
	 * @throws UnknownUserException when the user doesn't exist in memory
	 */
	public static void removeUser(Long id) {
		int index = getUserIndexByIdBooster(id);
		if(index > -1) {
			Users.remove(index);
		} else {
			throw new UnknownUserException(id);
		}
	}
	
	private static int getUserIndexByIdBooster(Long id) {
		for (int i = 0; i < Users.size(); i++) {
			User user = Users.get(i);
			if(user.getIdBooster().equals(id)) {
				return i;
			}
		}
		return -1;
	}

}
