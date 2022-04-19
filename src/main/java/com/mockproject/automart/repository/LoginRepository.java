package com.mockproject.automart.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.mockproject.automart.entity.Login;


@Repository
public interface LoginRepository extends JpaRepository<Login, Integer> {

	
	public Login findByLoginId(String loginId);
	
	/*
	 * @Query("SELECT l FROM login_details l WHERE l.login_id = ?1 and l.password = ?2 "
	 * ) Login findUserByUsernnameandPassword(String username,String password);
	 */
}
