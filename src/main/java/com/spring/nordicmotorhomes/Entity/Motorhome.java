package com.spring.nordicmotorhomes.Entity;

import lombok.*;
import javax.persistence.*;

@Entity
@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Motorhome {
    @Id
    @SequenceGenerator(name ="motorhome_sequence",
            sequenceName = "motorhome_sequence",
            allocationSize = 1
    )
    @GeneratedValue(strategy= GenerationType.SEQUENCE,
            generator = "motorhome_sequence"
    )
    private int id;
    private String brand;
    private String model;
    private int capacity;
    private boolean availability;
    private String reg_number;
    private double base_price;
    private int mileage;
}
