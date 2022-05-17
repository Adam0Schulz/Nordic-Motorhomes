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

public class Employee {
    @Id
    @SequenceGenerator(name ="employee_sequence",
        sequenceName = "employee_sequence",
        allocationSize = 1
    )
    @GeneratedValue(strategy= GenerationType.SEQUENCE,
        generator = "employee_sequence"
    )
    private Integer id;
    private String firstName;
    private String lastName;
    private int phoneNum;
    private int CPR;
    private String title;

    private String email;
    private String password;

}
