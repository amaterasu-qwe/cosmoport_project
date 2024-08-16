package com.cosmoport.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.*;

import java.time.LocalDate;
import java.util.Objects;

@Entity
public class Ship {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @NotEmpty(message = "Имя не должно быть пустым!")
    @Size(min = 1, max = 50, message = "Имя должно быть не более 50 символов")
    @Column(name = "name")
    private String name;

    @NotEmpty(message = "Название планеты не должно быть пустым!")
    @Size(min = 1, max = 50, message = "Название планеты должно быть не более 50 символов")
    @Column(name = "planet")
    private String planet;

    @NotEmpty(message = "Тип корабля не долен быть пустым!")
    @Column(name = "ship_type")
    private String shipType;

    @Column(name = "prod_date")
    private LocalDate prodDate;

    @Column(name = "is_used")
    private boolean used;

    @DecimalMin(value = "0.01", message = "Скорость не должна быть меньше 0.01 и больше 0.99")
    @DecimalMax(value = "0.99", message = "Скорость не должна быть меньше 0.01 и больше 0.99")
    @Column(name = "speed")
    private Double speed;

    @NotNull(message = "Размер экипажа не может быть пустым!")
    @Min(value = 1, message = "Размер экипажа не должен быть меньше 1 и больше 9999")
    @Max(value = 9999, message = "Размер экипажа не должен быть меньше 1 и больше 9999")
    @Column(name = "crew_size")
    private Integer crewSize;

    @Column(name = "rating")
    private Double rating = 0.0;

//----------------------------------------------------------------------------------------------------------------

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPlanet() {
        return planet;
    }

    public void setPlanet(String planet) {
        this.planet = planet;
    }

    public String getShipType() {
        return shipType;
    }

    public void setShipType(String shipType) {
        this.shipType = shipType;
    }

    public LocalDate getProdDate() {
        return prodDate;
    }

    public void setProdDate(LocalDate prodDate) {
        this.prodDate = prodDate;
    }

    public boolean getUsed() {
        return used;
    }

    public void setUsed(boolean used) {
        this.used = used;
    }

    public Double getSpeed() {
        return speed;
    }

    public void setSpeed(Double speed) {
        this.speed = speed;
    }

    public Integer getCrewSize() {
        return crewSize;
    }

    public void setCrewSize(Integer crewSize) {
        this.crewSize = crewSize;
    }

    public Double getRating() {
        return rating;
    }

    public void setRating(Double rating) {
        this.rating = rating;
    }

    public Ship() {
    }

    public Ship(String name, String planet, String shipType, LocalDate prodDate, boolean isUsed, Double speed, Integer crewSize, Double rating) {
        this.name = name;
        this.planet = planet;
        this.shipType = shipType;
        this.prodDate = prodDate;
        this.used = isUsed;
        this.speed = speed;
        this.crewSize = crewSize;
        this.rating = rating;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Ship ship)) return false;
        return getUsed() == ship.getUsed() && Objects.equals(getId(), ship.getId()) && Objects.equals(getName(), ship.getName()) && Objects.equals(getPlanet(), ship.getPlanet()) && Objects.equals(getShipType(), ship.getShipType()) && Objects.equals(getProdDate(), ship.getProdDate()) && Objects.equals(getSpeed(), ship.getSpeed()) && Objects.equals(getCrewSize(), ship.getCrewSize()) && Objects.equals(getRating(), ship.getRating());
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, getName(), getPlanet(), getShipType(), getProdDate(), getUsed(), getSpeed(), getCrewSize(), getRating());
    }

    @Override
    public String toString() {
        return "Ship{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", planet='" + planet + '\'' +
                ", shipType='" + shipType + '\'' +
                ", prodDate=" + prodDate +
                ", isUsed=" + used +
                ", speed=" + speed +
                ", crewSize=" + crewSize +
                ", rating=" + rating +
                '}';
    }
}
