package com.spring.nordicmotorhomes.Controller;

import com.spring.nordicmotorhomes.Entity.Booking;
import com.spring.nordicmotorhomes.Entity.Employee;
import com.spring.nordicmotorhomes.Entity.Motorhome;
import com.spring.nordicmotorhomes.Service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.sql.Date;
import java.sql.Time;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Controller
public class SAController {

    /*@Autowired
    private EmployeeService employeeService;

    @Autowired
    private MotorhomeService motorhomeService;

    @Autowired
    private ExtraService extraService;

    @Autowired
    private SeasonService seasonService;

    @Autowired
    private SystemVariableService systemVariableService;*/

    @Autowired
    private BookingService bookingService;

    @Autowired
    private MotorhomeService motorhomeService;


    @GetMapping("/dashboard/sa")
    public String index (Model model) {
        if(EmployeeService.getCurrentEmp() == null || (EmployeeService.getCurrentEmp().getTitle().equals("sales assistant"))) {
            return "redirect:/login";
        }

        List<Booking> activeBookings = bookingService.getActiveBookings();
        List<Booking> pastBookings = bookingService.getPastBookings();
        List<Booking> futureBookings = bookingService.getFutureBookings();

        model.addAttribute("activeBookings", activeBookings);
        model.addAttribute("pastBookings", pastBookings);
        model.addAttribute("futureBookings", futureBookings);
        return "dashboard/sa/index";
    }

    @PostMapping("/dashboard/sa")
    public String addBooking() {
        return "";
    }


    @GetMapping("/dashboard/sa/motorhomes")
    public String motorhomes(Model model) {
        List<Motorhome> motorhomes = motorhomeService.getAllMotorhomes();
        model.addAttribute("motorhomes", motorhomes);
        return "dashboard/sa/motorhomes";
    }





    /*@ResponseBody
    @GetMapping("dashboard/sa/create-booking-test")
    public List<Booking> createBookingTest() {
        systemVariableService.createVariable("additional drop-off kilometer fee", 0.70);
        systemVariableService.createVariable("motorhome availability buffer", 5);
        employeeService.createEmployee(1144,"this@this.dk", "Adam", "Schulz", "123", 123123123, "sales assistant");
        motorhomeService.createMotorhome(955, "ford", 5, 100000,"150", "AB 44 887");
        extraService.createExtra(125,"bike rack");
        extraService.createExtra(100, "bed linen");
        extraService.createExtra(1000, "awning");
        seasonService.createSeason(Date.valueOf("2022-3-1"), Date.valueOf("2022-5-31"), "Spring", 0.6);

        Set<Integer> extraIds = new HashSet<>();
        extraIds.add(1);
        extraIds.add(2);

        bookingService.addBooking(1115,"Adam", "Schulz", 12558568, Date.valueOf("2022-03-31"), Date.valueOf("2022-04-31"), 1, extraIds, "pickup doen't matter", "drop off doesn't matter neither", new Time(System.currentTimeMillis()), 1);
        return bookingService.getBookingByDate(Date.valueOf("2022-03-31").toLocalDate());
    }*/


}
