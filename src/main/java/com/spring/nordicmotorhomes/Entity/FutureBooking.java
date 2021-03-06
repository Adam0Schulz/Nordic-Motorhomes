package com.spring.nordicmotorhomes.Entity;

import lombok.*;

import javax.persistence.*;
// Wanesa
@Entity
@Getter
@Setter
@ToString
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "future_bookings") // Naming the database table
public class FutureBooking {

    // Attributes/Columns
    //  Primary key
    @Id
    @SequenceGenerator(name ="futureBooking_sequence",
            sequenceName = "futureBooking_sequence",
            allocationSize = 1
    )
    @GeneratedValue(strategy= GenerationType.SEQUENCE,
            generator = "futureBooking_sequence"
    )
    private int ID;


    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "bookingID", referencedColumnName = "ID")
    private Booking booking;
}
