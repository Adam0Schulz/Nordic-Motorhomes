package com.spring.nordicmotorhomes.Entity;

import lombok.*;

import javax.persistence.*;

@Entity
@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "cancellation_fees") // Naming the database table
public class CancellationFee {

    // Attributes/Columns
    //  Primary key
    @Id
    @SequenceGenerator(name ="cancellationFees_sequence",
            sequenceName = "cancellationFees_sequence",
            allocationSize = 1
    )
    @GeneratedValue(strategy= GenerationType.SEQUENCE,
            generator = "cancellationFees_sequence"
    )
    private int ID;

    // Other Attributes
    private String name;
    private int days_before;
    private int percentage;
}
