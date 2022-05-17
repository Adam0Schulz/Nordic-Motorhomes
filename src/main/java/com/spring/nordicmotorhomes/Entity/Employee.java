package com.spring.nordicmotorhomes.Entity;

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
@Table(name = "employees") // Naming the database table
public class Employee {

    // Attributes/Columns
    //  Primary key
    @Id
    @SequenceGenerator(name ="employee_sequence",
        sequenceName = "employee_sequence",
        allocationSize = 1
    )
    @GeneratedValue(strategy= GenerationType.SEQUENCE,
        generator = "employee_sequence"
    )
    private long ID;

    //  Foreign key
    @OneToMany(mappedBy = "employee")
    private Set<Booking> bookings = new HashSet<>();

    // Other Attributes
    private String firstName;
    private String lastName;
    private int phoneNumber;
    private int CPR;
    private String title;
    private String email;
    private String password;

}
