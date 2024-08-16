package com.cosmoport.repository;

import com.cosmoport.model.Ship;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

@Repository
public interface ShipRepository extends JpaRepository<Ship, Long> {
    List<Ship> findByNameContainingIgnoreCase(String name);
    List<Ship> findByPlanetContainsIgnoreCase(String planet);
    List<Ship> findByShipTypeContainingIgnoreCase(String shipType);
    List<Ship> findByProdDateBetween(Date startDate, Date endDate);
    List<Ship> findByUsed(boolean used);
    List<Ship> findBySpeedBetween(Double minSpeed, Double maxSpeed);
    List<Ship> findByCrewSizeBetween(Integer minCrewSize, Integer maxCrewSize);
    List<Ship> findByRatingBetween(Double minRating, Double maxRating);

    List<Ship> findAll(Specification<Ship> spec, Sort id);
}
