package fr.coolStudio.supTrip.exception;

public class UnknownTripException extends RuntimeException {

	private static final long serialVersionUID = -5034524574194578372L;

	public UnknownTripException(Long id) {
		super("The trip with id " + id + " doesn't exist.");
	}
	
}
