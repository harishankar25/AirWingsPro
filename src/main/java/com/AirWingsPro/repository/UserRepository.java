package com.AirWingsPro.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.AirWingsPro.entity.User;

public interface UserRepository extends JpaRepository<User, Long> {

	User findByEmail(String emailId);

}
