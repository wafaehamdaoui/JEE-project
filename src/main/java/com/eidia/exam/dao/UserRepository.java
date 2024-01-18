package com.eidia.exam.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.eidia.exam.entity.User;

public interface UserRepository extends JpaRepository<User, Long>{
	@Query("select u from User u where u.username like:x")
	public List<User> search(@Param("x")String key);

	@Query("select u from User u where u.username like:x and u.password like:y")
	public User findUser(@Param("x")String name, @Param("y")String password);
}
