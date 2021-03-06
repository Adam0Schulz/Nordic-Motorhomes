package com.spring.nordicmotorhomes.Entity;

import lombok.*;

import javax.persistence.*;
// Wanesa
@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
@ToString
@Table(name = "active_bookings") // Naming the database table
public class ActiveBooking {

    // Attributes/Columns
    //  Primary key
    @Id
    @SequenceGenerator(name ="activeBooking_sequence",
            sequenceName = "activeBooking_sequence",
            allocationSize = 1
    )
    @GeneratedValue(strategy= GenerationType.SEQUENCE,
            generator = "activeBooking_sequence"
    )
    private long ID;

    //  Foreign key
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "bookingID", referencedColumnName = "ID")
    private Booking booking;

}
