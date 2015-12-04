package fr.coolStudio.supTrip.exception;

public class UnknownUserException extends RuntimeException {

	private static final long serialVersionUID = -5034525264194578372L;

	public UnknownUserException(Long id) {
		super("The user with idBooster " + id + " doesn't exist.");
	}
	
}
