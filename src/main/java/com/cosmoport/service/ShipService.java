package com.cosmoport.service;

import com.cosmoport.model.Ship;
import com.cosmoport.repository.ShipRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.Date;
import java.util.List;

@Service
public class ShipService {

    @Autowired
    private ShipRepository shipRepository;

    public List<Ship> getAllShips () {
        return shipRepository.findAll(Sort.by(Sort.Direction.ASC, "id"));
    }


    public Ship getById (Long id) {
        return shipRepository.findById(id).orElse(null);
    }

    public void save (Ship ship) {
        BigDecimal bd = BigDecimal.valueOf(ship.getSpeed());
        bd = bd.setScale(2, RoundingMode.HALF_UP);
        double roundedSpeed = bd.doubleValue();
        ship.setSpeed(roundedSpeed);

        double k = ship.getUsed() ? 0.5 : 1;
        double rating = (80 * ship.getSpeed() * k) / (3019 - ship.getProdDate().getYear() + 1);
        BigDecimal bd2 = BigDecimal.valueOf(rating);
        bd2 = bd2.setScale(2, RoundingMode.HALF_UP);
        double roundedRating = bd2.doubleValue();
        ship.setRating(roundedRating);

        shipRepository.save(ship);
    }

    public void deleteById (Long id) {
        shipRepository.deleteById(id);
    }


    public List<Ship> findByName (String name) {
        return shipRepository.findByNameContainingIgnoreCase(name);
    }

//    public List<Ship> findByPlanet (String planet) {
//        return shipRepository.findByPlanetContainsIgnoreCase(planet);
//    }
//
//    public List<Ship> findByShipType (String shipType) {
//        return shipRepository.findByShipTypeContainingIgnoreCase(shipType);
//    }
//    public List<Ship> findByProdDate (Date startDate, Date endDate) {
//        return shipRepository.findByProdDateBetween(startDate,endDate);
//    }
//    public List<Ship> findByUsed (boolean used) {
//        return shipRepository.findByUsed(used);
//    }
//    public List<Ship> findBySpeed (Double minSpeed, Double maxSpeed) {
//        return shipRepository.findBySpeedBetween(minSpeed, maxSpeed);
//    }
//    public List<Ship> findByCrewSize (Integer minCrewSize, Integer maxCrewSize) {
//        return shipRepository.findByCrewSizeBetween( minCrewSize,  maxCrewSize);
//    }
//    public List<Ship> findByRating (Double minRating, Double maxRating) {
//        return shipRepository.findByRatingBetween(minRating, maxRating);
//    }
}
