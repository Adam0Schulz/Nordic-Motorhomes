package com.spring.nordicmotorhomes.Controller;

import com.spring.nordicmotorhomes.Entity.Booking;
import com.spring.nordicmotorhomes.Entity.Employee;
import com.spring.nordicmotorhomes.Entity.Extra;
import com.spring.nordicmotorhomes.Entity.Motorhome;
import com.spring.nordicmotorhomes.Service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


import java.sql.Date;
import java.sql.Time;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
// Adam Simona
@Controller
public class SAController {

    @Autowired
    private BookingService bookingService;

    @Autowired
    private MotorhomeService motorhomeService;

    @Autowired
    private ExtraService extraService;


    @GetMapping("/dashboard/sa")
    public String index (Model model) {
        if(EmployeeService.getCurrentEmp() == null || !(EmployeeService.getCurrentEmp().getTitle().equals("sales assistant"))) {
            return "redirect:/login";
        }

        List<Booking> activeBookings = bookingService.getActiveBookings();
        List<Booking> pastBookings = bookingService.getPastBookings();
        List<Booking> futureBookings = bookingService.getFutureBookings();

        model.addAttribute("firstStep", true);
        model.addAttribute("addBookingAction", "/dashboard/sa/addBooking-second");
        model.addAttribute("activeBookings", activeBookings);
        model.addAttribute("pastBookings", pastBookings);
        model.addAttribute("futureBookings", futureBookings);
        return "dashboard/sa/index";
    }

    @PostMapping("/dashboard/sa")
    public String addBookingThirdStep(
            Model model,
            @RequestParam(name = "third-step") String submit,
            @RequestParam(name = "first") String first,
            @RequestParam(name = "last") String last,
            @RequestParam(name = "cpr") String cpr,
            @RequestParam(name = "start-date") String startDate,
            @RequestParam(name = "end-date") String endDate,
            @RequestParam(name = "phone") String phone,
            @RequestParam(name = "motorhome-id") String motorhomeID,
            @RequestParam(name = "extras-ids") List<String> extrasIDs,
            @RequestParam(name = "pickup-location") String pickupLocation,
            @RequestParam(name = "dropoff-location") String dropoffLocation,
            @RequestParam(name = "pickup-time") String pickupTime) {
        model.addAttribute("firstStep", true);
        Employee currentEmp = EmployeeService.getCurrentEmp();
        int CPR = Integer.parseInt(cpr);
        int phoneNum = Integer.parseInt(phone);
        int motorhomeId = Integer.parseInt(motorhomeID);
        List<Integer> extrasIds = new ArrayList<>();
        for (String id : extrasIDs) {
            extrasIds.add(Integer.parseInt(id));
        }
        Date startDateFormatted = Date.valueOf(startDate);
        Date endDateFormatted = Date.valueOf(endDate);

        Time pickupTimeFormatted = Time.valueOf(pickupTime + ":00");
        bookingService.addBooking(CPR,first,last,phoneNum,startDateFormatted,endDateFormatted,motorhomeId,Set.copyOf(extrasIds),pickupLocation,dropoffLocation,pickupTimeFormatted, currentEmp.getID());

        List<Booking> activeBookings = bookingService.getActiveBookings();
        List<Booking> pastBookings = bookingService.getPastBookings();
        List<Booking> futureBookings = bookingService.getFutureBookings();

        model.addAttribute("activeBookings", activeBookings);
        model.addAttribute("pastBookings", pastBookings);
        model.addAttribute("futureBookings", futureBookings);

        return "/dashboard/sa/index";

    }

    @PostMapping("/dashboard/sa/addBooking-second")
    public String addBookingFirstStep(
            Model model,
            @RequestParam(name = "first-step") String submit,
            @RequestParam(name = "first") String first,
            @RequestParam(name = "last") String last,
            @RequestParam(name = "cpr") String cpr,
            @RequestParam(name = "start-date") String startDate,
            @RequestParam(name = "end-date") String endDate,
            @RequestParam(name = "phone") String phone) {

        LocalDate startDateFormatted = Date.valueOf(startDate).toLocalDate();
        LocalDate endDateFormatted = Date.valueOf(endDate).toLocalDate();
        List<Motorhome> motorhomes = motorhomeService.getAllAvailableMotorhomesDuring(startDateFormatted, endDateFormatted);
        List<Extra> extras = extraService.getAllExtras();
        int CPR = Integer.parseInt(cpr);
        int phoneNum = Integer.parseInt(phone);
        model.addAttribute("secondStep", true);
        model.addAttribute("addBookingAction", "/dashboard/sa/addBooking-third");
        model.addAttribute("first", first);
        model.addAttribute("last", last);
        model.addAttribute("phone", phoneNum);
        model.addAttribute("cpr", CPR);
        model.addAttribute("startDate", startDate);
        model.addAttribute("endDate", endDate);
        model.addAttribute("motorhomes", motorhomes);
        model.addAttribute("extras", extras);

        List<Booking> activeBookings = bookingService.getActiveBookings();
        List<Booking> pastBookings = bookingService.getPastBookings();
        List<Booking> futureBookings = bookingService.getFutureBookings();

        model.addAttribute("activeBookings", activeBookings);
        model.addAttribute("pastBookings", pastBookings);
        model.addAttribute("futureBookings", futureBookings);

        return "dashboard/sa/index";
    }

