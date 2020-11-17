/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.park.parkinglot.common;

/**
 *
 * @author Larisa
 */
public class CarDetails implements java.io.Serializable{
    private Integer id;
    private String licensePlate;
    private String parkingSpot;
    private String username;

    public CarDetails(Integer id, String licensePlate, String parkingSpot, String username) {
        this.id = id;
        this.licensePlate = licensePlate;
        this.parkingSpot = parkingSpot;
        this.username = username;
    }


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getLicensePlate() {
        return licensePlate;
    }

    public void setLicensePlate(String licensePlate) {
        this.licensePlate = licensePlate;
    }

    public String getParkingSpot() {
        return parkingSpot;
    }

    public void setParkingSpot(String parkingSpot) {
        this.parkingSpot = parkingSpot;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}
