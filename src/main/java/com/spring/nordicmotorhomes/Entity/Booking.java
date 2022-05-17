package com.spring.nordicmotorhomes.Entity;

import lombok.*;

import javax.persistence.*;
import java.sql.Date;
import java.sql.Time;

@Entity
@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Booking {

    @Id
    @SequenceGenerator(name = "booking_sequence",
            sequenceName = "booking_sequence",
            allocationSize = 1
    )
    @GeneratedValue(strategy = GenerationType.SEQUENCE,
            generator = "booking_sequence"
    )
    private Long id;
    private int customerId;
    private Date startDate;
    private Time pickUpTime;
    private Date endDate;
    private int motorhomeId;
    private int employeeId;
    private String pickUpLocation;
    private String dropOffLocation;
    private double totalPrice;
    private double fuelLevel;
}