    @PostMapping("/dashboard/sa/addBooking-third")
    public String addBookingSecondStep(
            Model model,
            @RequestParam(name = "second-step") String submit,
            @RequestParam(name = "first") String first,
            @RequestParam(name = "last") String last,
            @RequestParam(name = "cpr") String cpr,
            @RequestParam(name = "start-date") String startDate,
            @RequestParam(name = "end-date") String endDate,
            @RequestParam(name = "phone") String phone,
            @RequestParam(name = "motorhome-id") String motorhomeID,
            @RequestParam(name = "extras-ids") List<String> extrasIDs) {


        model.addAttribute("thirdStep", true);
        model.addAttribute("addBookingAction", "/dashboard/sa");
        model.addAttribute("first", first);
        model.addAttribute("last", last);
        model.addAttribute("phone", phone);
        model.addAttribute("cpr", cpr);
        model.addAttribute("startDate", startDate);
        model.addAttribute("endDate", endDate);
        model.addAttribute("motorhomeID", motorhomeID);
        model.addAttribute("extrasIDs", extrasIDs);

        List<Booking> activeBookings = bookingService.getActiveBookings();
        List<Booking> pastBookings = bookingService.getPastBookings();
        List<Booking> futureBookings = bookingService.getFutureBookings();

        model.addAttribute("activeBookings", activeBookings);
        model.addAttribute("pastBookings", pastBookings);
        model.addAttribute("futureBookings", futureBookings);

        return "dashboard/sa/index";
    }


    @GetMapping("/dashboard/sa/motorhomes")
    public String motorhomes(Model model) {
        List<Motorhome> motorhomes = motorhomeService.getAllMotorhomes();
        model.addAttribute("motorhomes", motorhomes);
        return "dashboard/sa/motorhomes";
    }


    @GetMapping("/dashboard/sa/locations")
    public String locations(Model model) {
        List<Booking> pickups = bookingService.getSortedFutureBookings();
        List<Booking> dropoffs = bookingService.getSortedActiveBookings();
        int todaysPickups = bookingService.getTodaysFutureBookings().size();
        int todaysDropoffs = bookingService.getTodaysActiveBookings().size();

        Date todaysDate = new Date(System.currentTimeMillis());
        SimpleDateFormat customFormat = new SimpleDateFormat("dd/MM/yyyy");
        String todaysDateString = customFormat.format(todaysDate);

        model.addAttribute("todaysDate", todaysDateString);
        model.addAttribute("todaysPickups", todaysPickups);
        model.addAttribute("todaysDropoffs", todaysDropoffs);
        model.addAttribute("pickups", pickups);
        model.addAttribute("dropoffs", dropoffs);
        return "/dashboard/sa/locations";
    }

    @GetMapping("/dashboard/sa/booking/{id}")
    public String popup(Model model, @PathVariable String id) {
        int ID = Integer.parseInt(id);
        Booking booking = bookingService.getBookingById((long) ID);

        List<Extra> extras = extraService.getAllExtras();
        double extrasTotal = 0;
        for (Extra ex : booking.getExtras()) {
            extrasTotal += ex.getPrice();
        }
        model.addAttribute("extras", extras);
        model.addAttribute("extrasTotal", extrasTotal);
        model.addAttribute("booking", booking);
        return "dashboard/sa/booking";
    }

    @GetMapping("/dashboard/sa/activeBookings")
    public String activeBookings(Model model) {
        List<Booking> activeBookings = bookingService.getActiveBookings();
        model.addAttribute("header", "Active bookings");
        model.addAttribute("bookings", activeBookings);
        return "dashboard/sa/bookings";
    }

    @GetMapping("/dashboard/sa/pastBookings")
    public String pastBookings(Model model) {
        List<Booking> pastBookings = bookingService.getPastBookings();
        model.addAttribute("header", "Past bookings");
        model.addAttribute("bookings", pastBookings);
        return "dashboard/sa/bookings";
    }

    @GetMapping("/dashboard/sa/upcomingBookings")
    public String upcomingBookings(Model model) {
        List<Booking> futureBookings = bookingService.getFutureBookings();
        model.addAttribute("header", "Upcoming bookings");
        model.addAttribute("bookings", futureBookings);
        return "dashboard/sa/bookings";
    }

    @GetMapping("/dashboard/sa/bookings/{id}")
    public String motorhomeBookings(Model model, @PathVariable String id) {
        int ID = Integer.parseInt(id);
        List<Booking> motorhomeBookings = bookingService.getBookingByMotorhomeID(ID);
        Motorhome motorhome = motorhomeService.getMotorhomeById(ID);
        model.addAttribute("header", motorhome.getRegNumber() + " - Bookings");
        model.addAttribute("bookings", motorhomeBookings);
        return "dashboard/sa/bookings";
    }

    @GetMapping("/dashboard/sa/upcomingPickUps")
    public String upcomingPickUps(Model model) {
        List<Booking> futureBookings = bookingService.getSortedFutureBookings();
        model.addAttribute("header", "Upcoming pick-ups");
        model.addAttribute("bookings", futureBookings);
        return "dashboard/sa/bookings";
    }

    @GetMapping("/dashboard/sa/upcomingDropOffs")
    public String upcomingDropOffs(Model model) {
        List<Booking> futureBookings = bookingService.getSortedActiveBookings();
        model.addAttribute("header", "Upcoming drop-offs");
        model.addAttribute("bookings", futureBookings);
        return "dashboard/sa/bookings";
    }



}
