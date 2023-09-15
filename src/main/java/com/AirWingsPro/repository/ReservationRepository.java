package com.AirWingsPro.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.AirWingsPro.entity.Reservation;

public interface ReservationRepository extends JpaRepository<Reservation, Long> {

}
