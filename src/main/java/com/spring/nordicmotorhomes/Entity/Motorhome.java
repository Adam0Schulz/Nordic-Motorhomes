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
@Table(name = "motorhomes") // Naming the database table
public class Motorhome {

    // Attributes/Columns
    //  Primary key
    @Id
    @SequenceGenerator(name ="motorhome_sequence",
            sequenceName = "motorhome_sequence",
            allocationSize = 1
    )
    @GeneratedValue(strategy= GenerationType.SEQUENCE,
            generator = "motorhome_sequence"
    )
    private long ID;

    //  Foreign key
    @JsonIgnore
    @OneToMany(mappedBy = "motorhome")
    private Set<Booking> bookings = new HashSet<>();

    //  Other Attributes
    private String brand;
    private String model;
    private int capacity;
    private boolean availability;
    private String regNumber;
    private double basePrice;
    private int mileage;


}
