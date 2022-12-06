import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'classes/signup.dart';
import 'classes/welcomeScreen.dart';
import 'classes/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: WelcomeScreen.id, routes: {
      WelcomeScreen.id: (context) => WelcomeScreen(),
      LoginScreen.id: (context) => LoginScreen(),
      SignUp.id: (context) => SignUp(),
    });
  }
}

// This route will display Main page depending on the type of user

// Zain

class User {
  // late System system;

  late String userName;
  late int phoneNum;
  late String vehicleRegNum;

  InitializeUser(String name, int num, String regNo) {
    userName = name;
    phoneNum = num;
    vehicleRegNum = regNo;
  }

  detectChip(String vehicleRegNum) {}

  notifyManager() {}
}

class UnregisteredUser extends User {
  signUp() {}
}

class registeredUser extends User {
  late String address;
  late double credit;
  late int points;

  signIn() {}
  viewMileageGraph() {}
  viewMaintenanceHistory() {}
  viewTotalMoneySpent() {}
  enterCurrentMileage() {}
  planAppointment() {}
}

class maintenanceSchedule {
  suggestedService() {}
  suggestedAppointment() {}
}

class System {
  sendNotification() {}
  terminateEmployee() {}
  transferEmployee() {}
  submitTaxReport() {}
}

class WorkingSchedule {
  type() {}
}

class workingShift {
  late String from;
  late String to;

  initializeWorkingShift(String from, String to) {
    this.from = from;
    this.to = to;
  }
}
// Wahab

class Staff {
  late int id;

  initializeStaff(int identification) {
    id = identification;
  }

  checkBooked() {}
  checkIn() {}
  checkOut() {}
}

class Denter extends Staff {
  late bool booked;
  late bool leaveStatus;

  initializeDenter(bool book, bool leave) {
    booked = book;
    leave = leaveStatus;
  }

  applyForLeave() {}
  markAttendance() {}
}

class Electrician extends Staff {
  late bool booked;
  late bool leaveStatus;

  initializeElectrician(bool book, bool leave) {
    booked = book;
    leave = leaveStatus;
  }

  applyForLeave() {}
  markAttendance() {}
}

class Mechanic extends Staff {
  late bool booked;
  late bool leaveStatus;

  initializeMechanic(bool book, bool leave) {
    booked = book;
    leave = leaveStatus;
  }

  applyForLeave() {}
  markAttendance() {}
}

class WorkshopManager extends Staff {
  late String password;

  initializeWorkshopManager(String pass) {
    password = pass;
  }

  modifyMaintenanceSchedule() {}
  createMaintenanceSchedule() {}
  modifyWorkingShifts() {}
  approveLeave() {}
  addLeaveQuotas() {}
  runEmployeeReport() {}
  viewInventoryLevels() {}
  mostSellingParts() {}
  partLife() {}
  bestVendorForPart() {}
  predictJobLoad() {}
  predictMileage() {}
  receiveCustomerDetails() {}
}

class InventoryManager extends Staff {
  late String password;

  initializeInventoryManager(String pass) {
    password = pass;
  }

  manageInventory() {}
  allocateInventory() {}
  defineInventoryLevel() {}
  reorderInventoryLevel() {}
  orderNewStock() {}
}

class FloorManager extends Staff {
  late String password;

  initializeFloorManager(String pass) {
    password = pass;
  }

  keepCheckOnJobs() {}
  keepCheckOnStaff() {}
  runPerformanceReport() {}
  returnItems() {}
  manageOutletStaff() {}
  viewOutletStaff() {}
}

// Usman

class Outlet {
  late int id;
  late String name;
  late String address;
  late Inventory inventory;
  late Workshop workshop;
  late Floor floors;

  initializeOutlet(
      int identification,
      String outletName,
      String outletAddress,
      String outletPassword,
      Inventory outletInventory,
      Workshop outletWorkshop) {
    id = identification;
    name = outletName;
    address = outletAddress;
    inventory = outletInventory;
    workshop = outletWorkshop;
  }

  addFloor() {}
}

class Inventory {
  late int consumptiontrend;
  late Part parts;
  initializeInventory(int consumption) {
    consumptiontrend = consumption;
    parts = Part();
  }

  addPart() {}
}

class Part {
  late int id;
  late String name;
  late int quantity;
  late int price;
  late Vendor vendor;
  late int numberofitemssold;
  late int life;
  initializePart(int identification, String partName, int partQuantity,
      int partPrice, int partLife, Vendor partVendor) {
    id = identification;
    name = partName;
    quantity = partQuantity;
    price = partPrice;
    numberofitemssold = 0;
    life = partLife;
    vendor = partVendor;
  }
}

class Vendor {
  late int id;
  late String name;
  late String address;
  late String contact;
  initializeVendor(int identification, String vendorName, String vendorAddress,
      String vendorContact) {
    id = identification;
    name = vendorName;
    address = vendorAddress;
    contact = vendorContact;
  }
}

class Workshop {
  late String name;
  late String location;
  initializeWorkshop(String workshopName, String workshopLocation) {
    name = workshopName;
    location = workshopLocation;
  }
}

class Floor {
  late int floorNumber;
  initializeFloor(int floors) {
    floorNumber = floors;
  }
}

class PerformanceReportGeneration {
  late String id;
  late String Performance;
  initializePerformanceReportGeneration(
      String identification, String performance) {
    id = identification;
    Performance = performance;
  }
}

class JobAgingDashBoard {
  late int JobID;
  late int JobTimeSpent;

  initializeJobAgingDashBoard(int jobid, int jobtimespent) {
    JobID = jobid;
    JobTimeSpent = jobtimespent;
  }
}

// Amina

class Payment {
  late int TotalAmount;
  late int PaymentComplete;
  initializePayment(int TotalAmount, int PaymentComplete) {
    this.TotalAmount = TotalAmount;
    this.PaymentComplete = PaymentComplete;
  }

  addToTotalMoneySpent() {}
  taxDeduction() {}
}

class onSpotPayment extends Payment {
  late String PaymentMethod;
  InitializeOnSpotPayment(String paymentMethod) {
    PaymentMethod = paymentMethod;
  }
}

class OnlinePayment extends Payment {
  late int cardNumber;
  late String bankName;
  late int bankBranchCode;
  InitializeOnlinePayment(int no, String name, int code) {
    cardNumber = no;
    bankName = name;
    bankBranchCode = code;
  }

  verifyCardDetails() {}
  redirectToBank() {}
}

class Vehicle extends maintenanceSchedule {
  late String make;
  late String model;
  late String brand;
  late int vehicleID;
  late int mileage;

  InitializeVehicle(
      String make, String model, String brand, int vehicleID, int mileage) {
    this.make = make;
    this.model = model;
    this.brand = brand;
    this.vehicleID = vehicleID;
    this.mileage = mileage;
  }

  displayDailyAverage() {}
  enterMileage() {}
}

class Service extends maintenanceSchedule {
  late double averageServiceTime;
  late double laborCost;
  late double replacementCost;

  initializeService(
      double averageservicetime, double laborcost, double replacementscost) {
    this.averageServiceTime = averageservicetime;
    this.laborCost = laborcost;
    this.replacementCost = replacementscost;
  }

  displayPredictedCost() {}
}
