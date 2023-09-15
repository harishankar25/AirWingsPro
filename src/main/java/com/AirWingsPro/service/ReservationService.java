package com.AirWingsPro.service;

import com.AirWingsPro.dto.ReservationRequest;
import com.AirWingsPro.entity.Reservation;

public interface ReservationService {

	Reservation bookFlight(ReservationRequest request);

}