package com.AirWingsPro.service;

import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.AirWingsPro.dto.ReservationRequest;
import com.AirWingsPro.entity.Flight;
import com.AirWingsPro.entity.Passenger;
import com.AirWingsPro.entity.Reservation;
import com.AirWingsPro.repository.FlightRepository;
import com.AirWingsPro.repository.PassengerRepository;
import com.AirWingsPro.repository.ReservationRepository;
import com.AirWingsPro.utility.PDFgenerator;


@Service
public class ReservationServiceImpl implements ReservationService {

	@Autowired
	private PassengerRepository passengerRepo;

	@Autowired
	private FlightRepository flightRepo;

	@Autowired
	private ReservationRepository reservationRepo;

	@Autowired
	private PDFgenerator pdfGenerator;

	@Override
	public Reservation bookFlight(ReservationRequest request) {

		Passenger passenger = new Passenger();
		passenger.setFirstName(request.getFirstName());
		passenger.setMiddleName(request.getMiddleName());
		passenger.setLastName(request.getLastName());
		passenger.setEmail(request.getEmail());
		passenger.setPhone(request.getPhone());
		passengerRepo.save(passenger);

		long flightId = request.getFlightId();
		Optional<Flight> findById = flightRepo.findById(flightId);
		Flight flight = findById.get();

		Reservation reservation = new Reservation();
		reservation.setFlight(flight);
		reservation.setPassenger(passenger);
		reservation.setCheckedIn(false);
		reservation.setNumberOfBags(0);
		reservationRepo.save(reservation);

		String filePath = "D:\\myProjects" + reservation.getId() + ".pdf";
		pdfGenerator.generatePDF(reservation, filePath); // Generate PDF

		return reservation;
	}
}