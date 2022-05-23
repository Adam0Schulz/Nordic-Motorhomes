package com.spring.nordicmotorhomes.Entity;

import lombok.*;

import javax.persistence.*;

@Entity
@Getter
@Setter
@ToString
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "cancelled_bookings") // Naming the database table
public class CancelledBooking {
    // Attributes/Columns
    //  Primary key
    @Id
    @SequenceGenerator(name ="cancelledBooking_sequence",
            sequenceName = "cancelledBooking_sequence",
            allocationSize = 1
    )
    @GeneratedValue(strategy= GenerationType.SEQUENCE,
            generator = "cancelledBooking_sequence"
    )
    private int ID;

    @OneToOne
    @JoinColumn(name = "bookingID", referencedColumnName = "ID")
    private Booking booking;

    @ManyToOne
    @JoinColumn(name = "feeID", referencedColumnName = "ID")
    private CancellationFee fee;
}
