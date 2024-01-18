package com.eidia.exam.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.eidia.exam.entity.Resource;

public interface ResourceRepository extends JpaRepository<Resource, Long>{
	@Query("select r from Resource r where r.name like:x or r.type like:x or r.location like:x")
	public List<Resource> search(@Param("x")String key);
	
	@Query("SELECT r FROM Resource r WHERE r.id NOT IN " +
            "(SELECT res.resourceId FROM Demande res WHERE " +
            "(:x = res.taketime AND :y = res.backtime AND :z = res.date AND :k like res.status ))")
    List<Resource> findAvailableResourcesBetweenTimes(@Param("x") String startTime, @Param("y") String endTime, @Param("z") String date, @Param("k") String status);
	
	@Query("select r.id from Resource r where r.type like:x")
	public List<Long> GetResourceByType(@Param("x")String key);
	
	@Query("select r from Resource r")
	public List<Resource> GetResources();
}
