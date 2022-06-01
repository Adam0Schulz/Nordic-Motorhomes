package com.spring.nordicmotorhomes.Entity;
import lombok.*;
import javax.persistence.*;
import java.sql.Date;

@Entity
@Getter
@Setter
@ToString
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "seasons") // Naming the database table
public class Season {
    // Attributes/Columns
    //  Primary key
    @Id
    @SequenceGenerator(name ="season_sequence",
            sequenceName = "season_sequence",
            allocationSize = 1
    )
    @GeneratedValue(strategy= GenerationType.SEQUENCE,
            generator = "season_sequence"
    )
    private int ID;

    //  Other Attributes
    private String name;
    private int startMonth;
    private int endMonth;
    private double percentage;
}
