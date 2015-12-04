package fr.coolStudio.supTrip.exception;

public class UnknownCampusException extends RuntimeException {

	private static final long serialVersionUID = -5034524564194878372L;

	public UnknownCampusException(Long id) {
		super("The Campus with id " + id + " doesn't exist.");
	}
	
}
