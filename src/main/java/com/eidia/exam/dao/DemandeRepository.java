package com.eidia.exam.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.eidia.exam.entity.Demande;

public interface DemandeRepository extends JpaRepository<Demande, Long>{
	@Query("select d from Demande d where d.status like:x or d.motif like:x")
	public List<Demande> search(@Param("x")String key);
	
	@Query("select d from Demande d where d.userId =:x")
	public List<Demande> getDemandeByUser(@Param("x")Long key);
	
	@Query("select d from Demande d where d.resourceId = :k AND :l = d.taketime AND :m = d.backtime AND :n = d.date AND :o like d.status")
	public List<Demande> getDemandeByResource(@Param("k")Long id, @Param("l")String taketime, @Param("m")String backtime, @Param("n")String date, @Param("o")String status);
	
	@Query("select d from Demande d where d.status like:x")
	public List<Demande> inProgress(@Param("x")String status);
	
	@Query("select count(d) from Demande d where d.resourceId = :k AND :s like d.status")
	public long countDemandesByResource(@Param("k")Long id,@Param("s")String status);
}
