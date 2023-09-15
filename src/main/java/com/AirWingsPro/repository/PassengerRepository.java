package com.AirWingsPro.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.AirWingsPro.entity.Passenger;

public interface PassengerRepository extends JpaRepository<Passenger, Long> {

}
