package com.spring.nordicmotorhomes.Entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.*;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Table(name = "customers")
public class Customer {
    @Id
    @SequenceGenerator(name = "customer_sequence",
            sequenceName = "customer_sequence",
            allocationSize = 1
    )
    @GeneratedValue(strategy = GenerationType.SEQUENCE,
            generator = "customer_sequence"
    )
    private long ID;
    private String firstName;
    private String lastName;
    private int phoneNumber;
    private int CPR;

    @JsonIgnore
    @OneToMany(mappedBy = "customer")
    private Set<Booking> bookings = new HashSet<>();
}

